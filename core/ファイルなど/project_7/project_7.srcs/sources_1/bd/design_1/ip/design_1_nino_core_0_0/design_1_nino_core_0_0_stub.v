// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Mon Feb 18 15:54:51 2019
// Host        : ispc2016 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/tansei/Desktop/cpu_jikken/project_7/project_7.srcs/sources_1/bd/design_1/ip/design_1_nino_core_0_0/design_1_nino_core_0_0_stub.v
// Design      : design_1_nino_core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nino_core,Vivado 2017.4" *)
module design_1_nino_core_0_0(clk, rst, memaddr_a, w_data_a, wenable_a, r_data_a, 
  en_ab, memaddr_b, w_data_b, wenable_b, instoutwire, memaddr_as, w_data_as, wenable_as, r_data_as, 
  memaddr_bs, w_data_bs, wenable_bs, instoutwires, io_awaddr_wire, io_awready, io_awvalid_wire, 
  io_wvalid_wire, io_wready, io_wdata, io_wstrb, io_bvalid, io_bready_wire, io_bresp, 
  io_arvalid_wire, io_arready, io_araddr, io_rvalid, io_rready, io_rdata, io_rresp, rstmem)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,memaddr_a[31:0],w_data_a[31:0],wenable_a[3:0],r_data_a[31:0],en_ab,memaddr_b[31:0],w_data_b[31:0],wenable_b[3:0],instoutwire[31:0],memaddr_as[31:0],w_data_as[31:0],wenable_as[3:0],r_data_as[31:0],memaddr_bs[31:0],w_data_bs[31:0],wenable_bs[3:0],instoutwires[31:0],io_awaddr_wire[3:0],io_awready,io_awvalid_wire,io_wvalid_wire,io_wready,io_wdata[31:0],io_wstrb[3:0],io_bvalid,io_bready_wire,io_bresp[1:0],io_arvalid_wire,io_arready,io_araddr[3:0],io_rvalid,io_rready,io_rdata[31:0],io_rresp[1:0],rstmem" */;
  input clk;
  input rst;
  output [31:0]memaddr_a;
  output [31:0]w_data_a;
  output [3:0]wenable_a;
  input [31:0]r_data_a;
  output en_ab;
  output [31:0]memaddr_b;
  output [31:0]w_data_b;
  output [3:0]wenable_b;
  input [31:0]instoutwire;
  output [31:0]memaddr_as;
  output [31:0]w_data_as;
  output [3:0]wenable_as;
  input [31:0]r_data_as;
  output [31:0]memaddr_bs;
  output [31:0]w_data_bs;
  output [3:0]wenable_bs;
  input [31:0]instoutwires;
  output [3:0]io_awaddr_wire;
  input io_awready;
  output io_awvalid_wire;
  output io_wvalid_wire;
  input io_wready;
  output [31:0]io_wdata;
  output [3:0]io_wstrb;
  input io_bvalid;
  output io_bready_wire;
  input [1:0]io_bresp;
  output io_arvalid_wire;
  input io_arready;
  output [3:0]io_araddr;
  input io_rvalid;
  output io_rready;
  input [31:0]io_rdata;
  input [1:0]io_rresp;
  output rstmem;
endmodule
