//*****************************************************************************
//*****************************************************************************
//  FILENAME: CHILD_3.h
//   Version: 3.3, Updated on 2009/7/10 at 10:46:15
//  Generated by PSoC Designer 5.0.985.0
//
//  DESCRIPTION:  RX8 User Module C Language interface file for the
//                22/24/25/26/27xxx PSoC family of devices.
//-----------------------------------------------------------------------------
//      Copyright (c) Cypress MicroSystems 2000-2003. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************


// include the global header file
#include <m8c.h>

#define CHILD_3_RXBUF_ENABLE 1

//-------------------------------------------------
// Prototypes of the CHILD_3 API.
//-------------------------------------------------

#if ( CHILD_3_RXBUF_ENABLE )
extern char CHILD_3_aRxBuffer[];
extern BYTE CHILD_3_bRxCnt;
extern BYTE CHILD_3_fStatus;
#endif

// Create pragmas to support proper argument and return value passing
#pragma fastcall16  CHILD_3_EnableInt
#pragma fastcall16  CHILD_3_DisableInt
#pragma fastcall16  CHILD_3_Start
#pragma fastcall16  CHILD_3_Stop
#pragma fastcall16  CHILD_3_bReadRxData
#pragma fastcall16  CHILD_3_bReadRxStatus

#pragma fastcall16  CHILD_3_cGetChar
#pragma fastcall16  CHILD_3_cReadChar
#pragma fastcall16  CHILD_3_iReadChar

#if ( CHILD_3_RXBUF_ENABLE )
#pragma fastcall16  CHILD_3_CmdReset
#pragma fastcall16  CHILD_3_bCmdCheck
#pragma fastcall16  CHILD_3_bErrCheck
#pragma fastcall16  CHILD_3_bCmdLength
#pragma fastcall16  CHILD_3_szGetParam
#pragma fastcall16  CHILD_3_szGetRestOfParams
#endif

//-------------------------------------------------
// Prototypes of the CHILD_3 API.
//-------------------------------------------------
extern void  CHILD_3_EnableInt(void);
extern void  CHILD_3_DisableInt(void);
extern void  CHILD_3_Start(BYTE bParity);
extern void  CHILD_3_Stop(void);
extern BYTE  CHILD_3_bReadRxData(void);
extern BYTE  CHILD_3_bReadRxStatus(void);

// High level RX functions
extern CHAR         CHILD_3_cGetChar(void);
extern CHAR         CHILD_3_cReadChar(void);
extern INT          CHILD_3_iReadChar(void);

#if ( CHILD_3_RXBUF_ENABLE )
extern void   CHILD_3_CmdReset(void);
extern BYTE   CHILD_3_bCmdCheck(void);
extern BYTE   CHILD_3_bErrCheck(void);
extern BYTE   CHILD_3_bCmdLength(void);
extern char * CHILD_3_szGetParam(void);
extern char * CHILD_3_szGetRestOfParams(void);
#endif

// Old function call names, do not use.
// These names will be removed in a future release.
#pragma fastcall16 bCHILD_3_ReadRxData
#pragma fastcall16 bCHILD_3_ReadRxStatus
extern BYTE bCHILD_3_ReadRxData(void);
extern BYTE bCHILD_3_ReadRxStatus(void);

//-------------------------------------------------
// Constants for CHILD_3 API's.
//-------------------------------------------------

//------------------------------------
// Receiver Interrupt masks
//------------------------------------
#define CHILD_3_INT_REG_ADDR                   ( 0x0e1 )
#define CHILD_3_bINT_MASK                      ( 0x04 )

//------------------------------------
// Receiver Parity masks
//------------------------------------
#define  CHILD_3_PARITY_NONE         0x00
#define  CHILD_3_PARITY_EVEN         0x02
#define  CHILD_3_PARITY_ODD          0x06

//------------------------------------
//  Receiver Status Register masks
//------------------------------------
#define  CHILD_3_RX_ACTIVE           0x10
#define  CHILD_3_RX_COMPLETE         0x08
#define  CHILD_3_RX_PARITY_ERROR     0x80
#define  CHILD_3_RX_OVERRUN_ERROR    0x40
#define  CHILD_3_RX_FRAMING_ERROR    0x20
#define  CHILD_3_RX_NO_ERROR         0xE0

#define  CHILD_3_RX_NO_DATA         0x01

#define  CHILD_3_RX_BUF_ERROR             0xF0  // Mask for any Rx that may occur.
#define  CHILD_3_RX_BUF_OVERRUN           0x10  // This indicates the software buffer has
                                                           // been over run.
#define  CHILD_3_RX_BUF_CMDTERM           0x01  // Command terminator has been received.

// Old defines, will be removed in future release
#define  RX8_PARITY_NONE         0x00
#define  RX8_PARITY_EVEN         0x02
#define  RX8_PARITY_ODD          0x06
#define  RX8_RX_ACTIVE           0x10
#define  RX8_RX_COMPLETE         0x08
#define  RX8_RX_PARITY_ERROR     0x80
#define  RX8_RX_OVERRUN_ERROR    0x40
#define  RX8_RX_FRAMING_ERROR    0x20
#define  RX8_RX_NO_ERROR         0xE0

//-------------------------------------------------
// Register Addresses for CHILD_3
//-------------------------------------------------
#pragma ioport  CHILD_3_CONTROL_REG:    0x02b              // Control register
BYTE            CHILD_3_CONTROL_REG;
#pragma ioport  CHILD_3_RX_SHIFT_REG:   0x028              // RX Shift Register register
BYTE            CHILD_3_RX_SHIFT_REG;
#pragma ioport  CHILD_3_RX_BUFFER_REG:  0x02a              // RX Buffer Register
BYTE            CHILD_3_RX_BUFFER_REG;
#pragma ioport  CHILD_3_FUNC_REG:   0x128                  // Function register
BYTE            CHILD_3_FUNC_REG;
#pragma ioport  CHILD_3_INPUT_REG:  0x129                  // Input register
BYTE            CHILD_3_INPUT_REG;
#pragma ioport  CHILD_3_OUTPUT_REG: 0x12a                  // Output register
BYTE            CHILD_3_OUTPUT_REG;

// end of file CHILD_3.h
