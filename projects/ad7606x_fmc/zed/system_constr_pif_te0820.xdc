###############################################################################
## Copyright (C) 2024 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

set_property -dict {PACKAGE_PIN AG5 IOSTANDARD LVCMOS18} [get_ports adc_db[0] ]; ## D08 FMC_LPC_LA01_CC_P
set_property -dict {PACKAGE_PIN AG6 IOSTANDARD LVCMOS18} [get_ports adc_db[1] ]; ## D09 FMC_LPC_LA01_CC_N
set_property -dict {PACKAGE_PIN AG1 IOSTANDARD LVCMOS18} [get_ports adc_db[2] ]; ## H08 FMC_LPC_LA02_N
set_property -dict {PACKAGE_PIN AF1 IOSTANDARD LVCMOS18} [get_ports adc_db[3] ]; ## G10 FMC_LPC_LA03_N
set_property -dict {PACKAGE_PIN AC7 IOSTANDARD LVCMOS18} [get_ports adc_db[4] ]; ## H11 FMC_LPC_LA04_N
set_property -dict {PACKAGE_PIN AB7 IOSTANDARD LVCMOS18} [get_ports adc_db[5] ]; ## H14 FMC_LPC_LA07_N
set_property -dict {PACKAGE_PIN AH7 IOSTANDARD LVCMOS18} [get_ports adc_db[6] ]; ## G13 FMC_LPC_LA08_N
set_property -dict {PACKAGE_PIN AH8 IOSTANDARD LVCMOS18} [get_ports adc_db[7] ]; ## G07 FMC_LPC_LA00_CC_N
set_property -dict {PACKAGE_PIN AH9 IOSTANDARD LVCMOS18} [get_ports adc_db[8] ]; ## C11 FMC_LPC_LA06_N
set_property -dict {PACKAGE_PIN AG9 IOSTANDARD LVCMOS18} [get_ports adc_db[9] ]; ## D11 FMC_LPC_LA05_P
set_property -dict {PACKAGE_PIN AF5 IOSTANDARD LVCMOS18} [get_ports adc_db[10]]; ## D14 FMC_LPC_LA09_P
set_property -dict {PACKAGE_PIN AE5 IOSTANDARD LVCMOS18} [get_ports adc_db[11]]; ## G09 FMC_LPC_LA03_P
set_property -dict {PACKAGE_PIN AE8 IOSTANDARD LVCMOS18} [get_ports adc_db[12]]; ## H17 FMC_LPC_LA11_N
set_property -dict {PACKAGE_PIN AE9 IOSTANDARD LVCMOS18} [get_ports adc_db[13]]; ## G16 FMC_LPC_LA12_N
set_property -dict {PACKAGE_PIN AC8 IOSTANDARD LVCMOS18} [get_ports adc_db[14]]; ## D17 FMC_LPC_LA13_P
set_property -dict {PACKAGE_PIN AB8 IOSTANDARD LVCMOS18} [get_ports adc_db[15]]; ## D18 FMC_LPC_LA13_N

set_property -dict {PACKAGE_PIN AG4 IOSTANDARD LVCMOS18} [get_ports adc_rd_n];   ## G06 FMC_LPC_LA00_CC_P
set_property -dict {PACKAGE_PIN AH1 IOSTANDARD LVCMOS18} [get_ports adc_wr_n];   ## C14 FMC_LPC_LA10_P
set_property -dict {PACKAGE_PIN AH2 IOSTANDARD LVCMOS18} [get_ports adc_cs_n];   ## H10 FMC_LPC_LA04_P
set_property -dict {PACKAGE_PIN AC6 IOSTANDARD LVCMOS18} [get_ports adc_refsel]; ## C19 FMC_LPC_LA14_N

set_property -dict {PACKAGE_PIN F8 IOSTANDARD LVCMOS18} [get_ports adc_serpar];     ## C18 FMC_LPC_LA14_P
set_property -dict {PACKAGE_PIN E8 IOSTANDARD LVCMOS18} [get_ports adc_busy];       ## H13 FMC_LPC_LA07_P
set_property -dict {PACKAGE_PIN F7 IOSTANDARD LVCMOS18} [get_ports adc_first_data]; ## G12 FMC_LPC_LA08_P
set_property -dict {PACKAGE_PIN G8 IOSTANDARD LVCMOS18} [get_ports adc_reset];      ## C10 FMC_LPC_LA06_P
set_property -dict {PACKAGE_PIN D9 IOSTANDARD LVCMOS18} [get_ports adc_os[0]];      ## G15 FMC_LPC_LA12_P
set_property -dict {PACKAGE_PIN E9 IOSTANDARD LVCMOS18} [get_ports adc_os[1]];      ## H07 FMC_LPC_LA04_P
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS18} [get_ports adc_os[2]];      ## H16 FMC_LPC_LA11_P
set_property -dict {PACKAGE_PIN B6 IOSTANDARD LVCMOS18} [get_ports adc_stby];       ## C15 FMC_LPC_LA10_N
set_property -dict {PACKAGE_PIN B8 IOSTANDARD LVCMOS18} [get_ports adc_range];      ## D15 FMC_LPC_LA09_N
set_property -dict {PACKAGE_PIN C8 IOSTANDARD LVCMOS18} [get_ports adc_cnvst_n];    ## D12 FMC_LPC_LA05_N
