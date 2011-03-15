;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: CHILD_4.inc
;;   Version: 3.3, Updated on 2009/7/10 at 10:46:15
;;  Generated by PSoC Designer 5.0.985.0
;;
;;  DESCRIPTION: Assembler declarations for the RX8 user module interface
;;               for the 22/24/25/26/27xxx PSoC family of devices.
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress MicroSystems 2000-2003. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"

;--------------------------------------------------
; Constants for CHILD_4 API's
;--------------------------------------------------

;mask value for global int reg bit for RX instance
CHILD_4_bINT_MASK:        equ 04h
;RX8 interrupt address
CHILD_4_INT_REG:          equ 0e1h

CHILD_4_RXBUF_ENABLE:                       equ   1

CHILD_4_RX_IGNORE_BELOW:                     equ  0h
CHILD_4_RX_BUFFER_SIZE:                      equ  10h
CHILD_4_CMD_TERM:                            equ  0h
CHILD_4_DELIMITER:                           equ  0h

; This equate will be removed in future revisions.
; Do not use.
bCHILD_4_INT_MASK:        equ 04h
;------------------------------------
;  RX8 Parity masks
;------------------------------------
CHILD_4_PARITY_NONE:           equ   0h
CHILD_4_PARITY_EVEN:           equ   2h
CHILD_4_PARITY_ODD:            equ   6h

;------------------------------------
;  RX8 Status Register masks
;------------------------------------

CHILD_4_RX_ACTIVE:             equ   10h
CHILD_4_RX_COMPLETE:           equ   08h
CHILD_4_RX_REG_FULL:           equ   08h
CHILD_4_RX_PARITY_ERROR:       equ   80h
CHILD_4_RX_OVERRUN_ERROR:      equ   40h
CHILD_4_RX_FRAMING_ERROR:      equ   20h
CHILD_4_RX_ERROR:              equ   E0h
CHILD_4_RX_NO_ERROR:           equ   E0h
CHILD_4_RX_ENABLE:             equ   01h

CHILD_4_RX_BUF_ERROR:                   equ   F0h  ; Mask for any Rx that may occur.
CHILD_4_RX_BUF_OVERRUN:                 equ   10h  ; This indicates the software buffer has
                                                        ; been over run.
CHILD_4_RX_BUF_CMDTERM:                 equ   01h  ; Command terminator has been received.

CHILD_4_RX_NO_DATA:                     equ   01h
CHILD_4_RX_NO_ERROR:                    equ   E0h

; Old equates, will be removed in future release
; Do not use
RX8_PARITY_NONE:           equ   0h
RX8_PARITY_EVEN:           equ   2h
RX8_PARITY_ODD:            equ   6h
RX8_RX_ACTIVE:             equ   10h
RX8_RX_COMPLETE:           equ   08h
RX8_RX_PARITY_ERROR:       equ   80h
RX8_RX_OVERRUN_ERROR:      equ   40h
RX8_RX_FRAMING_ERROR:      equ   20h
RX8_RX_NO_ERROR:           equ   E0h


;--------------------------------------------------
; Register Address Constants for CHILD_4
;--------------------------------------------------
CHILD_4_CONTROL_REG:    equ 2bh                  ;Control register
CHILD_4_RX_SHIFT_REG:   equ 28h                  ;RX Shift Register register
CHILD_4_RX_BUFFER_REG:  equ 2ah                  ;RX Buffer Register
CHILD_4_FUNC_REG:   equ 28h                      ;Function register
CHILD_4_INPUT_REG:  equ 29h                      ;Input register
CHILD_4_OUTPUT_REG: equ 2ah                      ;Output register

; end of file CHILD_4.inc