//*****************************************************************************
//*****************************************************************************
//  FILENAME: RX8_8.h
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

#define RX8_8_RXBUF_ENABLE 1

//-------------------------------------------------
// Prototypes of the RX8_8 API.
//-------------------------------------------------

#if ( RX8_8_RXBUF_ENABLE )
extern char RX8_8_aRxBuffer[];
extern BYTE RX8_8_bRxCnt;
extern BYTE RX8_8_fStatus;
#endif

// Create pragmas to support proper argument and return value passing
#pragma fastcall16  RX8_8_EnableInt
#pragma fastcall16  RX8_8_DisableInt
#pragma fastcall16  RX8_8_Start
#pragma fastcall16  RX8_8_Stop
#pragma fastcall16  RX8_8_bReadRxData
#pragma fastcall16  RX8_8_bReadRxStatus

#pragma fastcall16  RX8_8_cGetChar
#pragma fastcall16  RX8_8_cReadChar
#pragma fastcall16  RX8_8_iReadChar

#if ( RX8_8_RXBUF_ENABLE )
#pragma fastcall16  RX8_8_CmdReset
#pragma fastcall16  RX8_8_bCmdCheck
#pragma fastcall16  RX8_8_bErrCheck
#pragma fastcall16  RX8_8_bCmdLength
#pragma fastcall16  RX8_8_szGetParam
#pragma fastcall16  RX8_8_szGetRestOfParams
#endif

//-------------------------------------------------
// Prototypes of the RX8_8 API.
//-------------------------------------------------
extern void  RX8_8_EnableInt(void);
extern void  RX8_8_DisableInt(void);
extern void  RX8_8_Start(BYTE bParity);
extern void  RX8_8_Stop(void);
extern BYTE  RX8_8_bReadRxData(void);
extern BYTE  RX8_8_bReadRxStatus(void);

// High level RX functions
extern CHAR         RX8_8_cGetChar(void);
extern CHAR         RX8_8_cReadChar(void);
extern INT          RX8_8_iReadChar(void);

#if ( RX8_8_RXBUF_ENABLE )
extern void   RX8_8_CmdReset(void);
extern BYTE   RX8_8_bCmdCheck(void);
extern BYTE   RX8_8_bErrCheck(void);
extern BYTE   RX8_8_bCmdLength(void);
extern char * RX8_8_szGetParam(void);
extern char * RX8_8_szGetRestOfParams(void);
#endif

// Old function call names, do not use.
// These names will be removed in a future release.
#pragma fastcall16 bRX8_8_ReadRxData
#pragma fastcall16 bRX8_8_ReadRxStatus
extern BYTE bRX8_8_ReadRxData(void);
extern BYTE bRX8_8_ReadRxStatus(void);

//-------------------------------------------------
// Constants for RX8_8 API's.
//-------------------------------------------------

//------------------------------------
// Receiver Interrupt masks
//------------------------------------
#define RX8_8_INT_REG_ADDR                     ( 0x0e1 )
#define RX8_8_bINT_MASK                        ( 0x80 )

//------------------------------------
// Receiver Parity masks
//------------------------------------
#define  RX8_8_PARITY_NONE         0x00
#define  RX8_8_PARITY_EVEN         0x02
#define  RX8_8_PARITY_ODD          0x06

//------------------------------------
//  Receiver Status Register masks
//------------------------------------
#define  RX8_8_RX_ACTIVE           0x10
#define  RX8_8_RX_COMPLETE         0x08
#define  RX8_8_RX_PARITY_ERROR     0x80
#define  RX8_8_RX_OVERRUN_ERROR    0x40
#define  RX8_8_RX_FRAMING_ERROR    0x20
#define  RX8_8_RX_NO_ERROR         0xE0

#define  RX8_8_RX_NO_DATA         0x01

#define  RX8_8_RX_BUF_ERROR               0xF0  // Mask for any Rx that may occur.
#define  RX8_8_RX_BUF_OVERRUN             0x10  // This indicates the software buffer has
                                                           // been over run.
#define  RX8_8_RX_BUF_CMDTERM             0x01  // Command terminator has been received.

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
// Register Addresses for RX8_8
//-------------------------------------------------
#pragma ioport  RX8_8_CONTROL_REG:  0x03f                  // Control register
BYTE            RX8_8_CONTROL_REG;
#pragma ioport  RX8_8_RX_SHIFT_REG: 0x03c                  // RX Shift Register register
BYTE            RX8_8_RX_SHIFT_REG;
#pragma ioport  RX8_8_RX_BUFFER_REG:    0x03e              // RX Buffer Register
BYTE            RX8_8_RX_BUFFER_REG;
#pragma ioport  RX8_8_FUNC_REG: 0x13c                      // Function register
BYTE            RX8_8_FUNC_REG;
#pragma ioport  RX8_8_INPUT_REG:    0x13d                  // Input register
BYTE            RX8_8_INPUT_REG;
#pragma ioport  RX8_8_OUTPUT_REG:   0x13e                  // Output register
BYTE            RX8_8_OUTPUT_REG;

// end of file RX8_8.h
