//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
//Date        : Fri Oct 19 17:32:59 2018
//Host        : ispc2016 running 64-bit Ubuntu 16.04.4 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=2,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (GPIO_LED_4_LS,
    GPIO_LED_5_LS,
    GPIO_LED_6_LS,
    default_sysclk_300_clk_n,
    default_sysclk_300_clk_p,
    reset,
    rs232_uart_rxd,
    rs232_uart_txd);
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GPIO_LED_4_LS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GPIO_LED_4_LS, LAYERED_METADATA undef" *) output GPIO_LED_4_LS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GPIO_LED_5_LS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GPIO_LED_5_LS, LAYERED_METADATA undef" *) output GPIO_LED_5_LS;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.GPIO_LED_6_LS DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.GPIO_LED_6_LS, LAYERED_METADATA undef" *) output GPIO_LED_6_LS;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_sysclk_300 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME default_sysclk_300, CAN_DEBUG false, FREQ_HZ 300000000" *) input default_sysclk_300_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 default_sysclk_300 CLK_P" *) input default_sysclk_300_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart RxD" *) input rs232_uart_rxd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:uart:1.0 rs232_uart TxD" *) output rs232_uart_txd;

  wire axi_uartlite_0_UART_RxD;
  wire axi_uartlite_0_UART_TxD;
  wire axi_uartlite_0_s_axi_arready;
  wire axi_uartlite_0_s_axi_awready;
  wire [1:0]axi_uartlite_0_s_axi_bresp;
  wire axi_uartlite_0_s_axi_bvalid;
  wire [31:0]axi_uartlite_0_s_axi_rdata;
  wire [1:0]axi_uartlite_0_s_axi_rresp;
  wire axi_uartlite_0_s_axi_rvalid;
  wire axi_uartlite_0_s_axi_wready;
  wire [31:0]blk_mem_gen_0_douta;
  wire [31:0]blk_mem_gen_0_doutb;
  wire [31:0]blk_mem_gen_1_douta;
  wire clk_wiz_0_locked;
  wire default_sysclk_300_1_CLK_N;
  wire default_sysclk_300_1_CLK_P;
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
  wire reset_1;
  wire [0:0]rst_clk_wiz_0_100M_peripheral_aresetn;

  assign GPIO_LED_4_LS = f_core_0_countr1;
  assign GPIO_LED_5_LS = f_core_0_countr2;
  assign GPIO_LED_6_LS = f_core_0_countr3;
  assign axi_uartlite_0_UART_RxD = rs232_uart_rxd;
  assign default_sysclk_300_1_CLK_N = default_sysclk_300_clk_n;
  assign default_sysclk_300_1_CLK_P = default_sysclk_300_clk_p;
  assign reset_1 = reset;
  assign rs232_uart_txd = axi_uartlite_0_UART_TxD;
  design_1_axi_uartlite_0_0 axi_uartlite_0
       (.rx(axi_uartlite_0_UART_RxD),
        .s_axi_aclk(f_core_all_0_clk),
        .s_axi_araddr(f_core_0_io_araddr),
        .s_axi_aresetn(rst_clk_wiz_0_100M_peripheral_aresetn),
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
        .tx(axi_uartlite_0_UART_TxD));
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
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1_n(default_sysclk_300_1_CLK_N),
        .clk_in1_p(default_sysclk_300_1_CLK_P),
        .clk_out1(f_core_all_0_clk),
        .locked(clk_wiz_0_locked),
        .reset(reset_1));
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
        .rst(rst_clk_wiz_0_100M_peripheral_aresetn),
        .rstmem(f_core_0_rstmem),
        .w_data_a(f_core_0_w_data_a),
        .w_data_b(f_core_0_w_data_b),
        .wenable_a(f_core_0_wenable_a),
        .wenable_b(f_core_0_wenable_b));
  design_1_rst_clk_wiz_0_100M_0 rst_clk_wiz_0_100M
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_0_100M_peripheral_aresetn),
        .slowest_sync_clk(f_core_all_0_clk));
endmodule
