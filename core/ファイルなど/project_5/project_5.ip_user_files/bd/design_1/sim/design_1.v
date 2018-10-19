//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Fri Oct 19 17:17:05 2018
//Host        : ispc2016 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (led1,
    led2,
    led3,
    tx);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED1, LAYERED_METADATA undef" *) output led1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED2, LAYERED_METADATA undef" *) output led2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.LED3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.LED3, LAYERED_METADATA undef" *) output led3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.TX DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.TX, LAYERED_METADATA undef" *) output tx;

  wire axi_uartlite_0_s_axi_arready;
  wire axi_uartlite_0_s_axi_awready;
  wire [1:0]axi_uartlite_0_s_axi_bresp;
  wire axi_uartlite_0_s_axi_bvalid;
  wire [31:0]axi_uartlite_0_s_axi_rdata;
  wire [1:0]axi_uartlite_0_s_axi_rresp;
  wire axi_uartlite_0_s_axi_rvalid;
  wire axi_uartlite_0_s_axi_wready;
  wire axi_uartlite_0_tx;
  wire [31:0]blk_mem_gen_0_douta;
  wire [31:0]blk_mem_gen_0_doutb;
  wire [31:0]blk_mem_gen_1_douta;
  wire f_core_0_countr1;
  wire f_core_0_countr2;
  wire f_core_0_countr3;
  wire f_core_0_en_ab;
  wire f_core_0_en_inst;
  wire [31:0]f_core_0_iaddr;
  wire [3:0]f_core_0_io_araddr;
  wire f_core_0_io_arvalid_wire;
  wire [3:0]f_core_0_io_awaddr_wire;
  wire f_core_0_io_awvalid_wire;
  wire f_core_0_io_bready_wire;
  wire f_core_0_io_rready;
  wire [31:0]f_core_0_io_wdata;
  wire [3:0]f_core_0_io_wstrb;
  wire f_core_0_io_wvalid_wire;
  wire [31:0]f_core_0_memaddr_a;
  wire [31:0]f_core_0_memaddr_b;
  wire f_core_0_rstmem;
  wire [31:0]f_core_0_w_data_a;
  wire [31:0]f_core_0_w_data_b;
  wire [3:0]f_core_0_wenable_a;
  wire [3:0]f_core_0_wenable_b;
  wire f_core_all_0_clk;
  wire f_core_all_0_rst;
  wire f_core_all_0_trs;

  assign led1 = f_core_0_countr1;
  assign led2 = f_core_0_countr2;
  assign led3 = f_core_0_countr3;
  assign tx = axi_uartlite_0_tx;
  design_1_axi_uartlite_0_0 axi_uartlite_0
       (.rx(f_core_all_0_trs),
        .s_axi_aclk(f_core_all_0_clk),
        .s_axi_araddr(f_core_0_io_araddr),
        .s_axi_aresetn(f_core_all_0_rst),
        .s_axi_arready(axi_uartlite_0_s_axi_arready),
        .s_axi_arvalid(f_core_0_io_arvalid_wire),
        .s_axi_awaddr(f_core_0_io_awaddr_wire),
        .s_axi_awready(axi_uartlite_0_s_axi_awready),
        .s_axi_awvalid(f_core_0_io_awvalid_wire),
        .s_axi_bready(f_core_0_io_bready_wire),
        .s_axi_bresp(axi_uartlite_0_s_axi_bresp),
        .s_axi_bvalid(axi_uartlite_0_s_axi_bvalid),
        .s_axi_rdata(axi_uartlite_0_s_axi_rdata),
        .s_axi_rready(f_core_0_io_rready),
        .s_axi_rresp(axi_uartlite_0_s_axi_rresp),
        .s_axi_rvalid(axi_uartlite_0_s_axi_rvalid),
        .s_axi_wdata(f_core_0_io_wdata),
        .s_axi_wready(axi_uartlite_0_s_axi_wready),
        .s_axi_wstrb(f_core_0_io_wstrb),
        .s_axi_wvalid(f_core_0_io_wvalid_wire),
        .tx(axi_uartlite_0_tx));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(f_core_0_memaddr_a),
        .addrb(f_core_0_memaddr_b),
        .clka(f_core_all_0_clk),
        .clkb(f_core_all_0_clk),
        .dina(f_core_0_w_data_a),
        .dinb(f_core_0_w_data_b),
        .douta(blk_mem_gen_0_douta),
        .doutb(blk_mem_gen_0_doutb),
        .ena(f_core_0_en_ab),
        .enb(f_core_0_en_ab),
        .rsta(f_core_0_rstmem),
        .rstb(f_core_0_rstmem),
        .wea(f_core_0_wenable_a),
        .web(f_core_0_wenable_b));
  design_1_blk_mem_gen_1_0 blk_mem_gen_1
       (.addra(f_core_0_iaddr),
        .clka(f_core_all_0_clk),
        .douta(blk_mem_gen_1_douta),
        .ena(f_core_0_en_inst),
        .rsta(f_core_0_rstmem));
  design_1_f_core_0_0 f_core_0
       (.clk(f_core_all_0_clk),
        .countr1(f_core_0_countr1),
        .countr2(f_core_0_countr2),
        .countr3(f_core_0_countr3),
        .en_ab(f_core_0_en_ab),
        .en_inst(f_core_0_en_inst),
        .iaddr(f_core_0_iaddr),
        .instout(blk_mem_gen_1_douta),
        .io_araddr(f_core_0_io_araddr),
        .io_arready(axi_uartlite_0_s_axi_arready),
        .io_arvalid_wire(f_core_0_io_arvalid_wire),
        .io_awaddr_wire(f_core_0_io_awaddr_wire),
        .io_awready(axi_uartlite_0_s_axi_awready),
        .io_awvalid_wire(f_core_0_io_awvalid_wire),
        .io_bready_wire(f_core_0_io_bready_wire),
        .io_bresp(axi_uartlite_0_s_axi_bresp),
        .io_bvalid(axi_uartlite_0_s_axi_bvalid),
        .io_rdata(axi_uartlite_0_s_axi_rdata),
        .io_rready(f_core_0_io_rready),
        .io_rresp(axi_uartlite_0_s_axi_rresp),
        .io_rvalid(axi_uartlite_0_s_axi_rvalid),
        .io_wdata(f_core_0_io_wdata),
        .io_wready(axi_uartlite_0_s_axi_wready),
        .io_wstrb(f_core_0_io_wstrb),
        .io_wvalid_wire(f_core_0_io_wvalid_wire),
        .memaddr_a(f_core_0_memaddr_a),
        .memaddr_b(f_core_0_memaddr_b),
        .r_data_a(blk_mem_gen_0_douta),
        .r_data_b(blk_mem_gen_0_doutb),
        .rst(f_core_all_0_rst),
        .rstmem(f_core_0_rstmem),
        .w_data_a(f_core_0_w_data_a),
        .w_data_b(f_core_0_w_data_b),
        .wenable_a(f_core_0_wenable_a),
        .wenable_b(f_core_0_wenable_b));
  design_1_f_core_all_0_0 f_core_all_0
       (.clk(f_core_all_0_clk),
        .rst(f_core_all_0_rst),
        .trs(f_core_all_0_trs));
endmodule
