
## ENTRADAS

## Switches para seleccionar la operacion
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { opcode[0] }] 
#set_property IO_L24N_T3_RS0_15 Sch=opcode[0]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { opcode[1] }] 
#set_property IO_L3N_T0_DQS_EMCCLK_14 Sch=opcode[1]

## Switches para entrada A
set_property -dict { PACKAGE_PIN M13   IOSTANDARD LVCMOS33 } [get_ports { portA[0] }]
#set_property IO_L6N_T0_D08_VREF_14 Sch=portA[0]
set_property -dict { PACKAGE_PIN R15   IOSTANDARD LVCMOS33 } [get_ports { portA[1] }] 
#set_property IO_L13N_T2_MRCC_14 Sch=portA[1]
set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { portA[2] }] 
#set_property IO_L12N_T1_MRCC_14 Sch=portA[2]

## Switches para entrada B
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 } [get_ports { portB[0] }] 
#set_property IO_L17N_T2_A13_D29_14 Sch=portB[0]
set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { portB[1]}] 
#set_property IO_L5N_T0_D07_14 Sch=portB[1]
set_property -dict { PACKAGE_PIN T8  IOSTANDARD LVCMOS18 } [get_ports { portB[2] }]
#set_property IO_L24N_T3_34 Sch=portB[2]

## SALIDAS
##7 segment display
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { sseg[0] }]
#set_property IO_L24N_T3_A00_D16_14 Sch=sseg[0]
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { sseg[1] }]
#set_property IO_25_14 Sch=sseg[1]
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { sseg[2] }]
#set_property IO_25_15 Sch=sseg[2]
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { sseg[3] }] 
#set_property IO_L17P_T2_A26_15 Sch=sseg[3]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { sseg[4] }]
#set_property IO_L13P_T2_MRCC_14 Sch=sseg[4]
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { sseg[5] }]
#set_property IO_L19P_T3_A10_D26_14 Sch=sseg[5]
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { sseg[6] }]
#set_property IO_L4P_T0_D04_14 Sch=sseg[6]
set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { signo }]; 
#set_property IO_L19N_T3_A21_VREF_15 Sch=signo
