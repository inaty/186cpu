//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Sun Oct  7 01:55:40 2018
//Host        : ispc2016 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=7,numReposBlks=7,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (op);
  output op;

  wire [31:0]blk_mem_gen_0_douta;
  wire [31:0]blk_mem_gen_1_douta;
  wire [31:0]blk_mem_gen_1_doutb;
  wire [31:0]blk_mem_gen_2_doutb;
  wire [31:0]blk_mem_gen_3_doutb;
  wire f_core_0_coreread;
  wire f_core_0_corewrite;
  wire f_core_0_en_ab;
  wire f_core_0_en_inst;
  wire [31:0]f_core_0_iaddr;
  wire [31:0]f_core_0_memaddr_a;
  wire [31:0]f_core_0_memaddr_b;
  wire [31:0]f_core_0_outdina;
  wire [3:0]f_core_0_outwe;
  wire [31:0]f_core_0_w_data_a;
  wire [31:0]f_core_0_w_data_b;
  wire [3:0]f_core_0_wenable_a;
  wire [3:0]f_core_0_wenable_b;
  wire f_core_all_0_clk;
  wire f_core_all_0_rst;
  wire f_core_all_0_trs;
  wire io_0_corereadok;
  wire [1:0]io_0_corereadwhere;
  wire io_0_corewriteok;
  wire [1:0]io_0_corewritewhere;
  wire io_0_enio;
  wire [31:0]io_0_inaddra;
  wire [31:0]io_0_inaddrb;
  wire [31:0]io_0_indina;
  wire [3:0]io_0_inwe;
  wire [31:0]io_0_outaddra;
  wire [31:0]io_0_outaddrb;
  wire io_0_txd;
  wire [3:0]io_0_zerowe;

  assign op = io_0_txd;
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(f_core_0_iaddr),
        .clka(f_core_all_0_clk),
        .douta(blk_mem_gen_0_douta),
        .ena(f_core_0_en_inst),
        .rsta(f_core_all_0_rst));
  design_1_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(f_core_0_memaddr_a),
        .addrb(f_core_0_memaddr_b),
        .clka(f_core_all_0_clk),
        .clkb(f_core_all_0_clk),
        .dina(f_core_0_w_data_a),
        .dinb(f_core_0_w_data_b),
        .douta(blk_mem_gen_1_douta),
        .doutb(blk_mem_gen_1_doutb),
        .ena(f_core_0_en_ab),
        .enb(f_core_0_en_ab),
        .rsta(f_core_all_0_rst),
        .rstb(f_core_all_0_rst),
        .wea(f_core_0_wenable_a),
        .web(f_core_0_wenable_b));
  design_1_blk_mem_gen_2_0 blk_mem_gen_2
       (.addra(io_0_inaddra),
        .addrb(io_0_inaddrb),
        .clka(f_core_all_0_clk),
        .clkb(f_core_all_0_clk),
        .dina(io_0_indina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .doutb(blk_mem_gen_2_doutb),
        .ena(io_0_enio),
        .enb(io_0_enio),
        .rsta(f_core_all_0_rst),
        .rstb(f_core_all_0_rst),
        .wea(io_0_inwe),
        .web(io_0_zerowe));
  design_1_blk_mem_gen_3_0 blk_mem_gen_3
       (.addra(io_0_outaddra),
        .addrb(io_0_outaddrb),
        .clka(f_core_all_0_clk),
        .clkb(f_core_all_0_clk),
        .dina(f_core_0_outdina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0}),
        .doutb(blk_mem_gen_3_doutb),
        .ena(io_0_enio),
        .enb(io_0_enio),
        .rsta(f_core_all_0_rst),
        .rstb(f_core_all_0_rst),
        .wea(f_core_0_outwe),
        .web(io_0_zerowe));
  design_1_f_core_0_0 f_core_0
       (.clk(f_core_all_0_clk),
        .coreread(f_core_0_coreread),
        .corereadok(io_0_corereadok),
        .corereadwhere(io_0_corereadwhere),
        .corewrite(f_core_0_corewrite),
        .corewriteok(io_0_corewriteok),
        .corewritewhere(io_0_corewritewhere),
        .en_ab(f_core_0_en_ab),
        .en_inst(f_core_0_en_inst),
        .iaddr(f_core_0_iaddr),
        .indoutb(blk_mem_gen_2_doutb),
        .instout(blk_mem_gen_0_douta),
        .memaddr_a(f_core_0_memaddr_a),
        .memaddr_b(f_core_0_memaddr_b),
        .outdina(f_core_0_outdina),
        .outwe(f_core_0_outwe),
        .r_data_a(blk_mem_gen_1_douta),
        .r_data_b(blk_mem_gen_1_doutb),
        .rst(f_core_all_0_rst),
        .w_data_a(f_core_0_w_data_a),
        .w_data_b(f_core_0_w_data_b),
        .wenable_a(f_core_0_wenable_a),
        .wenable_b(f_core_0_wenable_b));
  design_1_f_core_all_0_0 f_core_all_0
       (.clk(f_core_all_0_clk),
        .rst(f_core_all_0_rst),
        .trs(f_core_all_0_trs));
  design_1_io_0_0 io_0
       (.clk(f_core_all_0_clk),
        .coreread(f_core_0_coreread),
        .corereadok(io_0_corereadok),
        .corereadwhere(io_0_corereadwhere),
        .corewrite(f_core_0_corewrite),
        .corewriteok(io_0_corewriteok),
        .corewritewhere(io_0_corewritewhere),
        .enio(io_0_enio),
        .inaddra(io_0_inaddra),
        .inaddrb(io_0_inaddrb),
        .indina(io_0_indina),
        .inwe(io_0_inwe),
        .outaddra(io_0_outaddra),
        .outaddrb(io_0_outaddrb),
        .outdoutb(blk_mem_gen_3_doutb),
        .rst(f_core_all_0_rst),
        .rxd(f_core_all_0_trs),
        .txd(io_0_txd),
        .zerowe(io_0_zerowe));
endmodule
