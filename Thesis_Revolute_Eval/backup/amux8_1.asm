;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME:   AMUX8_1.asm
;;  Version: 1.1, Updated on 2009/7/10 at 10:41:55
;;  Generated by PSoC Designer 5.0.985.0
;;
;;  DESCRIPTION: AMux8 User Module software implementation file
;;               for 22/24/27xxx PSoC family devices.
;;
;;  NOTE: User Module APIs conform to the fastcall16 convention for marshalling
;;        arguments and observe the associated "Registers are volatile" policy.
;;        This means it is the caller's responsibility to preserve any values
;;        in the X and A registers that are still needed after the API functions
;;        returns. For Large Memory Model devices it is also the caller's 
;;        responsibility to perserve any value in the CUR_PP, IDX_PP, MVR_PP and 
;;        MVW_PP registers. Even though some of these registers may not be modified
;;        now, there is no guarantee that will remain the case in future releases.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress MicroSystems 2002-2004. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************


include "AMUX8_1.inc"
include "m8c.inc"
include "memory.inc"

;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  AMUX8_1_InputSelect
export _AMUX8_1_InputSelect

export  AMUX8_1_Start
export _AMUX8_1_Start

export  AMUX8_1_Stop
export _AMUX8_1_Stop

;-----------------------------------------------
;  EQUATES
;-----------------------------------------------

MUXMASK:                     equ 07h

AREA UserModules (ROM, REL)
.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: AMUX8_1_InputSelect
;
;  DESCRIPTION:
;    Place the signal from one of eight port0 pins on the Analog Column bus.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:
;    A contains the mux input control value
;
;      Input         AMX_IN[1:0]  AMX_IN[3:2]  ABF_CR0[7]
;   Mux input 0          xxh          00h         0
;   Mux input 1          00h          xxh         1
;   Mux input 2          xxh          01h         0
;   Mux input 3          01h          xxh         1
;   Mux input 4          xxh          02h         0
;   Mux input 5          02h          xxh         1
;   Mux input 6          xxh          03h         0
;   Mux input 7          03h          xxh         1
;
;  RETURNS: none
;
;  SIDE EFFECTS:
;     REGISTERS ARE VOLATILE: THE A AND X REGISTERS MAY BE MODIFIED!
;
;-----------------------------------------------------------------------------


 AMUX8_1_InputSelect:
_AMUX8_1_InputSelect:
    RAM_PROLOGUE RAM_USE_CLASS_2
    mov  X,SP                     ; Get pointer to temp stack location
    and  A, MUXMASK               ; Mask off only valid port0 input bits
    asr  A                        ; Shift odd/even bit to C flag
    push A                        ; Save mux setting
    jnc  .EVEN_PORT

IF(AMUX8_1_MUX_COL)       ; ***************** Column 2 ************************
.ODD_PORT:                         ; **** ACol Mux2
    M8C_SetBank1
    and   reg[ABF_CR0], ~0x40      ; Odd port, clear the ACol2Mux bit to select P1,3,5,7
    M8C_SetBank0
    asl   [X]                      ; Move control bits to bits 4:5
    asl   [X]
    asl   [X]                      
    asl   [X]
    mov   A, reg[AMX_IN]           ; Mask off control bits for ACol Mux2
    and   A, ~0x30
    ljmp   AMUX8_1_InputSelect_End

.EVEN_PORT:                        ; **** ACol Mux3
    M8C_SetBank1
    or    reg[ABF_CR0], 0x40       ; Even port, set the ACol1Mux bit to select P0,2,4,6
    M8C_SetBank0
    asl   [X]                      ; Move control bits to bits 6:7
    asl   [X]                                                       
    asl   [X]
    asl   [X]
    asl   [X]                      ; 
    asl   [X]
    mov   A, reg[AMX_IN]           ; Mask off control bits for ACol Mux3
    and   A, ~0xC0
    ljmp   AMUX8_1_InputSelect_End

ELSE                               ; ***************** COLUMN 1 ************************    
.ODD_PORT:                         ; **** ACol Mux0
    M8C_SetBank1
    or    reg[ABF_CR0], 0x80       ; Odd port, set the ACol1Mux bit to select P1,3,5,7
    M8C_SetBank0
    mov   A, reg[AMX_IN]           ; Mask off control bits for ACol Mux3
    and   A, ~0x03
    ljmp   AMUX8_1_InputSelect_End

.EVEN_PORT:                        ; **** Acol Mux1
    M8C_SetBank1
    and   reg[ABF_CR0], ~0x80      ; Even port, clear the ACol1Mux bit to select P0,2,4,6
    M8C_SetBank0
    asl   [X]                      ; Move control bits to bits 2:3
    asl   [X]
    mov   A, reg[AMX_IN]           ; Mask off control bits for ACol Mux3
    and   A, ~0x0C
ENDIF

AMUX8_1_InputSelect_End:
    or    A,[X]
    mov   reg[AMX_IN],A            ; Mask off control bits for ACol Mux1
    pop   A
    RAM_EPILOGUE RAM_USE_CLASS_2
    ret


.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: AMUX8_1_Start
;
;  DESCRIPTION:
;   This function does nothing at this time.  It is only here for
;   future compatibility.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: none
;
;  RETURNS: none
;
;  SIDE EFFECTS:
;     REGISTERS ARE VOLATILE: THE A AND X REGISTERS MAY BE MODIFIED!
;-----------------------------------------------------------------------------
 AMUX8_1_Start:
_AMUX8_1_Start:
    RAM_PROLOGUE RAM_USE_CLASS_1
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret
.ENDSECTION

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: AMUX8_1_Stop
;
;  DESCRIPTION:
;   This function does nothing at this time.  It is only here for
;   future compatibility.
;
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:  none
;
;  RETURNS: none
;
;  SIDE EFFECTS:
;     REGISTERS ARE VOLATILE: THE A AND X REGISTERS MAY BE MODIFIED!
;-----------------------------------------------------------------------------
 AMUX8_1_Stop:
_AMUX8_1_Stop:
    RAM_PROLOGUE RAM_USE_CLASS_1
    RAM_EPILOGUE RAM_USE_CLASS_1
    ret
.ENDSECTION
; End of File AMUX8_1.asm