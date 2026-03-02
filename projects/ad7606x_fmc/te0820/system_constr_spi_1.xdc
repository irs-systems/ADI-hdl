###############################################################################
## Copyright (C) 2024 Analog Devices, Inc. All rights reserved.
### SPDX short identifier: ADIBSD
###############################################################################

set_property -dict {PACKAGE_PIN AF2 IOSTANDARD LVCMOS18} [get_ports ad7606_spi_sdi[0]]; ## G07 FMC_LPC_LA00_CC_N

set_property -dict {PACKAGE_PIN AF3 IOSTANDARD LVCMOS18} [get_ports ad7606_spi_sclk]; ## G06 FMC_LPC_LA00_CC_P
set_property -dict {PACKAGE_PIN AH4 IOSTANDARD LVCMOS18} [get_ports ad7606_spi_sdo];  ## G09 FMC_LPC_LA03_P
set_property -dict {PACKAGE_PIN AH2 IOSTANDARD LVCMOS18} [get_ports ad7606_spi_cs];   ## H10 FMC_LPC_LA04_P

# rename auto-generated clock for SPIEngine to spi_clk - 160MHz
# NOTE: clk_fpga_0 is the first PL fabric clock, also called $sys_cpu_clk
create_generated_clock -name spi_clk -source [get_pins -filter name=~*CLKIN1 -of [get_cells -hier -filter name=~*spi_clkgen*i_mmcm]] -master_clock clk_pl_0 [get_pins -filter name=~*CLKOUT0 -of [get_cells -hier -filter name=~*spi_clkgen*i_mmcm]]

# relax the SDO path to help closing timing at high frequencies
set_multicycle_path -setup 8 -to [get_cells -hierarchical -filter {NAME=~*/data_sdo_shift_reg[*]}] -from [get_clocks spi_clk]
set_multicycle_path -hold  7 -to [get_cells -hierarchical -filter {NAME=~*/data_sdo_shift_reg[*]}] -from [get_clocks spi_clk]
set_multicycle_path -setup 8 -to [get_cells -hierarchical -filter {NAME=~*/spi_ad7606_execution/inst/left_aligned_reg*}] -from [get_clocks spi_clk]
set_multicycle_path -hold  7 -to [get_cells -hierarchical -filter {NAME=~*/spi_ad7606_execution/inst/left_aligned_reg*}] -from [get_clocks spi_clk]

set_property -dict {PACKAGE_PIN AD4 IOSTANDARD LVCMOS18} [get_ports adc_serpar];     ## C18 FMC_LPC_LA14_P
set_property -dict {PACKAGE_PIN AE2 IOSTANDARD LVCMOS18} [get_ports adc_busy];       ## H13 FMC_LPC_LA07_P
set_property -dict {PACKAGE_PIN AH1 IOSTANDARD LVCMOS18} [get_ports adc_first_data]; ## G12 FMC_LPC_LA08_P
set_property -dict {PACKAGE_PIN AC6 IOSTANDARD LVCMOS18} [get_ports adc_reset];      ## C10 FMC_LPC_LA06_P
set_property -dict {PACKAGE_PIN AC1 IOSTANDARD LVCMOS18} [get_ports adc_os[0]];      ## G15 FMC_LPC_LA12_P
set_property -dict {PACKAGE_PIN AE7 IOSTANDARD LVCMOS18} [get_ports adc_os[1]];      ## H07 FMC_LPC_LA04_P
set_property -dict {PACKAGE_PIN AD2 IOSTANDARD LVCMOS18} [get_ports adc_os[2]];      ## H16 FMC_LPC_LA11_P
set_property -dict {PACKAGE_PIN AD7 IOSTANDARD LVCMOS18} [get_ports adc_stby];       ## C15 FMC_LPC_LA10_N
set_property -dict {PACKAGE_PIN AD1 IOSTANDARD LVCMOS18} [get_ports adc_range];      ## D15 FMC_LPC_LA09_N
set_property -dict {PACKAGE_PIN AB6 IOSTANDARD LVCMOS18} [get_ports adc_cnvst_n];    ## D12 FMC_LPC_LA05_N
