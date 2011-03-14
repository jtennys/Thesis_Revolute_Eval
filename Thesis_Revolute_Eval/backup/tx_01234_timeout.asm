;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: TX_01234_TIMEOUT.asm
;;   Version: 2.6, Updated on 2009/7/10 at 10:46:42
;;  Generated by PSoC Designer 5.0.985.0
;;
;;  DESCRIPTION: Timer8 User Module software implementation file
;;               for the 22/24/27/29xxx PSoC family of devices
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
;;  Copyright (c) Cypress MicroSystems 2000-2004. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "TX_01234_TIMEOUT.inc"

;-----------------------------------------------
;  Global Symbols
;-----------------------------------------------
export  TX_01234_TIMEOUT_EnableInt
export _TX_01234_TIMEOUT_EnableInt
export  TX_01234_TIMEOUT_DisableInt
export _TX_01234_TIMEOUT_DisableInt
export  TX_01234_TIMEOUT_Start
export _TX_01234_TIMEOUT_Start
export  TX_01234_TIMEOUT_Stop
export _TX_01234_TIMEOUT_Stop
export  TX_01234_TIMEOUT_WritePeriod
export _TX_01234_TIMEOUT_WritePeriod
export  TX_01234_TIMEOUT_WriteCompareValue
export _TX_01234_TIMEOUT_WriteCompareValue
export  TX_01234_TIMEOUT_bReadCompareValue
export _TX_01234_TIMEOUT_bReadCompareValue
export  TX_01234_TIMEOUT_bReadTimer
export _TX_01234_TIMEOUT_bReadTimer
export  TX_01234_TIMEOUT_bReadTimerSaveCV
export _TX_01234_TIMEOUT_bReadTimerSaveCV

; The following functions are deprecated and subject to omission in future releases
;
export  bTX_01234_TIMEOUT_ReadCompareValue  ; deprecated
export _bTX_01234_TIMEOUT_ReadCompareValue  ; deprecated
export  bTX_01234_TIMEOUT_ReadTimer         ; deprecated
export _bTX_01234_TIMEOUT_ReadTimer         ; deprecated
export  bTX_01234_TIMEOUT_ReadTimerSaveCV   ; deprecated
export _bTX_01234_TIMEOUT_ReadTimerSaveCV   ; deprecated

export  bTX_01234_TIMEOUT_ReadCounter       ; obsolete
export _bTX_01234_TIMEOUT_ReadCounter       ; obsolete
export  bTX_01234_TIMEOUT_CaptureCounter    ; obsolete
export _bTX_01234_TIMEOUT_CaptureCounter    ; obsolete


AREA my_response_RAM (RAM,REL)

;-----------------------------------------------
;  Constant Definitions
;-----------------------------------------------


;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------


AREA UserModules (ROM, REL)

.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_EnableInt
;
;  DESCRIPTION:
;     Enables this timer's interrupt by setting the interrupt enable mask bit
;     associated with this User Module. This function has no effect until and
;     unless the global interrupts are enabled (for example by using the
;     macro M8C_EnableGInt).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None.
;  RETURNS:      Nothing.
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX_01234_TIMEOUT_EnableInt:
_TX_01234_TIMEOUT_EnableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TX_01234_TIMEOUT_EnableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_DisableInt
;
;  DESCRIPTION:
;     Disables this timer's interrupt by clearing the interrupt enable
;     mask bit associated with this User Module.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX_01234_TIMEOUT_DisableInt:
_TX_01234_TIMEOUT_DisableInt:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TX_01234_TIMEOUT_DisableInt_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_Start
;
;  DESCRIPTION:
;     Sets the start bit in the Control register of this user module.  The
;     timer will begin counting on the next input clock.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX_01234_TIMEOUT_Start:
_TX_01234_TIMEOUT_Start:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TX_01234_TIMEOUT_Start_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_Stop
;
;  DESCRIPTION:
;     Disables timer operation by clearing the start bit in the Control
;     register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX_01234_TIMEOUT_Stop:
_TX_01234_TIMEOUT_Stop:
   RAM_PROLOGUE RAM_USE_CLASS_1
   TX_01234_TIMEOUT_Stop_M
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_WritePeriod
;
;  DESCRIPTION:
;     Write the 8-bit period value into the Period register (DR1). If the
;     Timer user module is stopped, then this value will also be latched
;     into the Count register (DR0).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: fastcall16 BYTE bPeriodValue (passed in A)
;  RETURNS:   Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX_01234_TIMEOUT_WritePeriod:
_TX_01234_TIMEOUT_WritePeriod:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[TX_01234_TIMEOUT_PERIOD_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_WriteCompareValue
;
;  DESCRIPTION:
;     Writes compare value into the Compare register (DR2).
;
;     NOTE! The Timer user module must be STOPPED in order to write the
;           Compare register. (Call TX_01234_TIMEOUT_Stop to disable).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    fastcall16 BYTE bCompareValue (passed in A)
;  RETURNS:      Nothing
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX_01234_TIMEOUT_WriteCompareValue:
_TX_01234_TIMEOUT_WriteCompareValue:
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   reg[TX_01234_TIMEOUT_COMPARE_REG], A
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_bReadCompareValue
;
;  DESCRIPTION:
;     Reads the Compare register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      fastcall16 BYTE bCompareValue (value of DR2 in the A register)
;  SIDE EFFECTS: 
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
 TX_01234_TIMEOUT_bReadCompareValue:
_TX_01234_TIMEOUT_bReadCompareValue:
 bTX_01234_TIMEOUT_ReadCompareValue:                ; this name deprecated
_bTX_01234_TIMEOUT_ReadCompareValue:                ; this name deprecated
   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[TX_01234_TIMEOUT_COMPARE_REG]
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_bReadTimerSaveCV
;
;  DESCRIPTION:
;     Returns the value in the Count register (DR0), preserving the
;     value in the compare register (DR2).
;-----------------------------------------------------------------------------
;
;  ARGUMENTS: None
;  RETURNS:   fastcall16 BYTE bCount (value of DR0 in the A register)
;  SIDE EFFECTS:
;     1) May cause an interrupt, if interrupt on Compare is enabled.
;     2) If enabled, Global interrupts are momentarily disabled.
;     3) The user module is stopped momentarily while the compare value is
;        restored.  This may cause the Count register to miss one or more
;        counts depending on the input clock speed.
;     4) The A and X registers may be modified by this or future implementations
;        of this function.  The same is true for all RAM page pointer registers in
;        the Large Memory Model.  When necessary, it is the calling function's
;        responsibility to perserve their values across calls to fastcall16 
;        functions.
;
;  THEORY of OPERATION:
;     1) Read and save the Compare register.
;     2) Read the Count register, causing its data to be latched into
;        the Compare register.
;     3) Read and save the Counter value, now in the Compare register,
;        to the buffer.
;     4) Disable global interrupts
;     5) Halt the timer
;     6) Restore the Compare register values
;     7) Start the Timer again
;     8) Restore global interrupt state
;
 TX_01234_TIMEOUT_bReadTimerSaveCV:
_TX_01234_TIMEOUT_bReadTimerSaveCV:
 bTX_01234_TIMEOUT_ReadTimerSaveCV:              ; this name deprecated
_bTX_01234_TIMEOUT_ReadTimerSaveCV:              ; this name deprecated
 bTX_01234_TIMEOUT_ReadCounter:                  ; this name deprecated
_bTX_01234_TIMEOUT_ReadCounter:                  ; this name deprecated

CpuFlags:      equ   0
bCount:        equ   1

   RAM_PROLOGUE RAM_USE_CLASS_2
   mov   X, SP                                   ; X <- stack frame pointer
   add   SP, 2                                   ; Reserve space for flags, count
   mov   A, reg[TX_01234_TIMEOUT_CONTROL_REG]    ; save the Control register
   push  A
   mov   A, reg[TX_01234_TIMEOUT_COMPARE_REG]    ; save the Compare register
   push  A
   mov   A, reg[TX_01234_TIMEOUT_COUNTER_REG]    ; synchronous copy DR2 <- DR0
                                                 ; This may cause an interrupt!
   mov   A, reg[TX_01234_TIMEOUT_COMPARE_REG]    ; Now grab DR2 (DR0) and save
   mov   [X+bCount], A
   mov   A, 0                                    ; Guess the global interrupt state
   tst   reg[CPU_F], FLAG_GLOBAL_IE              ; Currently Disabled?
   jz    .SetupStatusFlag                        ;   Yes, guess was correct
   mov   A, FLAG_GLOBAL_IE                       ;    No, modify our guess
.SetupStatusFlag:                                ; and ...
   mov   [X+CpuFlags], A                         ;   StackFrame[0] <- Flag Reg image
   M8C_DisableGInt                               ; Disable interrupts globally
   TX_01234_TIMEOUT_Stop_M                       ; Stop the timer
   pop   A                                       ; Restore the Compare register
   mov   reg[TX_01234_TIMEOUT_COMPARE_REG], A
   pop   A                                       ; restore start state of the timer
   mov   reg[TX_01234_TIMEOUT_CONTROL_REG], A
   pop   A                                       ; Return result stored in stack frame
   RAM_EPILOGUE RAM_USE_CLASS_2
   reti                                          ; Flag Reg <- StackFrame[0]

.ENDSECTION


.SECTION
;-----------------------------------------------------------------------------
;  FUNCTION NAME: TX_01234_TIMEOUT_bReadTimer
;
;  DESCRIPTION:
;     Performs a software capture of the Count register.  A synchronous
;     read of the Count register is performed.  The timer is NOT stopped.
;
;     WARNING - this will cause loss of data in the Compare register.
;-----------------------------------------------------------------------------
;
;  ARGUMENTS:    None
;  RETURNS:      fastcall16 BYTE bCount, (value of DR0 in the A register)
;  SIDE EFFECTS:
;    May cause an interrupt.
;
;    The A and X registers may be modified by this or future implementations
;    of this function.  The same is true for all RAM page pointer registers in
;    the Large Memory Model.  When necessary, it is the calling function's
;    responsibility to perserve their values across calls to fastcall16 
;    functions.
;
;  THEORY of OPERATION:
;     1) Read the Count register - this causes the count value to be
;        latched into the Compare register.
;     2) Read and return the Count register values from the Compare
;        registers into the return buffer.
;
 TX_01234_TIMEOUT_bReadTimer:
_TX_01234_TIMEOUT_bReadTimer:
 bTX_01234_TIMEOUT_ReadTimer:                    ; this name deprecated
_bTX_01234_TIMEOUT_ReadTimer:                    ; this name deprecated
 bTX_01234_TIMEOUT_CaptureCounter:               ; this name deprecated
_bTX_01234_TIMEOUT_CaptureCounter:               ; this name deprecated

   RAM_PROLOGUE RAM_USE_CLASS_1
   mov   A, reg[TX_01234_TIMEOUT_COUNTER_REG]    ; synchronous copy DR2 <- DR0
                                                 ; This may cause an interrupt!
   mov   A, reg[TX_01234_TIMEOUT_COMPARE_REG]    ; Return DR2 (actually DR0)
   RAM_EPILOGUE RAM_USE_CLASS_1
   ret

.ENDSECTION

; End of File TX_01234_TIMEOUT.asm
