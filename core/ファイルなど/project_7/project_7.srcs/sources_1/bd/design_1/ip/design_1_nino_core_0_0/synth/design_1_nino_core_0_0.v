// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:nino_core:1.0
// IP Revision: 1

(* X_CORE_INFO = "nino_core,Vivado 2017.4" *)
(* CHECK_LICENSE_TYPE = "design_1_nino_core_0_0,nino_core,{}" *)
(* CORE_GENERATION_INFO = "design_1_nino_core_0_0,nino_core,{x_ipProduct=Vivado 2017.4,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=nino_core,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_nino_core_0_0 (
  clk,
  rst,
  memaddr_a,
  w_data_a,
  wenable_a,
  r_data_a,
  en_ab,
  memaddr_b,
  w_data_b,
  wenable_b,
  instoutwire,
  io_awaddr_wire,
  io_awready,
  io_awvalid_wire,
  io_wvalid_wire,
  io_wready,
  io_wdata,
  io_wstrb,
  io_bvalid,
  io_bready_wire,
  io_bresp,
  io_arvalid_wire,
  io_arready,
  io_araddr,
  io_rvalid,
  io_rready,
  io_rdata,
  io_rresp,
  rstmem
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 150000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_0_0_clk_out1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst RST" *)
input wire rst;
output wire [31 : 0] memaddr_a;
output wire [31 : 0] w_data_a;
output wire [3 : 0] wenable_a;
input wire [31 : 0] r_data_a;
output wire en_ab;
output wire [31 : 0] memaddr_b;
output wire [31 : 0] w_data_b;
output wire [3 : 0] wenable_b;
input wire [31 : 0] instoutwire;
output wire [3 : 0] io_awaddr_wire;
input wire io_awready;
output wire io_awvalid_wire;
output wire io_wvalid_wire;
input wire io_wready;
output wire [31 : 0] io_wdata;
output wire [3 : 0] io_wstrb;
input wire io_bvalid;
output wire io_bready_wire;
input wire [1 : 0] io_bresp;
output wire io_arvalid_wire;
input wire io_arready;
output wire [3 : 0] io_araddr;
input wire io_rvalid;
output wire io_rready;
input wire [31 : 0] io_rdata;
input wire [1 : 0] io_rresp;
output wire rstmem;

  nino_core inst (
    .clk(clk),
    .rst(rst),
    .memaddr_a(memaddr_a),
    .w_data_a(w_data_a),
    .wenable_a(wenable_a),
    .r_data_a(r_data_a),
    .en_ab(en_ab),
    .memaddr_b(memaddr_b),
    .w_data_b(w_data_b),
    .wenable_b(wenable_b),
    .instoutwire(instoutwire),
    .io_awaddr_wire(io_awaddr_wire),
    .io_awready(io_awready),
    .io_awvalid_wire(io_awvalid_wire),
    .io_wvalid_wire(io_wvalid_wire),
    .io_wready(io_wready),
    .io_wdata(io_wdata),
    .io_wstrb(io_wstrb),
    .io_bvalid(io_bvalid),
    .io_bready_wire(io_bready_wire),
    .io_bresp(io_bresp),
    .io_arvalid_wire(io_arvalid_wire),
    .io_arready(io_arready),
    .io_araddr(io_araddr),
    .io_rvalid(io_rvalid),
    .io_rready(io_rready),
    .io_rdata(io_rdata),
    .io_rresp(io_rresp),
    .rstmem(rstmem)
  );
endmodule
