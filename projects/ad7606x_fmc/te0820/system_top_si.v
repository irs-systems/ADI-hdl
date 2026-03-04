// ***************************************************************************
// ***************************************************************************
// Copyright (C) 2023-2024 Analog Devices, Inc. All rights reserved.
//
// In this HDL repository, there are many different and unique modules, consisting
// of various HDL (Verilog or VHDL) components. The individual modules are
// developed independently, and may be accompanied by separate and unique license
// terms.
//
// The user should read each of these license terms, and understand the
// freedoms and responsibilities that he or she has by using this source/core.
//
// This core is distributed in the hope that it will be useful, but WITHOUT ANY
// WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
// A PARTICULAR PURPOSE.
//
// Redistribution and use of source or resulting binaries, with or without modification
// of this file, are permitted under one of the following two license terms:
//
//   1. The GNU General Public License version 2 as published by the
//      Free Software Foundation, which can be found in the top level directory
//      of this repository (LICENSE_GPL2), and also online at:
//      <https://www.gnu.org/licenses/old-licenses/gpl-2.0.html>
//
// OR
//
//   2. An ADI specific BSD license, which can be found in the top level directory
//      of this repository (LICENSE_ADIBSD), and also on-line at:
//      https://github.com/analogdevicesinc/hdl/blob/main/LICENSE_ADIBSD
//      This will allow to generate bit files and not release the source code,
//      as long as it attaches to an ADI device.
//
// ***************************************************************************
// ***************************************************************************

`timescale 1ns/100ps

module system_top #(
  parameter NUM_OF_SDI = 1
) (
  output        ad7606_spi_cs,
  output        ad7606_spi_sclk,
  input  [NUM_OF_SDI-1:0] ad7606_spi_sdi,
  output        ad7606_spi_sdo,

  inout         adc_serpar,
  input         adc_busy,
  output        adc_cnvst_n,
  inout         adc_first_data,
  output        adc_reset,
  output [2:0]  adc_os,
  output        adc_stby,
  output        adc_range,
  output        spi_clk_out
);

  // internal signals

  wire [31:0] gpio_i;
  wire [31:0] gpio_o;
  wire [31:0] gpio_t;

  assign gpio_i[31:8] = gpio_o[31:8];

    // instantiations

  ad_iobuf #(
    .DATA_WIDTH(8)
  ) i_iobuf_adc_cntrl (
    .dio_t (gpio_t[7:0]),
    .dio_i (gpio_o[7:0]),
    .dio_o (gpio_i[7:0]),
    .dio_p ({adc_serpar,      // 7
             adc_first_data,  // 6
             adc_reset,       // 5
             adc_stby,        // 4
             adc_range,       // 3
             adc_os}));       // 2:0    

  system_wrapper i_system_wrapper (
    .gpio_i (gpio_i),
    .gpio_o (gpio_o),
    .gpio_t (gpio_t),
    .ad7606_spi_sdo (ad7606_spi_sdo),
    .ad7606_spi_sdi (ad7606_spi_sdi),
    .ad7606_spi_cs (ad7606_spi_cs),
    .ad7606_spi_sclk (ad7606_spi_sclk),
    .rx_busy (adc_busy),
    .rx_cnvst_n (adc_cnvst_n),
    .spi_clk_out (spi_clk_out));

endmodule
