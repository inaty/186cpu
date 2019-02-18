// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sun Feb 17 05:48:09 2019
// Host        : ispc2016 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_blk_mem_gen_1_0 -prefix
//               design_1_blk_mem_gen_1_0_ design_1_blk_mem_gen_1_0_stub.v
// Design      : design_1_blk_mem_gen_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *)
module design_1_blk_mem_gen_1_0(clka, addra, douta, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[31:0],douta[31:0],clkb,addrb[31:0],doutb[31:0]" */;
  input clka;
  input [31:0]addra;
  output [31:0]douta;
  input clkb;
  input [31:0]addrb;
  output [31:0]doutb;
endmodule
