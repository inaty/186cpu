//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Mon Feb 18 15:44:39 2019
//Host        : ispc2016 running 64-bit Ubuntu 16.04.5 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd);
  input default_sysclk_300_clk_n;
  input default_sysclk_300_clk_p;
  input reset;
  input rs232_uart_rxd;
  output rs232_uart_txd;

  wire default_sysclk_300_clk_n;
  wire default_sysclk_300_clk_p;
  wire reset;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;

  design_1 design_1_i
       (.default_sysclk_300_clk_n(default_sysclk_300_clk_n),
        .default_sysclk_300_clk_p(default_sysclk_300_clk_p),
        .reset(reset),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd));
endmodule
