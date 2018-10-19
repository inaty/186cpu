//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Fri Oct 19 17:32:59 2018
//Host        : ispc2016 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (GPIO_LED_4_LS,
    GPIO_LED_5_LS,
    GPIO_LED_6_LS,
    default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd);
  output GPIO_LED_4_LS;
  output GPIO_LED_5_LS;
  output GPIO_LED_6_LS;
  input default_sysclk_300_clk_n;
  input default_sysclk_300_clk_p;
  input reset;
  input rs232_uart_rxd;
  output rs232_uart_txd;

  wire GPIO_LED_4_LS;
  wire GPIO_LED_5_LS;
  wire GPIO_LED_6_LS;
  wire default_sysclk_300_clk_n;
  wire default_sysclk_300_clk_p;
  wire reset;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;

  design_1 design_1_i
       (.GPIO_LED_4_LS(GPIO_LED_4_LS),
        .GPIO_LED_5_LS(GPIO_LED_5_LS),
        .GPIO_LED_6_LS(GPIO_LED_6_LS),
        .default_sysclk_300_clk_n(default_sysclk_300_clk_n),
        .default_sysclk_300_clk_p(default_sysclk_300_clk_p),
        .reset(reset),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd));
endmodule
