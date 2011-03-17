  ROM 38% full. 12557 bytes used (does not include absolute areas).
  RAM 12% full. 231 bytes used (does not include stack usage).

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   01A0   04B4 =   1204. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       01A0  LoadConfigTBL_hello_Bank0
       01C5  LoadConfigTBL_hello_Bank1
       01EA  UnloadConfigTBL_hello_Bank0
       01F7  UnloadConfigTBL_hello_Bank1
       021D  LoadConfigTBL_initial_Bank0
       0230  LoadConfigTBL_initial_Bank1
       0243  UnloadConfigTBL_initial_Bank0
       024A  UnloadConfigTBL_initial_Bank1
       025E  LoadConfigTBL_my_response_Bank0
       0277  LoadConfigTBL_my_response_Bank1
       0290  UnloadConfigTBL_my_response_Bank0
       0299  UnloadConfigTBL_my_response_Bank1
       02B3  LoadConfigTBL_response1_Bank0
       02C6  LoadConfigTBL_response1_Bank1
       02D9  UnloadConfigTBL_response1_Bank0
       02E0  UnloadConfigTBL_response1_Bank1
       02F4  LoadConfigTBL_response2_Bank0
       0307  LoadConfigTBL_response2_Bank1
       031A  UnloadConfigTBL_response2_Bank0
       0321  UnloadConfigTBL_response2_Bank1
       0335  LoadConfigTBL_response3_Bank0
       0348  LoadConfigTBL_response3_Bank1
       035B  UnloadConfigTBL_response3_Bank0
       0362  UnloadConfigTBL_response3_Bank1
       0376  LoadConfigTBL_response4_Bank0
       0389  LoadConfigTBL_response4_Bank1
       039C  UnloadConfigTBL_response4_Bank0
       03A3  UnloadConfigTBL_response4_Bank1
       03B7  LoadConfigTBL_servo_transmit_Bank0
       03BE  LoadConfigTBL_servo_transmit_Bank1
       03C5  UnloadConfigTBL_servo_transmit_Bank0
       03C8  UnloadConfigTBL_servo_transmit_Bank1
       03D0  LoadConfigTBL_waiting_Bank0
       042B  LoadConfigTBL_waiting_Bank1
       045C  LoadConfigTBL_waiting_Ordered
       0545  ReloadConfigTBL_waiting_Bank0
       0552  ReloadConfigTBL_waiting_Bank1
       055F  UnloadConfigTBL_waiting_Bank0
       0564  UnloadConfigTBL_waiting_Bank1
       0572  UnloadConfigTBL_Total_Bank0
       05F3  UnloadConfigTBL_Total_Bank1
       0654  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0654   0002 =      2. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0654  __func_lit_start
       0656  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0656   0610 =   1552. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0656  _LoadConfigInit
       0656  LoadConfigInit
       0666  _LoadConfig_waiting
       0666  LoadConfig_waiting
       0689  ReloadConfig_waiting
       0689  _ReloadConfig_waiting
       06AA  UnloadConfig_waiting
       06AA  _UnloadConfig_waiting
       06CD  LoadConfig_hello
       06CD  _LoadConfig_hello
       071C  UnloadConfig_hello
       071C  _UnloadConfig_hello
       0773  _LoadConfig_initial
       0773  LoadConfig_initial
       07CA  _UnloadConfig_initial
       07CA  UnloadConfig_initial
       0828  _LoadConfig_my_response
       0828  LoadConfig_my_response
       0862  _UnloadConfig_my_response
       0862  UnloadConfig_my_response
       0898  LoadConfig_response1
       0898  _LoadConfig_response1
       08ED  UnloadConfig_response1
       08ED  _UnloadConfig_response1
       0944  LoadConfig_response2
       0944  _LoadConfig_response2
       0999  _UnloadConfig_response2
       0999  UnloadConfig_response2
       09F0  LoadConfig_response3
       09F0  _LoadConfig_response3
       0A45  UnloadConfig_response3
       0A45  _UnloadConfig_response3
       0A9C  LoadConfig_response4
       0A9C  _LoadConfig_response4
       0AF7  UnloadConfig_response4
       0AF7  _UnloadConfig_response4
       0B51  LoadConfig_servo_transmit
       0B51  _LoadConfig_servo_transmit
       0BA6  UnloadConfig_servo_transmit
       0BA6  _UnloadConfig_servo_transmit
       0BFD  _UnloadConfig_Total
       0BFD  UnloadConfig_Total
       0C66  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0C66   13FE =   5118. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0C66  _WAIT_RECV_ISR
       0CDA  WAIT_RECV_EnableInt
       0CDA  _WAIT_RECV_EnableInt
       0CDE  _WAIT_RECV_DisableInt
       0CDE  WAIT_RECV_DisableInt
       0CE2  WAIT_RECV_Start
       0CE2  _WAIT_RECV_Start
       0CE7  WAIT_RECV_Stop
       0CE7  _WAIT_RECV_Stop
       0CEB  WAIT_RECV_bReadRxData
       0CEB  _WAIT_RECV_bReadRxData
       0CEB  _bWAIT_RECV_ReadRxData
       0CEB  bWAIT_RECV_ReadRxData
       0CEE  _bWAIT_RECV_ReadRxStatus
       0CEE  _WAIT_RECV_bReadRxStatus
       0CEE  bWAIT_RECV_ReadRxStatus
       0CEE  WAIT_RECV_bReadRxStatus
       0CF1  _WAIT_RECV_cGetChar
       0CF1  WAIT_RECV_cGetChar
       0CF9  _WAIT_RECV_cReadChar
       0CF9  WAIT_RECV_cReadChar
       0D10  WAIT_RECV_iReadChar
       0D10  _WAIT_RECV_iReadChar
       0D26  WAIT_RECV_CmdReset
       0D26  _WAIT_RECV_CmdReset
       0D3C  _WAIT_RECV_bCmdCheck
       0D3C  WAIT_RECV_bCmdCheck
       0D44  WAIT_RECV_bErrCheck
       0D44  _WAIT_RECV_bErrCheck
       0D4F  WAIT_RECV_bCmdLength
       0D4F  _WAIT_RECV_bCmdLength
       0D55  _WAIT_RECV_szGetParam
       0D55  WAIT_RECV_szGetParam
       0DB4  WAIT_RECV_szGetRestOfParams
       0DB4  _WAIT_RECV_szGetRestOfParams
       0DBF  _TX_23_ISR
       0DC0  _TX_23_EnableInt
       0DC0  TX_23_EnableInt
       0DC4  TX_23_DisableInt
       0DC4  _TX_23_DisableInt
       0DC8  _TX_23_SetTxIntMode
       0DC8  TX_23_SetTxIntMode
       0DDA  _TX_23_Start
       0DDA  TX_23_Start
       0DDF  _TX_23_Stop
       0DDF  TX_23_Stop
       0DE3  TX_23_SendData
       0DE3  _TX_23_SendData
       0DE6  bTX_23_ReadTxStatus
       0DE6  _bTX_23_ReadTxStatus
       0DE6  _TX_23_bReadTxStatus
       0DE6  TX_23_bReadTxStatus
       0DF9  _TX_23_PutSHexByte
       0DF9  TX_23_PutSHexByte
       0E0C  TX_23_PutSHexInt
       0E0C  _TX_23_PutSHexInt
       0E13  _TX_23_PutChar
       0E13  TX_23_PutChar
       0E1B  _TX_23_PutString
       0E1B  TX_23_PutString
       0E2D  _TX_23_Write
       0E2D  TX_23_Write
       0E55  _TX_23_CWrite
       0E55  TX_23_CWrite
       0E7D  TX_23_CPutString
       0E7D  _TX_23_CPutString
       0E8F  TX_23_PutCRLF
       0E8F  _TX_23_PutCRLF
       0E98  _TX_014_ISR
       0E99  _TX_014_EnableInt
       0E99  TX_014_EnableInt
       0E9D  _TX_014_DisableInt
       0E9D  TX_014_DisableInt
       0EA1  _TX_014_SetTxIntMode
       0EA1  TX_014_SetTxIntMode
       0EB3  TX_014_Start
       0EB3  _TX_014_Start
       0EB8  TX_014_Stop
       0EB8  _TX_014_Stop
       0EBC  TX_014_SendData
       0EBC  _TX_014_SendData
       0EBF  _bTX_014_ReadTxStatus
       0EBF  _TX_014_bReadTxStatus
       0EBF  bTX_014_ReadTxStatus
       0EBF  TX_014_bReadTxStatus
       0ED2  _TX_014_PutSHexByte
       0ED2  TX_014_PutSHexByte
       0EE5  _TX_014_PutSHexInt
       0EE5  TX_014_PutSHexInt
       0EEC  TX_014_PutChar
       0EEC  _TX_014_PutChar
       0EF4  TX_014_PutString
       0EF4  _TX_014_PutString
       0F06  _TX_014_Write
       0F06  TX_014_Write
       0F2E  _TX_014_CWrite
       0F2E  TX_014_CWrite
       0F56  TX_014_CPutString
       0F56  _TX_014_CPutString
       0F68  _TX_014_PutCRLF
       0F68  TX_014_PutCRLF
       0F71  TX_01234_TIMEOUT_EnableInt
       0F71  _TX_01234_TIMEOUT_EnableInt
       0F75  _TX_01234_TIMEOUT_DisableInt
       0F75  TX_01234_TIMEOUT_DisableInt
       0F79  _TX_01234_TIMEOUT_Start
       0F79  TX_01234_TIMEOUT_Start
       0F7D  _TX_01234_TIMEOUT_Stop
       0F7D  TX_01234_TIMEOUT_Stop
       0F81  _TX_01234_TIMEOUT_WritePeriod
       0F81  TX_01234_TIMEOUT_WritePeriod
       0F87  TX_01234_TIMEOUT_WriteCompareValue
       0F87  _TX_01234_TIMEOUT_WriteCompareValue
       0F8D  TX_01234_TIMEOUT_wReadCompareValue
       0F8D  _TX_01234_TIMEOUT_wReadCompareValue
       0F8D  _wTX_01234_TIMEOUT_ReadCompareValue
       0F8D  wTX_01234_TIMEOUT_ReadCompareValue
       0F93  _TX_01234_TIMEOUT_wReadTimerSaveCV
       0F93  _wTX_01234_TIMEOUT_ReadTimerSaveCV
       0F93  _wTX_01234_TIMEOUT_ReadCounter
       0F93  wTX_01234_TIMEOUT_ReadTimerSaveCV
       0F93  TX_01234_TIMEOUT_wReadTimerSaveCV
       0F93  wTX_01234_TIMEOUT_ReadCounter
       0FC9  _wTX_01234_TIMEOUT_CaptureCounter
       0FC9  _wTX_01234_TIMEOUT_ReadTimer
       0FC9  _TX_01234_TIMEOUT_wReadTimer
       0FC9  wTX_01234_TIMEOUT_CaptureCounter
       0FC9  wTX_01234_TIMEOUT_ReadTimer
       0FC9  TX_01234_TIMEOUT_wReadTimer
       0FD1  _SERVO_TX_ISR
       0FD2  SERVO_TX_EnableInt
       0FD2  _SERVO_TX_EnableInt
       0FD6  _SERVO_TX_DisableInt
       0FD6  SERVO_TX_DisableInt
       0FDA  SERVO_TX_SetTxIntMode
       0FDA  _SERVO_TX_SetTxIntMode
       0FEC  SERVO_TX_Start
       0FEC  _SERVO_TX_Start
       0FF1  _SERVO_TX_Stop
       0FF1  SERVO_TX_Stop
       0FF5  _SERVO_TX_SendData
       0FF5  SERVO_TX_SendData
       0FF8  _bSERVO_TX_ReadTxStatus
       0FF8  _SERVO_TX_bReadTxStatus
       0FF8  SERVO_TX_bReadTxStatus
       0FF8  bSERVO_TX_ReadTxStatus
       100B  _SERVO_TX_PutSHexByte
       100B  SERVO_TX_PutSHexByte
       101E  _SERVO_TX_PutSHexInt
       101E  SERVO_TX_PutSHexInt
       1025  SERVO_TX_PutChar
       1025  _SERVO_TX_PutChar
       102D  _SERVO_TX_PutString
       102D  SERVO_TX_PutString
       103F  SERVO_TX_Write
       103F  _SERVO_TX_Write
       1067  SERVO_TX_CWrite
       1067  _SERVO_TX_CWrite
       108F  _SERVO_TX_CPutString
       108F  SERVO_TX_CPutString
       10A1  _SERVO_TX_PutCRLF
       10A1  SERVO_TX_PutCRLF
       10AA  _RX8_2_ISR
       111E  _RX8_2_EnableInt
       111E  RX8_2_EnableInt
       1122  RX8_2_DisableInt
       1122  _RX8_2_DisableInt
       1126  RX8_2_Start
       1126  _RX8_2_Start
       112B  _RX8_2_Stop
       112B  RX8_2_Stop
       112F  RX8_2_bReadRxData
       112F  bRX8_2_ReadRxData
       112F  _RX8_2_bReadRxData
       112F  _bRX8_2_ReadRxData
       1132  _bRX8_2_ReadRxStatus
       1132  RX8_2_bReadRxStatus
       1132  _RX8_2_bReadRxStatus
       1132  bRX8_2_ReadRxStatus
       1135  _RX8_2_cGetChar
       1135  RX8_2_cGetChar
       113D  RX8_2_cReadChar
       113D  _RX8_2_cReadChar
       1154  RX8_2_iReadChar
       1154  _RX8_2_iReadChar
       116A  _RX8_2_CmdReset
       116A  RX8_2_CmdReset
       1180  _RX8_2_bCmdCheck
       1180  RX8_2_bCmdCheck
       1188  _RX8_2_bErrCheck
       1188  RX8_2_bErrCheck
       1193  _RX8_2_bCmdLength
       1193  RX8_2_bCmdLength
       1199  _RX8_2_szGetParam
       1199  RX8_2_szGetParam
       11F8  RX8_2_szGetRestOfParams
       11F8  _RX8_2_szGetRestOfParams
       1203  _INIT_TIMEOUT_EnableInt
       1203  INIT_TIMEOUT_EnableInt
       1207  _INIT_TIMEOUT_DisableInt
       1207  INIT_TIMEOUT_DisableInt
       120B  INIT_TIMEOUT_Start
       120B  _INIT_TIMEOUT_Start
       120F  _INIT_TIMEOUT_Stop
       120F  INIT_TIMEOUT_Stop
       1213  INIT_TIMEOUT_WritePeriod
       1213  _INIT_TIMEOUT_WritePeriod
       1219  _INIT_TIMEOUT_WriteCompareValue
       1219  INIT_TIMEOUT_WriteCompareValue
       121F  _wINIT_TIMEOUT_ReadCompareValue
       121F  _INIT_TIMEOUT_wReadCompareValue
       121F  wINIT_TIMEOUT_ReadCompareValue
       121F  INIT_TIMEOUT_wReadCompareValue
       1225  _wINIT_TIMEOUT_ReadCounter
       1225  wINIT_TIMEOUT_ReadCounter
       1225  INIT_TIMEOUT_wReadTimerSaveCV
       1225  wINIT_TIMEOUT_ReadTimerSaveCV
       1225  _INIT_TIMEOUT_wReadTimerSaveCV
       1225  _wINIT_TIMEOUT_ReadTimerSaveCV
       125B  wINIT_TIMEOUT_ReadTimer
       125B  _wINIT_TIMEOUT_ReadTimer
       125B  _wINIT_TIMEOUT_CaptureCounter
       125B  _INIT_TIMEOUT_wReadTimer
       125B  INIT_TIMEOUT_wReadTimer
       125B  wINIT_TIMEOUT_CaptureCounter
       1263  _INIT_RX_ISR
       12D7  INIT_RX_EnableInt
       12D7  _INIT_RX_EnableInt
       12DB  _INIT_RX_DisableInt
       12DB  INIT_RX_DisableInt
       12DF  INIT_RX_Start
       12DF  _INIT_RX_Start
       12E4  _INIT_RX_Stop
       12E4  INIT_RX_Stop
       12E8  INIT_RX_bReadRxData
       12E8  _bINIT_RX_ReadRxData
       12E8  _INIT_RX_bReadRxData
       12E8  bINIT_RX_ReadRxData
       12EB  _INIT_RX_bReadRxStatus
       12EB  _bINIT_RX_ReadRxStatus
       12EB  bINIT_RX_ReadRxStatus
       12EB  INIT_RX_bReadRxStatus
       12EE  INIT_RX_cGetChar
       12EE  _INIT_RX_cGetChar
       12F6  _INIT_RX_cReadChar
       12F6  INIT_RX_cReadChar
       130D  _INIT_RX_iReadChar
       130D  INIT_RX_iReadChar
       1323  _INIT_RX_CmdReset
       1323  INIT_RX_CmdReset
       1339  INIT_RX_bCmdCheck
       1339  _INIT_RX_bCmdCheck
       1341  INIT_RX_bErrCheck
       1341  _INIT_RX_bErrCheck
       134C  INIT_RX_bCmdLength
       134C  _INIT_RX_bCmdLength
       1352  INIT_RX_szGetParam
       1352  _INIT_RX_szGetParam
       13B1  _INIT_RX_szGetRestOfParams
       13B1  INIT_RX_szGetRestOfParams
       13BC  HELLO_TIMEOUT_EnableInt
       13BC  _HELLO_TIMEOUT_EnableInt
       13C0  HELLO_TIMEOUT_DisableInt
       13C0  _HELLO_TIMEOUT_DisableInt
       13C4  _HELLO_TIMEOUT_Start
       13C4  HELLO_TIMEOUT_Start
       13C8  _HELLO_TIMEOUT_Stop
       13C8  HELLO_TIMEOUT_Stop
       13CC  _HELLO_TIMEOUT_WritePeriod
       13CC  HELLO_TIMEOUT_WritePeriod
       13D2  _HELLO_TIMEOUT_WriteCompareValue
       13D2  HELLO_TIMEOUT_WriteCompareValue
       13D8  HELLO_TIMEOUT_wReadCompareValue
       13D8  _HELLO_TIMEOUT_wReadCompareValue
       13D8  _wHELLO_TIMEOUT_ReadCompareValue
       13D8  wHELLO_TIMEOUT_ReadCompareValue
       13DE  _HELLO_TIMEOUT_wReadTimerSaveCV
       13DE  _wHELLO_TIMEOUT_ReadTimerSaveCV
       13DE  HELLO_TIMEOUT_wReadTimerSaveCV
       13DE  wHELLO_TIMEOUT_ReadTimerSaveCV
       13DE  _wHELLO_TIMEOUT_ReadCounter
       13DE  wHELLO_TIMEOUT_ReadCounter
       1414  _wHELLO_TIMEOUT_CaptureCounter
       1414  HELLO_TIMEOUT_wReadTimer
       1414  wHELLO_TIMEOUT_CaptureCounter
       1414  wHELLO_TIMEOUT_ReadTimer
       1414  _wHELLO_TIMEOUT_ReadTimer
       1414  _HELLO_TIMEOUT_wReadTimer
       141C  _HELLO_4_ISR
       1490  _HELLO_4_EnableInt
       1490  HELLO_4_EnableInt
       1494  _HELLO_4_DisableInt
       1494  HELLO_4_DisableInt
       1498  _HELLO_4_Start
       1498  HELLO_4_Start
       149D  HELLO_4_Stop
       149D  _HELLO_4_Stop
       14A1  _HELLO_4_bReadRxData
       14A1  HELLO_4_bReadRxData
       14A1  _bHELLO_4_ReadRxData
       14A1  bHELLO_4_ReadRxData
       14A4  _HELLO_4_bReadRxStatus
       14A4  HELLO_4_bReadRxStatus
       14A4  bHELLO_4_ReadRxStatus
       14A4  _bHELLO_4_ReadRxStatus
       14A7  HELLO_4_cGetChar
       14A7  _HELLO_4_cGetChar
       14AF  HELLO_4_cReadChar
       14AF  _HELLO_4_cReadChar
       14C6  HELLO_4_iReadChar
       14C6  _HELLO_4_iReadChar
       14DC  _HELLO_4_CmdReset
       14DC  HELLO_4_CmdReset
       14F2  _HELLO_4_bCmdCheck
       14F2  HELLO_4_bCmdCheck
       14FA  _HELLO_4_bErrCheck
       14FA  HELLO_4_bErrCheck
       1505  HELLO_4_bCmdLength
       1505  _HELLO_4_bCmdLength
       150B  _HELLO_4_szGetParam
       150B  HELLO_4_szGetParam
       156A  _HELLO_4_szGetRestOfParams
       156A  HELLO_4_szGetRestOfParams
       1575  _HELLO_3_ISR
       15E9  HELLO_3_EnableInt
       15E9  _HELLO_3_EnableInt
       15ED  HELLO_3_DisableInt
       15ED  _HELLO_3_DisableInt
       15F1  _HELLO_3_Start
       15F1  HELLO_3_Start
       15F6  _HELLO_3_Stop
       15F6  HELLO_3_Stop
       15FA  bHELLO_3_ReadRxData
       15FA  HELLO_3_bReadRxData
       15FA  _bHELLO_3_ReadRxData
       15FA  _HELLO_3_bReadRxData
       15FD  HELLO_3_bReadRxStatus
       15FD  _HELLO_3_bReadRxStatus
       15FD  bHELLO_3_ReadRxStatus
       15FD  _bHELLO_3_ReadRxStatus
       1600  _HELLO_3_cGetChar
       1600  HELLO_3_cGetChar
       1608  HELLO_3_cReadChar
       1608  _HELLO_3_cReadChar
       161F  _HELLO_3_iReadChar
       161F  HELLO_3_iReadChar
       1635  _HELLO_3_CmdReset
       1635  HELLO_3_CmdReset
       164B  HELLO_3_bCmdCheck
       164B  _HELLO_3_bCmdCheck
       1653  HELLO_3_bErrCheck
       1653  _HELLO_3_bErrCheck
       165E  HELLO_3_bCmdLength
       165E  _HELLO_3_bCmdLength
       1664  HELLO_3_szGetParam
       1664  _HELLO_3_szGetParam
       16C3  _HELLO_3_szGetRestOfParams
       16C3  HELLO_3_szGetRestOfParams
       16CE  _HELLO_2_ISR
       1742  _HELLO_2_EnableInt
       1742  HELLO_2_EnableInt
       1746  _HELLO_2_DisableInt
       1746  HELLO_2_DisableInt
       174A  _HELLO_2_Start
       174A  HELLO_2_Start
       174F  HELLO_2_Stop
       174F  _HELLO_2_Stop
       1753  bHELLO_2_ReadRxData
       1753  _bHELLO_2_ReadRxData
       1753  _HELLO_2_bReadRxData
       1753  HELLO_2_bReadRxData
       1756  _HELLO_2_bReadRxStatus
       1756  _bHELLO_2_ReadRxStatus
       1756  HELLO_2_bReadRxStatus
       1756  bHELLO_2_ReadRxStatus
       1759  HELLO_2_cGetChar
       1759  _HELLO_2_cGetChar
       1761  HELLO_2_cReadChar
       1761  _HELLO_2_cReadChar
       1778  HELLO_2_iReadChar
       1778  _HELLO_2_iReadChar
       178E  _HELLO_2_CmdReset
       178E  HELLO_2_CmdReset
       17A4  _HELLO_2_bCmdCheck
       17A4  HELLO_2_bCmdCheck
       17AC  _HELLO_2_bErrCheck
       17AC  HELLO_2_bErrCheck
       17B7  _HELLO_2_bCmdLength
       17B7  HELLO_2_bCmdLength
       17BD  HELLO_2_szGetParam
       17BD  _HELLO_2_szGetParam
       181C  _HELLO_2_szGetRestOfParams
       181C  HELLO_2_szGetRestOfParams
       1827  _HELLO_1_ISR
       189B  HELLO_1_EnableInt
       189B  _HELLO_1_EnableInt
       189F  HELLO_1_DisableInt
       189F  _HELLO_1_DisableInt
       18A3  HELLO_1_Start
       18A3  _HELLO_1_Start
       18A8  HELLO_1_Stop
       18A8  _HELLO_1_Stop
       18AC  bHELLO_1_ReadRxData
       18AC  HELLO_1_bReadRxData
       18AC  _HELLO_1_bReadRxData
       18AC  _bHELLO_1_ReadRxData
       18AF  HELLO_1_bReadRxStatus
       18AF  bHELLO_1_ReadRxStatus
       18AF  _bHELLO_1_ReadRxStatus
       18AF  _HELLO_1_bReadRxStatus
       18B2  HELLO_1_cGetChar
       18B2  _HELLO_1_cGetChar
       18BA  _HELLO_1_cReadChar
       18BA  HELLO_1_cReadChar
       18D1  HELLO_1_iReadChar
       18D1  _HELLO_1_iReadChar
       18E7  _HELLO_1_CmdReset
       18E7  HELLO_1_CmdReset
       18FD  HELLO_1_bCmdCheck
       18FD  _HELLO_1_bCmdCheck
       1905  HELLO_1_bErrCheck
       1905  _HELLO_1_bErrCheck
       1910  HELLO_1_bCmdLength
       1910  _HELLO_1_bCmdLength
       1916  HELLO_1_szGetParam
       1916  _HELLO_1_szGetParam
       1975  HELLO_1_szGetRestOfParams
       1975  _HELLO_1_szGetRestOfParams
       1980  _CHILD_4_ISR
       19F4  CHILD_4_TIMEOUT_EnableInt
       19F4  _CHILD_4_TIMEOUT_EnableInt
       19F8  CHILD_4_TIMEOUT_DisableInt
       19F8  _CHILD_4_TIMEOUT_DisableInt
       19FC  _CHILD_4_TIMEOUT_Start
       19FC  CHILD_4_TIMEOUT_Start
       1A00  _CHILD_4_TIMEOUT_Stop
       1A00  CHILD_4_TIMEOUT_Stop
       1A04  CHILD_4_TIMEOUT_WritePeriod
       1A04  _CHILD_4_TIMEOUT_WritePeriod
       1A0A  CHILD_4_TIMEOUT_WriteCompareValue
       1A0A  _CHILD_4_TIMEOUT_WriteCompareValue
       1A10  _wCHILD_4_TIMEOUT_ReadCompareValue
       1A10  CHILD_4_TIMEOUT_wReadCompareValue
       1A10  _CHILD_4_TIMEOUT_wReadCompareValue
       1A10  wCHILD_4_TIMEOUT_ReadCompareValue
       1A16  wCHILD_4_TIMEOUT_ReadCounter
       1A16  _wCHILD_4_TIMEOUT_ReadCounter
       1A16  CHILD_4_TIMEOUT_wReadTimerSaveCV
       1A16  wCHILD_4_TIMEOUT_ReadTimerSaveCV
       1A16  _CHILD_4_TIMEOUT_wReadTimerSaveCV
       1A16  _wCHILD_4_TIMEOUT_ReadTimerSaveCV
       1A4C  _wCHILD_4_TIMEOUT_ReadTimer
       1A4C  wCHILD_4_TIMEOUT_CaptureCounter
       1A4C  _wCHILD_4_TIMEOUT_CaptureCounter
       1A4C  wCHILD_4_TIMEOUT_ReadTimer
       1A4C  CHILD_4_TIMEOUT_wReadTimer
       1A4C  _CHILD_4_TIMEOUT_wReadTimer
       1A54  _CHILD_4_EnableInt
       1A54  CHILD_4_EnableInt
       1A58  CHILD_4_DisableInt
       1A58  _CHILD_4_DisableInt
       1A5C  _CHILD_4_Start
       1A5C  CHILD_4_Start
       1A61  CHILD_4_Stop
       1A61  _CHILD_4_Stop
       1A65  _bCHILD_4_ReadRxData
       1A65  CHILD_4_bReadRxData
       1A65  bCHILD_4_ReadRxData
       1A65  _CHILD_4_bReadRxData
       1A68  _CHILD_4_bReadRxStatus
       1A68  _bCHILD_4_ReadRxStatus
       1A68  CHILD_4_bReadRxStatus
       1A68  bCHILD_4_ReadRxStatus
       1A6B  _CHILD_4_cGetChar
       1A6B  CHILD_4_cGetChar
       1A73  CHILD_4_cReadChar
       1A73  _CHILD_4_cReadChar
       1A8A  CHILD_4_iReadChar
       1A8A  _CHILD_4_iReadChar
       1AA0  _CHILD_4_CmdReset
       1AA0  CHILD_4_CmdReset
       1AB6  _CHILD_4_bCmdCheck
       1AB6  CHILD_4_bCmdCheck
       1ABE  _CHILD_4_bErrCheck
       1ABE  CHILD_4_bErrCheck
       1AC9  CHILD_4_bCmdLength
       1AC9  _CHILD_4_bCmdLength
       1ACF  _CHILD_4_szGetParam
       1ACF  CHILD_4_szGetParam
       1B2E  _CHILD_4_szGetRestOfParams
       1B2E  CHILD_4_szGetRestOfParams
       1B39  _CHILD_3_ISR
       1BAD  _CHILD_3_TIMEOUT_EnableInt
       1BAD  CHILD_3_TIMEOUT_EnableInt
       1BB1  _CHILD_3_TIMEOUT_DisableInt
       1BB1  CHILD_3_TIMEOUT_DisableInt
       1BB5  CHILD_3_TIMEOUT_Start
       1BB5  _CHILD_3_TIMEOUT_Start
       1BB9  CHILD_3_TIMEOUT_Stop
       1BB9  _CHILD_3_TIMEOUT_Stop
       1BBD  _CHILD_3_TIMEOUT_WritePeriod
       1BBD  CHILD_3_TIMEOUT_WritePeriod
       1BC3  _CHILD_3_TIMEOUT_WriteCompareValue
       1BC3  CHILD_3_TIMEOUT_WriteCompareValue
       1BC9  wCHILD_3_TIMEOUT_ReadCompareValue
       1BC9  CHILD_3_TIMEOUT_wReadCompareValue
       1BC9  _CHILD_3_TIMEOUT_wReadCompareValue
       1BC9  _wCHILD_3_TIMEOUT_ReadCompareValue
       1BCF  _wCHILD_3_TIMEOUT_ReadTimerSaveCV
       1BCF  CHILD_3_TIMEOUT_wReadTimerSaveCV
       1BCF  wCHILD_3_TIMEOUT_ReadCounter
       1BCF  _CHILD_3_TIMEOUT_wReadTimerSaveCV
       1BCF  wCHILD_3_TIMEOUT_ReadTimerSaveCV
       1BCF  _wCHILD_3_TIMEOUT_ReadCounter
       1C05  wCHILD_3_TIMEOUT_CaptureCounter
       1C05  _wCHILD_3_TIMEOUT_CaptureCounter
       1C05  _wCHILD_3_TIMEOUT_ReadTimer
       1C05  _CHILD_3_TIMEOUT_wReadTimer
       1C05  wCHILD_3_TIMEOUT_ReadTimer
       1C05  CHILD_3_TIMEOUT_wReadTimer
       1C0D  CHILD_3_EnableInt
       1C0D  _CHILD_3_EnableInt
       1C11  _CHILD_3_DisableInt
       1C11  CHILD_3_DisableInt
       1C15  _CHILD_3_Start
       1C15  CHILD_3_Start
       1C1A  CHILD_3_Stop
       1C1A  _CHILD_3_Stop
       1C1E  _CHILD_3_bReadRxData
       1C1E  _bCHILD_3_ReadRxData
       1C1E  bCHILD_3_ReadRxData
       1C1E  CHILD_3_bReadRxData
       1C21  CHILD_3_bReadRxStatus
       1C21  bCHILD_3_ReadRxStatus
       1C21  _bCHILD_3_ReadRxStatus
       1C21  _CHILD_3_bReadRxStatus
       1C24  CHILD_3_cGetChar
       1C24  _CHILD_3_cGetChar
       1C2C  _CHILD_3_cReadChar
       1C2C  CHILD_3_cReadChar
       1C43  CHILD_3_iReadChar
       1C43  _CHILD_3_iReadChar
       1C59  CHILD_3_CmdReset
       1C59  _CHILD_3_CmdReset
       1C6F  CHILD_3_bCmdCheck
       1C6F  _CHILD_3_bCmdCheck
       1C77  _CHILD_3_bErrCheck
       1C77  CHILD_3_bErrCheck
       1C82  CHILD_3_bCmdLength
       1C82  _CHILD_3_bCmdLength
       1C88  CHILD_3_szGetParam
       1C88  _CHILD_3_szGetParam
       1CE7  CHILD_3_szGetRestOfParams
       1CE7  _CHILD_3_szGetRestOfParams
       1CF2  _CHILD_2_ISR
       1D66  CHILD_2_TIMEOUT_EnableInt
       1D66  _CHILD_2_TIMEOUT_EnableInt
       1D6A  CHILD_2_TIMEOUT_DisableInt
       1D6A  _CHILD_2_TIMEOUT_DisableInt
       1D6E  CHILD_2_TIMEOUT_Start
       1D6E  _CHILD_2_TIMEOUT_Start
       1D72  CHILD_2_TIMEOUT_Stop
       1D72  _CHILD_2_TIMEOUT_Stop
       1D76  _CHILD_2_TIMEOUT_WritePeriod
       1D76  CHILD_2_TIMEOUT_WritePeriod
       1D7C  _CHILD_2_TIMEOUT_WriteCompareValue
       1D7C  CHILD_2_TIMEOUT_WriteCompareValue
       1D82  CHILD_2_TIMEOUT_wReadCompareValue
       1D82  wCHILD_2_TIMEOUT_ReadCompareValue
       1D82  _CHILD_2_TIMEOUT_wReadCompareValue
       1D82  _wCHILD_2_TIMEOUT_ReadCompareValue
       1D88  _wCHILD_2_TIMEOUT_ReadCounter
       1D88  wCHILD_2_TIMEOUT_ReadCounter
       1D88  wCHILD_2_TIMEOUT_ReadTimerSaveCV
       1D88  _wCHILD_2_TIMEOUT_ReadTimerSaveCV
       1D88  _CHILD_2_TIMEOUT_wReadTimerSaveCV
       1D88  CHILD_2_TIMEOUT_wReadTimerSaveCV
       1DBE  wCHILD_2_TIMEOUT_ReadTimer
       1DBE  CHILD_2_TIMEOUT_wReadTimer
       1DBE  _wCHILD_2_TIMEOUT_CaptureCounter
       1DBE  _wCHILD_2_TIMEOUT_ReadTimer
       1DBE  _CHILD_2_TIMEOUT_wReadTimer
       1DBE  wCHILD_2_TIMEOUT_CaptureCounter
       1DC6  _CHILD_2_EnableInt
       1DC6  CHILD_2_EnableInt
       1DCA  _CHILD_2_DisableInt
       1DCA  CHILD_2_DisableInt
       1DCE  _CHILD_2_Start
       1DCE  CHILD_2_Start
       1DD3  CHILD_2_Stop
       1DD3  _CHILD_2_Stop
       1DD7  _bCHILD_2_ReadRxData
       1DD7  _CHILD_2_bReadRxData
       1DD7  bCHILD_2_ReadRxData
       1DD7  CHILD_2_bReadRxData
       1DDA  _CHILD_2_bReadRxStatus
       1DDA  _bCHILD_2_ReadRxStatus
       1DDA  CHILD_2_bReadRxStatus
       1DDA  bCHILD_2_ReadRxStatus
       1DDD  _CHILD_2_cGetChar
       1DDD  CHILD_2_cGetChar
       1DE5  CHILD_2_cReadChar
       1DE5  _CHILD_2_cReadChar
       1DFC  _CHILD_2_iReadChar
       1DFC  CHILD_2_iReadChar
       1E12  _CHILD_2_CmdReset
       1E12  CHILD_2_CmdReset
       1E28  CHILD_2_bCmdCheck
       1E28  _CHILD_2_bCmdCheck
       1E30  CHILD_2_bErrCheck
       1E30  _CHILD_2_bErrCheck
       1E3B  CHILD_2_bCmdLength
       1E3B  _CHILD_2_bCmdLength
       1E41  _CHILD_2_szGetParam
       1E41  CHILD_2_szGetParam
       1EA0  _CHILD_2_szGetRestOfParams
       1EA0  CHILD_2_szGetRestOfParams
       1EAB  _CHILD_1_ISR
       1F1F  _CHILD_1_TIMEOUT_EnableInt
       1F1F  CHILD_1_TIMEOUT_EnableInt
       1F23  _CHILD_1_TIMEOUT_DisableInt
       1F23  CHILD_1_TIMEOUT_DisableInt
       1F27  _CHILD_1_TIMEOUT_Start
       1F27  CHILD_1_TIMEOUT_Start
       1F2B  _CHILD_1_TIMEOUT_Stop
       1F2B  CHILD_1_TIMEOUT_Stop
       1F2F  CHILD_1_TIMEOUT_WritePeriod
       1F2F  _CHILD_1_TIMEOUT_WritePeriod
       1F35  _CHILD_1_TIMEOUT_WriteCompareValue
       1F35  CHILD_1_TIMEOUT_WriteCompareValue
       1F3B  wCHILD_1_TIMEOUT_ReadCompareValue
       1F3B  CHILD_1_TIMEOUT_wReadCompareValue
       1F3B  _CHILD_1_TIMEOUT_wReadCompareValue
       1F3B  _wCHILD_1_TIMEOUT_ReadCompareValue
       1F41  wCHILD_1_TIMEOUT_ReadCounter
       1F41  _wCHILD_1_TIMEOUT_ReadCounter
       1F41  _CHILD_1_TIMEOUT_wReadTimerSaveCV
       1F41  _wCHILD_1_TIMEOUT_ReadTimerSaveCV
       1F41  CHILD_1_TIMEOUT_wReadTimerSaveCV
       1F41  wCHILD_1_TIMEOUT_ReadTimerSaveCV
       1F77  wCHILD_1_TIMEOUT_ReadTimer
       1F77  _CHILD_1_TIMEOUT_wReadTimer
       1F77  CHILD_1_TIMEOUT_wReadTimer
       1F77  wCHILD_1_TIMEOUT_CaptureCounter
       1F77  _wCHILD_1_TIMEOUT_CaptureCounter
       1F77  _wCHILD_1_TIMEOUT_ReadTimer
       1F7F  _CHILD_1_EnableInt
       1F7F  CHILD_1_EnableInt
       1F83  CHILD_1_DisableInt
       1F83  _CHILD_1_DisableInt
       1F87  _CHILD_1_Start
       1F87  CHILD_1_Start
       1F8C  CHILD_1_Stop
       1F8C  _CHILD_1_Stop
       1F90  _CHILD_1_bReadRxData
       1F90  _bCHILD_1_ReadRxData
       1F90  bCHILD_1_ReadRxData
       1F90  CHILD_1_bReadRxData
       1F93  _CHILD_1_bReadRxStatus
       1F93  bCHILD_1_ReadRxStatus
       1F93  _bCHILD_1_ReadRxStatus
       1F93  CHILD_1_bReadRxStatus
       1F96  CHILD_1_cGetChar
       1F96  _CHILD_1_cGetChar
       1F9E  CHILD_1_cReadChar
       1F9E  _CHILD_1_cReadChar
       1FB5  CHILD_1_iReadChar
       1FB5  _CHILD_1_iReadChar
       1FCB  CHILD_1_CmdReset
       1FCB  _CHILD_1_CmdReset
       1FE1  _CHILD_1_bCmdCheck
       1FE1  CHILD_1_bCmdCheck
       1FE9  _CHILD_1_bErrCheck
       1FE9  CHILD_1_bErrCheck
       1FF4  _CHILD_1_bCmdLength
       1FF4  CHILD_1_bCmdLength
       1FFA  CHILD_1_szGetParam
       1FFA  _CHILD_1_szGetParam
       2059  _CHILD_1_szGetRestOfParams
       2059  CHILD_1_szGetRestOfParams
       2064  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   2064   1249 =   4681. bytes (rel,con,rom)

       Addr  Global Symbol
      -----  --------------------------------
       2064  _main
       2064  __text_start
       20B3  _sayHello
       2118  _configToggle
       2322  _commandReady
       2704  _takeAction
       2937  _configCleared
       29D6  _pingResponse
       2A97  _unloadAllConfigs
       2AB3  _unloadConfig
       2B3C  _assignedID
       2BDB  _childListen
       2C33  _childResponse
       2D1B  _servoFinder
       2EE9  _servoInstruction
       2FC7  _xmitWait
       2FE6  _servoBootWait
       303A  _servoConfigWait
       3099  _TX_01234_TIMEOUT_ISR
       30B0  _HELLO_TIMEOUT_ISR
       30C7  _CHILD_1_TIMEOUT_ISR
       30DE  _CHILD_2_TIMEOUT_ISR
       30F5  _CHILD_3_TIMEOUT_ISR
       310C  _CHILD_4_TIMEOUT_ISR
       3123  _INIT_TIMEOUT_ISR
       313A  Dispatch_INTERRUPT_10
       31A6  Dispatch_INTERRUPT_11
       31D0  Dispatch_INTERRUPT_9
       3226  __divmod_16X16_16
       3274  __i_div16_block_util
       32BB  __xidata_end
       32AD  __text_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0068   0140 =    320. bytes (abs,ovr,rom)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       013D  bGetPowerSetting
       013D  _bGetPowerSetting

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0000   0018 =     24. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  _WAIT_RECV_fStatus
       0000  WAIT_RECV_fStatus
       0001  _WAIT_RECV_bRxCnt
       0001  WAIT_RECV_bRxCnt
       0002  _RX8_2_fStatus
       0002  RX8_2_fStatus
       0003  RX8_2_bRxCnt
       0003  _RX8_2_bRxCnt
       0004  ACTIVE_CONFIG_STATUS
       0004  NO_SHADOW
       0004  _NO_SHADOW
       0006  INIT_RX_fStatus
       0006  _INIT_RX_fStatus
       0007  INIT_RX_bRxCnt
       0007  _INIT_RX_bRxCnt
       0008  _HELLO_4_fStatus
       0008  HELLO_4_fStatus
       0009  HELLO_4_bRxCnt
       0009  _HELLO_4_bRxCnt
       000A  HELLO_3_fStatus
       000A  _HELLO_3_fStatus
       000B  _HELLO_3_bRxCnt
       000B  HELLO_3_bRxCnt
       000C  HELLO_2_fStatus
       000C  _HELLO_2_fStatus
       000D  HELLO_2_bRxCnt
       000D  _HELLO_2_bRxCnt
       000E  _HELLO_1_fStatus
       000E  HELLO_1_fStatus
       000F  HELLO_1_bRxCnt
       000F  _HELLO_1_bRxCnt
       0010  CHILD_4_fStatus
       0010  _CHILD_4_fStatus
       0011  _CHILD_4_bRxCnt
       0011  CHILD_4_bRxCnt
       0012  _CHILD_3_fStatus
       0012  CHILD_3_fStatus
       0013  _CHILD_3_bRxCnt
       0013  CHILD_3_bRxCnt
       0014  _CHILD_2_fStatus
       0014  CHILD_2_fStatus
       0015  _CHILD_2_bRxCnt
       0015  CHILD_2_bRxCnt
       0016  CHILD_1_fStatus
       0016  _CHILD_1_fStatus
       0017  _CHILD_1_bRxCnt
       0017  CHILD_1_bRxCnt

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     CHILD_1_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       00A8  _CHILD_1_aRxBuffer
       00A8  CHILD_1_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     CHILD_2_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0098  _CHILD_2_aRxBuffer
       0098  CHILD_2_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     CHILD_3_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0038  _CHILD_3_aRxBuffer
       0038  CHILD_3_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     CHILD_4_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0088  _CHILD_4_aRxBuffer
       0088  CHILD_4_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     HELLO_1_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0078  _HELLO_1_aRxBuffer
       0078  HELLO_1_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     HELLO_2_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       00B8  _HELLO_2_aRxBuffer
       00B8  HELLO_2_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     HELLO_3_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0028  _HELLO_3_aRxBuffer
       0028  HELLO_3_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     HELLO_4_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0018  _HELLO_4_aRxBuffer
       0018  HELLO_4_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     INIT_RX_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0048  INIT_RX_aRxBuffer
       0048  _INIT_RX_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                       RX8_2_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0058  RX8_2_aRxBuffer
       0058  _RX8_2_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                   WAIT_RECV_RAM   0000   0011 =     17. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0068  WAIT_RECV_aRxBuffer
       0068  _WAIT_RECV_aRxBuffer

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   00C8   0005 =      5. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       00C8  __rZ
       00C9  __rY
       00CA  __rX
       00CB  __r1
       00CC  __r0

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            data   0000   000F =     15. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __data_start
       00CD  _CONFIGURED
       00CF  _STATE
       00D1  _TIMEOUT
       00D3  _CHILD
       00DE  _COMMAND_ERROR
       00DF  _COMMAND_LENGTH
       00E0  _COMMAND_PARAM
       00E1  _COMMAND_TYPE
       00E2  _COMMAND_DESTINATION
       00E3  _COMMAND_SOURCE
       00E4  _ID
       00E6  _SERVO_ID

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
./obj/main.o	[ main.c ]
<library>	[ wait_recvint.asm, wait_recv.asm, tx_23int.asm, tx_23.asm, tx_014int.asm, tx_014.asm, tx_01234_timeout.asm ]
[ servo_txint.asm, servo_tx.asm, rx8_2int.asm, rx8_2.asm, psocdynamicint.asm, psocconfigtbl.asm ]
[ psocconfig.asm, init_timeout.asm, init_rxint.asm, init_rx.asm, hello_timeout.asm, hello_4int.asm ]
[ hello_4.asm, hello_3int.asm, hello_3.asm, hello_2int.asm, hello_2.asm, hello_1int.asm, hello_1.asm ]
[ child_4int.asm, child_4_timeout.asm, child_4.asm, child_3int.asm, child_3_timeout.asm, child_3.asm ]
[ child_2int.asm, child_2_timeout.asm, child_2.asm, child_1int.asm, child_1_timeout.asm, child_1.asm ]
[ rZ.asm, rY.asm, rX.asm, r1.asm, r0.asm, divmod_16x16_16_util.asm, i_div16_block_util.asm ]

User Base Address Definitions

lit = 0x1a0
data = 0x0
SSCParmBlk:0x00F7.0x00FF
InterruptRAM = 0x0
virtual_registers = 0xc8
waiting_RAM
hello_RAM = 0xe7
initial_RAM = 0xe7
my_response_RAM = 0xe7
response1_RAM = 0xe7
response2_RAM = 0xe7
response3_RAM = 0xe7
response4_RAM = 0xe7
servo_transmit_RAM

