;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: WAIT_RECVINT.asm
;;   Version: 3.3, Updated on 2009/7/10 at 10:46:15
;;  Generated by PSoC Designer 5.0.985.0
;;
;;  DESCRIPTION: RX8 Interrupt Service Routine.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress MicroSystems 2000-2003. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "WAIT_RECV.inc"


;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  _WAIT_RECV_ISR


IF (WAIT_RECV_RXBUF_ENABLE)
export  WAIT_RECV_aRxBuffer
export _WAIT_RECV_aRxBuffer
export  WAIT_RECV_bRxCnt
export _WAIT_RECV_bRxCnt
export  WAIT_RECV_fStatus
export _WAIT_RECV_fStatus
ENDIF


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------

IF (WAIT_RECV_RXBUF_ENABLE)
AREA InterruptRAM(RAM,REL,CON)
 WAIT_RECV_fStatus:
_WAIT_RECV_fStatus:      BLK  1
 WAIT_RECV_bRxCnt:
_WAIT_RECV_bRxCnt:       BLK  1
AREA WAIT_RECV_RAM(RAM,REL,CON)
 WAIT_RECV_aRxBuffer:    
_WAIT_RECV_aRxBuffer:    BLK WAIT_RECV_RX_BUFFER_SIZE
ENDIF


AREA InterruptRAM(RAM,REL,CON)

;@PSoC_UserCode_INIT@ (Do not change this line.)
;---------------------------------------------------
; Insert your custom declarations below this banner
;---------------------------------------------------

;------------------------
; Includes
;------------------------

	
;------------------------
;  Constant Definitions
;------------------------


;------------------------
; Variable Allocation
;------------------------


;---------------------------------------------------
; Insert your custom declarations above this banner
;---------------------------------------------------
;@PSoC_UserCode_END@ (Do not change this line.)


AREA UserModules (ROM, REL)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _WAIT_RECV_ISR
;
;  DESCRIPTION: Unless modified, this implements only a null handler stub.
;
;-----------------------------------------------------------------------------
;

_WAIT_RECV_ISR:

   ;@PSoC_UserCode_BODY@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------
   ;   NOTE: interrupt service routines must preserve
   ;   the values of the A and X CPU registers.

   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)

 IF (WAIT_RECV_RXBUF_ENABLE)
   push A
   push X

   IF SYSTEM_LARGE_MEMORY_MODEL
      REG_PRESERVE IDX_PP                                  ; Save the IDX_PP register	
   ENDIF

   mov  X,[WAIT_RECV_bRxCnt]                               ; Load X with byte counter
   mov  A,REG[WAIT_RECV_CONTROL_REG]                       ; Read the control register
   push A                                                  ; Store copy for later test
                                                           ; IF real RX interrupt
   and  A,WAIT_RECV_RX_REG_FULL                            ; Did really really get an IRQ
   jnz  .UARTRX_ReadRx                                     ; Data ready, go get it
   pop  A                                                  ; Restore stack
   jmp  .RESTORE_IDX_PP

.UARTRX_ReadRx:

   pop  A                                                  ; Restore status flags
                                                           ; IF there is no error, get data
                                                           ; Check for parity or framing error
   and  A,WAIT_RECV_RX_ERROR
   jz   .UARTRX_NO_ERROR                                   ; If there is not an Error go read data

   or   [WAIT_RECV_fStatus],A                              ; Set error flags (parity,framing,overrun) bits

   tst  REG[WAIT_RECV_RX_BUFFER_REG], 0x00                 ; Read the data buffer to clear it.

   and  A,WAIT_RECV_RX_FRAMING_ERROR                       ; Check for framing error special case
   jz   .RESTORE_IDX_PP                                    ; Not framing error, all done

                                                           ; Disable and re-enable RX to reset after
                                                           ; framing error.
   and   REG[WAIT_RECV_CONTROL_REG], ~WAIT_RECV_RX_ENABLE  ; Disable RX
   or    REG[WAIT_RECV_CONTROL_REG],  WAIT_RECV_RX_ENABLE  ; Enable RX
   jmp  .RESTORE_IDX_PP                                    ; Done with framing error, leave.


.UARTRX_NO_ERROR:
   mov  A,REG[WAIT_RECV_RX_BUFFER_REG ]                    ; Read the data buffer

                                                           ; IF buffer not full
   tst  [WAIT_RECV_fStatus],WAIT_RECV_RX_BUF_CMDTERM       ; Check for buffer full
   jnz  .RESTORE_IDX_PP                                    ; All done

   cmp  A,WAIT_RECV_CMD_TERM                               ; Check for End of command
   jnz  .UARTRX_CHK_CTLCHAR
   or   [WAIT_RECV_fStatus],WAIT_RECV_RX_BUF_CMDTERM       ; Set command ready bit

   RAM_SETPAGE_IDX >WAIT_RECV_aRxBuffer
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_10b
   mov  [X + WAIT_RECV_aRxBuffer],00h                      ; Zero out last data
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_00b
   jmp  .RESTORE_IDX_PP

.UARTRX_CHK_CTLCHAR:                                       ; Ignore charaters below this value
                                                           ; If ignore char is set to 0x00, do not
                                                           ; ignore any characters.
IF(WAIT_RECV_RX_IGNORE_BELOW)
   cmp  A,WAIT_RECV_RX_IGNORE_BELOW
   jc   .RESTORE_IDX_PP
ENDIF

.UARTRX_CHK_OVFL:                                          ; Check for MAX String here
   cmp  [WAIT_RECV_bRxCnt],(WAIT_RECV_RX_BUFFER_SIZE - 1)
   jc   .UARTRX_ISR_GETDATA
   or   [WAIT_RECV_fStatus],WAIT_RECV_RX_BUF_OVERRUN       ; Set error flags (parity,framing,overrun) bits

   RAM_SETPAGE_IDX >WAIT_RECV_aRxBuffer             ;   using idexed address mode
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_10b
   mov  [X + WAIT_RECV_aRxBuffer],00h                      ; Zero out last data
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_00b
   jmp  .RESTORE_IDX_PP

                                                           ; IF input data == "CR", then end of command
.UARTRX_ISR_GETDATA:
   inc  X                                                  ; Inc the pointer
   mov  [WAIT_RECV_bRxCnt],X                               ; Restore the pointer
   dec  X                                                  ; Mov X to its original value

   RAM_SETPAGE_IDX >WAIT_RECV_aRxBuffer             ;   using idexed address mode
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_10b
   mov  [X+WAIT_RECV_aRxBuffer],A                          ; store data in array
   RAM_CHANGE_PAGE_MODE FLAG_PGMODE_00b


.RESTORE_IDX_PP:
   IF SYSTEM_LARGE_MEMORY_MODEL
      REG_RESTORE IDX_PP
   ENDIF

.END_UARTRX_ISR:
   pop  X
   pop  A

ENDIF

WAIT_RECV_RX_ISR_END:
   reti


; end of file WAIT_RECVINT.asm
