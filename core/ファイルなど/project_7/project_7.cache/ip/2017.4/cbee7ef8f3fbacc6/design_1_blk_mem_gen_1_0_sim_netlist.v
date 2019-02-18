// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Sat Feb 16 12:08:25 2019
// Host        : ispc2016 running 64-bit Ubuntu 16.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_1_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xcku040-ffva1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_1_0,blk_mem_gen_v8_4_1,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_1,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    rsta,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire rsta;
  wire rstb;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "14" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.486493 mW" *) 
  (* C_FAMILY = "kintexu" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_1_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "14336" *) 
  (* C_READ_DEPTH_B = "14336" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "14336" *) 
  (* C_WRITE_DEPTH_B = "14336" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "kintexu" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(rstb),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
   (ena_array,
    addra);
  output [0:0]ena_array;
  input [2:0]addra;

  wire [2:0]addra;
  wire [0:0]ena_array;

  LUT3 #(
    .INIT(8'h08)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addra[1]),
        .I1(addra[2]),
        .I2(addra[0]),
        .O(ena_array));
endmodule

(* ORIG_REF_NAME = "bindec" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec_0
   (enb_array,
    addrb);
  output [0:0]enb_array;
  input [2:0]addrb;

  wire [2:0]addrb;
  wire [0:0]enb_array;

  LUT3 #(
    .INIT(8'h08)) 
    \ENOUT_inferred__5/i_ 
       (.I0(addrb[1]),
        .I1(addrb[2]),
        .I2(addrb[0]),
        .O(enb_array));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (douta,
    doutb,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [31:0]douta;
  output [31:0]doutb;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [31:0]dina;
  input [31:0]dinb;
  input [3:0]wea;
  input [3:0]web;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire [6:6]ena_array;
  wire [6:6]enb_array;
  wire [7:0]ram_douta;
  wire [7:0]ram_doutb;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_10 ;
  wire \ramloop[10].ram.r_n_11 ;
  wire \ramloop[10].ram.r_n_12 ;
  wire \ramloop[10].ram.r_n_13 ;
  wire \ramloop[10].ram.r_n_14 ;
  wire \ramloop[10].ram.r_n_15 ;
  wire \ramloop[10].ram.r_n_16 ;
  wire \ramloop[10].ram.r_n_17 ;
  wire \ramloop[10].ram.r_n_18 ;
  wire \ramloop[10].ram.r_n_19 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_20 ;
  wire \ramloop[10].ram.r_n_21 ;
  wire \ramloop[10].ram.r_n_22 ;
  wire \ramloop[10].ram.r_n_23 ;
  wire \ramloop[10].ram.r_n_24 ;
  wire \ramloop[10].ram.r_n_25 ;
  wire \ramloop[10].ram.r_n_26 ;
  wire \ramloop[10].ram.r_n_27 ;
  wire \ramloop[10].ram.r_n_28 ;
  wire \ramloop[10].ram.r_n_29 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_30 ;
  wire \ramloop[10].ram.r_n_31 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[10].ram.r_n_8 ;
  wire \ramloop[10].ram.r_n_9 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_10 ;
  wire \ramloop[11].ram.r_n_11 ;
  wire \ramloop[11].ram.r_n_12 ;
  wire \ramloop[11].ram.r_n_13 ;
  wire \ramloop[11].ram.r_n_14 ;
  wire \ramloop[11].ram.r_n_15 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_8 ;
  wire \ramloop[11].ram.r_n_9 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_10 ;
  wire \ramloop[12].ram.r_n_11 ;
  wire \ramloop[12].ram.r_n_12 ;
  wire \ramloop[12].ram.r_n_13 ;
  wire \ramloop[12].ram.r_n_14 ;
  wire \ramloop[12].ram.r_n_15 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_8 ;
  wire \ramloop[12].ram.r_n_9 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_10 ;
  wire \ramloop[13].ram.r_n_11 ;
  wire \ramloop[13].ram.r_n_12 ;
  wire \ramloop[13].ram.r_n_13 ;
  wire \ramloop[13].ram.r_n_14 ;
  wire \ramloop[13].ram.r_n_15 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_8 ;
  wire \ramloop[13].ram.r_n_9 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_10 ;
  wire \ramloop[1].ram.r_n_11 ;
  wire \ramloop[1].ram.r_n_12 ;
  wire \ramloop[1].ram.r_n_13 ;
  wire \ramloop[1].ram.r_n_14 ;
  wire \ramloop[1].ram.r_n_15 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_8 ;
  wire \ramloop[1].ram.r_n_9 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_10 ;
  wire \ramloop[2].ram.r_n_11 ;
  wire \ramloop[2].ram.r_n_12 ;
  wire \ramloop[2].ram.r_n_13 ;
  wire \ramloop[2].ram.r_n_14 ;
  wire \ramloop[2].ram.r_n_15 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_8 ;
  wire \ramloop[2].ram.r_n_9 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_10 ;
  wire \ramloop[3].ram.r_n_11 ;
  wire \ramloop[3].ram.r_n_12 ;
  wire \ramloop[3].ram.r_n_13 ;
  wire \ramloop[3].ram.r_n_14 ;
  wire \ramloop[3].ram.r_n_15 ;
  wire \ramloop[3].ram.r_n_16 ;
  wire \ramloop[3].ram.r_n_17 ;
  wire \ramloop[3].ram.r_n_18 ;
  wire \ramloop[3].ram.r_n_19 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_20 ;
  wire \ramloop[3].ram.r_n_21 ;
  wire \ramloop[3].ram.r_n_22 ;
  wire \ramloop[3].ram.r_n_23 ;
  wire \ramloop[3].ram.r_n_24 ;
  wire \ramloop[3].ram.r_n_25 ;
  wire \ramloop[3].ram.r_n_26 ;
  wire \ramloop[3].ram.r_n_27 ;
  wire \ramloop[3].ram.r_n_28 ;
  wire \ramloop[3].ram.r_n_29 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_30 ;
  wire \ramloop[3].ram.r_n_31 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_8 ;
  wire \ramloop[3].ram.r_n_9 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_10 ;
  wire \ramloop[4].ram.r_n_11 ;
  wire \ramloop[4].ram.r_n_12 ;
  wire \ramloop[4].ram.r_n_13 ;
  wire \ramloop[4].ram.r_n_14 ;
  wire \ramloop[4].ram.r_n_15 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_8 ;
  wire \ramloop[4].ram.r_n_9 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_10 ;
  wire \ramloop[5].ram.r_n_11 ;
  wire \ramloop[5].ram.r_n_12 ;
  wire \ramloop[5].ram.r_n_13 ;
  wire \ramloop[5].ram.r_n_14 ;
  wire \ramloop[5].ram.r_n_15 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_8 ;
  wire \ramloop[5].ram.r_n_9 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_10 ;
  wire \ramloop[6].ram.r_n_11 ;
  wire \ramloop[6].ram.r_n_12 ;
  wire \ramloop[6].ram.r_n_13 ;
  wire \ramloop[6].ram.r_n_14 ;
  wire \ramloop[6].ram.r_n_15 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_8 ;
  wire \ramloop[6].ram.r_n_9 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_10 ;
  wire \ramloop[7].ram.r_n_11 ;
  wire \ramloop[7].ram.r_n_12 ;
  wire \ramloop[7].ram.r_n_13 ;
  wire \ramloop[7].ram.r_n_14 ;
  wire \ramloop[7].ram.r_n_15 ;
  wire \ramloop[7].ram.r_n_16 ;
  wire \ramloop[7].ram.r_n_17 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_8 ;
  wire \ramloop[7].ram.r_n_9 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_10 ;
  wire \ramloop[8].ram.r_n_11 ;
  wire \ramloop[8].ram.r_n_12 ;
  wire \ramloop[8].ram.r_n_13 ;
  wire \ramloop[8].ram.r_n_14 ;
  wire \ramloop[8].ram.r_n_15 ;
  wire \ramloop[8].ram.r_n_16 ;
  wire \ramloop[8].ram.r_n_17 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_8 ;
  wire \ramloop[8].ram.r_n_9 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_10 ;
  wire \ramloop[9].ram.r_n_11 ;
  wire \ramloop[9].ram.r_n_12 ;
  wire \ramloop[9].ram.r_n_13 ;
  wire \ramloop[9].ram.r_n_14 ;
  wire \ramloop[9].ram.r_n_15 ;
  wire \ramloop[9].ram.r_n_16 ;
  wire \ramloop[9].ram.r_n_17 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_8 ;
  wire \ramloop[9].ram.r_n_9 ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [3:0]wea;
  wire [3:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec \bindec_a.bindec_inst_a 
       (.addra(addra[13:11]),
        .ena_array(ena_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec_0 \bindec_b.bindec_inst_b 
       (.addrb(addrb[13:11]),
        .enb_array(enb_array));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux \has_mux_a.A 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (ram_douta),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .DOUTADOUT({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .addra(addra[13:11]),
        .clka(clka),
        .douta(douta));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (ram_doutb),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 ,\ramloop[3].ram.r_n_18 ,\ramloop[3].ram.r_n_19 ,\ramloop[3].ram.r_n_20 ,\ramloop[3].ram.r_n_21 ,\ramloop[3].ram.r_n_22 ,\ramloop[3].ram.r_n_23 ,\ramloop[3].ram.r_n_24 ,\ramloop[3].ram.r_n_25 ,\ramloop[3].ram.r_n_26 ,\ramloop[3].ram.r_n_27 ,\ramloop[3].ram.r_n_28 ,\ramloop[3].ram.r_n_29 ,\ramloop[3].ram.r_n_30 ,\ramloop[3].ram.r_n_31 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ({\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ({\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ({\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ({\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ({\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ({\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ({\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ({\ramloop[7].ram.r_n_8 ,\ramloop[7].ram.r_n_9 ,\ramloop[7].ram.r_n_10 ,\ramloop[7].ram.r_n_11 ,\ramloop[7].ram.r_n_12 ,\ramloop[7].ram.r_n_13 ,\ramloop[7].ram.r_n_14 ,\ramloop[7].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ({\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 ,\ramloop[10].ram.r_n_18 ,\ramloop[10].ram.r_n_19 ,\ramloop[10].ram.r_n_20 ,\ramloop[10].ram.r_n_21 ,\ramloop[10].ram.r_n_22 ,\ramloop[10].ram.r_n_23 ,\ramloop[10].ram.r_n_24 ,\ramloop[10].ram.r_n_25 ,\ramloop[10].ram.r_n_26 ,\ramloop[10].ram.r_n_27 ,\ramloop[10].ram.r_n_28 ,\ramloop[10].ram.r_n_29 ,\ramloop[10].ram.r_n_30 ,\ramloop[10].ram.r_n_31 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ({\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 }),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ({\ramloop[12].ram.r_n_8 ,\ramloop[12].ram.r_n_9 ,\ramloop[12].ram.r_n_10 ,\ramloop[12].ram.r_n_11 ,\ramloop[12].ram.r_n_12 ,\ramloop[12].ram.r_n_13 ,\ramloop[12].ram.r_n_14 ,\ramloop[12].ram.r_n_15 }),
        .DOUTBDOUT({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .addrb(addrb[13:11]),
        .clka(clka),
        .doutb(doutb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.addra(addra[11:0]),
        .\addra[15] (\ramloop[7].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[15] (\ramloop[7].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[7:0]),
        .dinb(dinb[7:0]),
        .\douta[7] (ram_douta),
        .\doutb[7] (ram_doutb),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[0]),
        .web(web[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .dina(dina[31:16]),
        .dinb(dinb[31:16]),
        .\douta[31] ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 ,\ramloop[10].ram.r_n_8 ,\ramloop[10].ram.r_n_9 ,\ramloop[10].ram.r_n_10 ,\ramloop[10].ram.r_n_11 ,\ramloop[10].ram.r_n_12 ,\ramloop[10].ram.r_n_13 ,\ramloop[10].ram.r_n_14 ,\ramloop[10].ram.r_n_15 }),
        .\doutb[31] ({\ramloop[10].ram.r_n_16 ,\ramloop[10].ram.r_n_17 ,\ramloop[10].ram.r_n_18 ,\ramloop[10].ram.r_n_19 ,\ramloop[10].ram.r_n_20 ,\ramloop[10].ram.r_n_21 ,\ramloop[10].ram.r_n_22 ,\ramloop[10].ram.r_n_23 ,\ramloop[10].ram.r_n_24 ,\ramloop[10].ram.r_n_25 ,\ramloop[10].ram.r_n_26 ,\ramloop[10].ram.r_n_27 ,\ramloop[10].ram.r_n_28 ,\ramloop[10].ram.r_n_29 ,\ramloop[10].ram.r_n_30 ,\ramloop[10].ram.r_n_31 }),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[3:2]),
        .web(web[3:2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.addra(addra[11:0]),
        .\addra[15] (\ramloop[7].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[15] (\ramloop[7].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[31:24]),
        .dinb(dinb[31:24]),
        .\douta[31] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\doutb[31] ({\ramloop[11].ram.r_n_8 ,\ramloop[11].ram.r_n_9 ,\ramloop[11].ram.r_n_10 ,\ramloop[11].ram.r_n_11 ,\ramloop[11].ram.r_n_12 ,\ramloop[11].ram.r_n_13 ,\ramloop[11].ram.r_n_14 ,\ramloop[11].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[3]),
        .web(web[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.addra(addra[11:0]),
        .\addra[14] (\ramloop[8].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[14] (\ramloop[8].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[31:24]),
        .dinb(dinb[31:24]),
        .\douta[31] ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\doutb[31] ({\ramloop[12].ram.r_n_8 ,\ramloop[12].ram.r_n_9 ,\ramloop[12].ram.r_n_10 ,\ramloop[12].ram.r_n_11 ,\ramloop[12].ram.r_n_12 ,\ramloop[12].ram.r_n_13 ,\ramloop[12].ram.r_n_14 ,\ramloop[12].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[3]),
        .web(web[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.addra(addra[11:0]),
        .\addra[15] (\ramloop[9].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[15] (\ramloop[9].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[31:24]),
        .dinb(dinb[31:24]),
        .\douta[31] ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\doutb[31] ({\ramloop[13].ram.r_n_8 ,\ramloop[13].ram.r_n_9 ,\ramloop[13].ram.r_n_10 ,\ramloop[13].ram.r_n_11 ,\ramloop[13].ram.r_n_12 ,\ramloop[13].ram.r_n_13 ,\ramloop[13].ram.r_n_14 ,\ramloop[13].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[3]),
        .web(web[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DOUTADOUT({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .DOUTBDOUT({\ramloop[1].ram.r_n_8 ,\ramloop[1].ram.r_n_9 ,\ramloop[1].ram.r_n_10 ,\ramloop[1].ram.r_n_11 ,\ramloop[1].ram.r_n_12 ,\ramloop[1].ram.r_n_13 ,\ramloop[1].ram.r_n_14 ,\ramloop[1].ram.r_n_15 }),
        .addra(addra[11:0]),
        .\addra[14] (\ramloop[8].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[14] (\ramloop[8].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[7:0]),
        .dinb(dinb[7:0]),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[0]),
        .web(web[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.addra(addra[11:0]),
        .\addra[15] (\ramloop[9].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[15] (\ramloop[9].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[7:0]),
        .dinb(dinb[7:0]),
        .\douta[7] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\doutb[7] ({\ramloop[2].ram.r_n_8 ,\ramloop[2].ram.r_n_9 ,\ramloop[2].ram.r_n_10 ,\ramloop[2].ram.r_n_11 ,\ramloop[2].ram.r_n_12 ,\ramloop[2].ram.r_n_13 ,\ramloop[2].ram.r_n_14 ,\ramloop[2].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[0]),
        .web(web[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.addra(addra[10:0]),
        .addrb(addrb[10:0]),
        .clka(clka),
        .dina(dina[15:0]),
        .dinb(dinb[15:0]),
        .\douta[15] ({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 ,\ramloop[3].ram.r_n_8 ,\ramloop[3].ram.r_n_9 ,\ramloop[3].ram.r_n_10 ,\ramloop[3].ram.r_n_11 ,\ramloop[3].ram.r_n_12 ,\ramloop[3].ram.r_n_13 ,\ramloop[3].ram.r_n_14 ,\ramloop[3].ram.r_n_15 }),
        .\doutb[15] ({\ramloop[3].ram.r_n_16 ,\ramloop[3].ram.r_n_17 ,\ramloop[3].ram.r_n_18 ,\ramloop[3].ram.r_n_19 ,\ramloop[3].ram.r_n_20 ,\ramloop[3].ram.r_n_21 ,\ramloop[3].ram.r_n_22 ,\ramloop[3].ram.r_n_23 ,\ramloop[3].ram.r_n_24 ,\ramloop[3].ram.r_n_25 ,\ramloop[3].ram.r_n_26 ,\ramloop[3].ram.r_n_27 ,\ramloop[3].ram.r_n_28 ,\ramloop[3].ram.r_n_29 ,\ramloop[3].ram.r_n_30 ,\ramloop[3].ram.r_n_31 }),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[1:0]),
        .web(web[1:0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.addra(addra[11:0]),
        .\addra[15] (\ramloop[7].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[15] (\ramloop[7].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[15:8]),
        .dinb(dinb[15:8]),
        .\douta[15] ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\doutb[15] ({\ramloop[4].ram.r_n_8 ,\ramloop[4].ram.r_n_9 ,\ramloop[4].ram.r_n_10 ,\ramloop[4].ram.r_n_11 ,\ramloop[4].ram.r_n_12 ,\ramloop[4].ram.r_n_13 ,\ramloop[4].ram.r_n_14 ,\ramloop[4].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[1]),
        .web(web[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.addra(addra[11:0]),
        .\addra[14] (\ramloop[8].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[14] (\ramloop[8].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[15:8]),
        .dinb(dinb[15:8]),
        .\douta[15] ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\doutb[15] ({\ramloop[5].ram.r_n_8 ,\ramloop[5].ram.r_n_9 ,\ramloop[5].ram.r_n_10 ,\ramloop[5].ram.r_n_11 ,\ramloop[5].ram.r_n_12 ,\ramloop[5].ram.r_n_13 ,\ramloop[5].ram.r_n_14 ,\ramloop[5].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[1]),
        .web(web[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.addra(addra[11:0]),
        .\addra[15] (\ramloop[9].ram.r_n_16 ),
        .addrb(addrb[11:0]),
        .\addrb[15] (\ramloop[9].ram.r_n_17 ),
        .clka(clka),
        .dina(dina[15:8]),
        .dinb(dinb[15:8]),
        .\douta[15] ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\doutb[15] ({\ramloop[6].ram.r_n_8 ,\ramloop[6].ram.r_n_9 ,\ramloop[6].ram.r_n_10 ,\ramloop[6].ram.r_n_11 ,\ramloop[6].ram.r_n_12 ,\ramloop[6].ram.r_n_13 ,\ramloop[6].ram.r_n_14 ,\ramloop[6].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[1]),
        .web(web[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[7].ram.r_n_16 ),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[7].ram.r_n_17 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina[23:16]),
        .dinb(dinb[23:16]),
        .\douta[23] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\doutb[23] ({\ramloop[7].ram.r_n_8 ,\ramloop[7].ram.r_n_9 ,\ramloop[7].ram.r_n_10 ,\ramloop[7].ram.r_n_11 ,\ramloop[7].ram.r_n_12 ,\ramloop[7].ram.r_n_13 ,\ramloop[7].ram.r_n_14 ,\ramloop[7].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[2]),
        .web(web[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[8].ram.r_n_16 ),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[8].ram.r_n_17 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina[23:16]),
        .dinb(dinb[23:16]),
        .\douta[23] ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\doutb[23] ({\ramloop[8].ram.r_n_8 ,\ramloop[8].ram.r_n_9 ,\ramloop[8].ram.r_n_10 ,\ramloop[8].ram.r_n_11 ,\ramloop[8].ram.r_n_12 ,\ramloop[8].ram.r_n_13 ,\ramloop[8].ram.r_n_14 ,\ramloop[8].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[2]),
        .web(web[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram (\ramloop[9].ram.r_n_16 ),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\ramloop[9].ram.r_n_17 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina[23:16]),
        .dinb(dinb[23:16]),
        .\douta[23] ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\doutb[23] ({\ramloop[9].ram.r_n_8 ,\ramloop[9].ram.r_n_9 ,\ramloop[9].ram.r_n_10 ,\ramloop[9].ram.r_n_11 ,\ramloop[9].ram.r_n_12 ,\ramloop[9].ram.r_n_13 ,\ramloop[9].ram.r_n_14 ,\ramloop[9].ram.r_n_15 }),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea[2]),
        .web(web[2]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
   (douta,
    addra,
    clka,
    DOUTADOUT,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 );
  output [31:0]douta;
  input [2:0]addra;
  input clka;
  input [7:0]DOUTADOUT;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  input [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;

  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  wire [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  wire [7:0]DOUTADOUT;
  wire [2:0]addra;
  wire clka;
  wire [31:0]douta;
  wire \douta[0]_INST_0_i_1_n_0 ;
  wire \douta[0]_INST_0_i_2_n_0 ;
  wire \douta[10]_INST_0_i_1_n_0 ;
  wire \douta[10]_INST_0_i_2_n_0 ;
  wire \douta[11]_INST_0_i_1_n_0 ;
  wire \douta[11]_INST_0_i_2_n_0 ;
  wire \douta[12]_INST_0_i_1_n_0 ;
  wire \douta[12]_INST_0_i_2_n_0 ;
  wire \douta[13]_INST_0_i_1_n_0 ;
  wire \douta[13]_INST_0_i_2_n_0 ;
  wire \douta[14]_INST_0_i_1_n_0 ;
  wire \douta[14]_INST_0_i_2_n_0 ;
  wire \douta[15]_INST_0_i_1_n_0 ;
  wire \douta[15]_INST_0_i_2_n_0 ;
  wire \douta[16]_INST_0_i_1_n_0 ;
  wire \douta[16]_INST_0_i_2_n_0 ;
  wire \douta[17]_INST_0_i_1_n_0 ;
  wire \douta[17]_INST_0_i_2_n_0 ;
  wire \douta[18]_INST_0_i_1_n_0 ;
  wire \douta[18]_INST_0_i_2_n_0 ;
  wire \douta[19]_INST_0_i_1_n_0 ;
  wire \douta[19]_INST_0_i_2_n_0 ;
  wire \douta[1]_INST_0_i_1_n_0 ;
  wire \douta[1]_INST_0_i_2_n_0 ;
  wire \douta[20]_INST_0_i_1_n_0 ;
  wire \douta[20]_INST_0_i_2_n_0 ;
  wire \douta[21]_INST_0_i_1_n_0 ;
  wire \douta[21]_INST_0_i_2_n_0 ;
  wire \douta[22]_INST_0_i_1_n_0 ;
  wire \douta[22]_INST_0_i_2_n_0 ;
  wire \douta[23]_INST_0_i_1_n_0 ;
  wire \douta[23]_INST_0_i_2_n_0 ;
  wire \douta[24]_INST_0_i_1_n_0 ;
  wire \douta[24]_INST_0_i_2_n_0 ;
  wire \douta[25]_INST_0_i_1_n_0 ;
  wire \douta[25]_INST_0_i_2_n_0 ;
  wire \douta[26]_INST_0_i_1_n_0 ;
  wire \douta[26]_INST_0_i_2_n_0 ;
  wire \douta[27]_INST_0_i_1_n_0 ;
  wire \douta[27]_INST_0_i_2_n_0 ;
  wire \douta[28]_INST_0_i_1_n_0 ;
  wire \douta[28]_INST_0_i_2_n_0 ;
  wire \douta[29]_INST_0_i_1_n_0 ;
  wire \douta[29]_INST_0_i_2_n_0 ;
  wire \douta[2]_INST_0_i_1_n_0 ;
  wire \douta[2]_INST_0_i_2_n_0 ;
  wire \douta[30]_INST_0_i_1_n_0 ;
  wire \douta[30]_INST_0_i_2_n_0 ;
  wire \douta[31]_INST_0_i_1_n_0 ;
  wire \douta[31]_INST_0_i_2_n_0 ;
  wire \douta[3]_INST_0_i_1_n_0 ;
  wire \douta[3]_INST_0_i_2_n_0 ;
  wire \douta[4]_INST_0_i_1_n_0 ;
  wire \douta[4]_INST_0_i_2_n_0 ;
  wire \douta[5]_INST_0_i_1_n_0 ;
  wire \douta[5]_INST_0_i_2_n_0 ;
  wire \douta[6]_INST_0_i_1_n_0 ;
  wire \douta[6]_INST_0_i_2_n_0 ;
  wire \douta[7]_INST_0_i_1_n_0 ;
  wire \douta[7]_INST_0_i_2_n_0 ;
  wire \douta[8]_INST_0_i_1_n_0 ;
  wire \douta[8]_INST_0_i_2_n_0 ;
  wire \douta[9]_INST_0_i_1_n_0 ;
  wire \douta[9]_INST_0_i_2_n_0 ;
  wire [2:0]sel_pipe;
  wire [2:0]sel_pipe_d1;

  MUXF7 \douta[0]_INST_0 
       (.I0(\douta[0]_INST_0_i_1_n_0 ),
        .I1(\douta[0]_INST_0_i_2_n_0 ),
        .O(douta[0]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[0]_INST_0_i_1 
       (.I0(DOUTADOUT[0]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(\douta[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[0]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [0]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [0]),
        .O(\douta[0]_INST_0_i_2_n_0 ));
  MUXF7 \douta[10]_INST_0 
       (.I0(\douta[10]_INST_0_i_1_n_0 ),
        .I1(\douta[10]_INST_0_i_2_n_0 ),
        .O(douta[10]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[10]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [2]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [2]),
        .O(\douta[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[10]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [10]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [2]),
        .O(\douta[10]_INST_0_i_2_n_0 ));
  MUXF7 \douta[11]_INST_0 
       (.I0(\douta[11]_INST_0_i_1_n_0 ),
        .I1(\douta[11]_INST_0_i_2_n_0 ),
        .O(douta[11]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[11]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [3]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [3]),
        .O(\douta[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[11]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [11]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [3]),
        .O(\douta[11]_INST_0_i_2_n_0 ));
  MUXF7 \douta[12]_INST_0 
       (.I0(\douta[12]_INST_0_i_1_n_0 ),
        .I1(\douta[12]_INST_0_i_2_n_0 ),
        .O(douta[12]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[12]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [4]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [4]),
        .O(\douta[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[12]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [12]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [4]),
        .O(\douta[12]_INST_0_i_2_n_0 ));
  MUXF7 \douta[13]_INST_0 
       (.I0(\douta[13]_INST_0_i_1_n_0 ),
        .I1(\douta[13]_INST_0_i_2_n_0 ),
        .O(douta[13]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[13]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [5]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [5]),
        .O(\douta[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[13]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [13]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [5]),
        .O(\douta[13]_INST_0_i_2_n_0 ));
  MUXF7 \douta[14]_INST_0 
       (.I0(\douta[14]_INST_0_i_1_n_0 ),
        .I1(\douta[14]_INST_0_i_2_n_0 ),
        .O(douta[14]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[14]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [6]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [6]),
        .O(\douta[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[14]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [14]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [6]),
        .O(\douta[14]_INST_0_i_2_n_0 ));
  MUXF7 \douta[15]_INST_0 
       (.I0(\douta[15]_INST_0_i_1_n_0 ),
        .I1(\douta[15]_INST_0_i_2_n_0 ),
        .O(douta[15]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[15]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [7]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [7]),
        .O(\douta[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[15]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [15]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [7]),
        .O(\douta[15]_INST_0_i_2_n_0 ));
  MUXF7 \douta[16]_INST_0 
       (.I0(\douta[16]_INST_0_i_1_n_0 ),
        .I1(\douta[16]_INST_0_i_2_n_0 ),
        .O(douta[16]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[16]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [0]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [0]),
        .O(\douta[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[16]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [0]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [0]),
        .O(\douta[16]_INST_0_i_2_n_0 ));
  MUXF7 \douta[17]_INST_0 
       (.I0(\douta[17]_INST_0_i_1_n_0 ),
        .I1(\douta[17]_INST_0_i_2_n_0 ),
        .O(douta[17]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[17]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [1]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [1]),
        .O(\douta[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[17]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [1]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [1]),
        .O(\douta[17]_INST_0_i_2_n_0 ));
  MUXF7 \douta[18]_INST_0 
       (.I0(\douta[18]_INST_0_i_1_n_0 ),
        .I1(\douta[18]_INST_0_i_2_n_0 ),
        .O(douta[18]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[18]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [2]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [2]),
        .O(\douta[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[18]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [2]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [2]),
        .O(\douta[18]_INST_0_i_2_n_0 ));
  MUXF7 \douta[19]_INST_0 
       (.I0(\douta[19]_INST_0_i_1_n_0 ),
        .I1(\douta[19]_INST_0_i_2_n_0 ),
        .O(douta[19]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[19]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [3]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [3]),
        .O(\douta[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[19]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [3]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [3]),
        .O(\douta[19]_INST_0_i_2_n_0 ));
  MUXF7 \douta[1]_INST_0 
       (.I0(\douta[1]_INST_0_i_1_n_0 ),
        .I1(\douta[1]_INST_0_i_2_n_0 ),
        .O(douta[1]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[1]_INST_0_i_1 
       (.I0(DOUTADOUT[1]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .O(\douta[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[1]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [1]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [1]),
        .O(\douta[1]_INST_0_i_2_n_0 ));
  MUXF7 \douta[20]_INST_0 
       (.I0(\douta[20]_INST_0_i_1_n_0 ),
        .I1(\douta[20]_INST_0_i_2_n_0 ),
        .O(douta[20]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[20]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [4]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [4]),
        .O(\douta[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[20]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [4]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [4]),
        .O(\douta[20]_INST_0_i_2_n_0 ));
  MUXF7 \douta[21]_INST_0 
       (.I0(\douta[21]_INST_0_i_1_n_0 ),
        .I1(\douta[21]_INST_0_i_2_n_0 ),
        .O(douta[21]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[21]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [5]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [5]),
        .O(\douta[21]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[21]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [5]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [5]),
        .O(\douta[21]_INST_0_i_2_n_0 ));
  MUXF7 \douta[22]_INST_0 
       (.I0(\douta[22]_INST_0_i_1_n_0 ),
        .I1(\douta[22]_INST_0_i_2_n_0 ),
        .O(douta[22]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[22]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [6]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [6]),
        .O(\douta[22]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[22]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [6]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [6]),
        .O(\douta[22]_INST_0_i_2_n_0 ));
  MUXF7 \douta[23]_INST_0 
       (.I0(\douta[23]_INST_0_i_1_n_0 ),
        .I1(\douta[23]_INST_0_i_2_n_0 ),
        .O(douta[23]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[23]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [7]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [7]),
        .O(\douta[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[23]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [7]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [7]),
        .O(\douta[23]_INST_0_i_2_n_0 ));
  MUXF7 \douta[24]_INST_0 
       (.I0(\douta[24]_INST_0_i_1_n_0 ),
        .I1(\douta[24]_INST_0_i_2_n_0 ),
        .O(douta[24]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[24]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [0]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [0]),
        .O(\douta[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[24]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [8]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [0]),
        .O(\douta[24]_INST_0_i_2_n_0 ));
  MUXF7 \douta[25]_INST_0 
       (.I0(\douta[25]_INST_0_i_1_n_0 ),
        .I1(\douta[25]_INST_0_i_2_n_0 ),
        .O(douta[25]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[25]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [1]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [1]),
        .O(\douta[25]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[25]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [9]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [1]),
        .O(\douta[25]_INST_0_i_2_n_0 ));
  MUXF7 \douta[26]_INST_0 
       (.I0(\douta[26]_INST_0_i_1_n_0 ),
        .I1(\douta[26]_INST_0_i_2_n_0 ),
        .O(douta[26]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[26]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [2]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [2]),
        .O(\douta[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[26]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [10]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [2]),
        .O(\douta[26]_INST_0_i_2_n_0 ));
  MUXF7 \douta[27]_INST_0 
       (.I0(\douta[27]_INST_0_i_1_n_0 ),
        .I1(\douta[27]_INST_0_i_2_n_0 ),
        .O(douta[27]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[27]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [3]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [3]),
        .O(\douta[27]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[27]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [11]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [3]),
        .O(\douta[27]_INST_0_i_2_n_0 ));
  MUXF7 \douta[28]_INST_0 
       (.I0(\douta[28]_INST_0_i_1_n_0 ),
        .I1(\douta[28]_INST_0_i_2_n_0 ),
        .O(douta[28]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[28]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [4]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [4]),
        .O(\douta[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[28]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [12]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [4]),
        .O(\douta[28]_INST_0_i_2_n_0 ));
  MUXF7 \douta[29]_INST_0 
       (.I0(\douta[29]_INST_0_i_1_n_0 ),
        .I1(\douta[29]_INST_0_i_2_n_0 ),
        .O(douta[29]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[29]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [5]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [5]),
        .O(\douta[29]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[29]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [13]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [5]),
        .O(\douta[29]_INST_0_i_2_n_0 ));
  MUXF7 \douta[2]_INST_0 
       (.I0(\douta[2]_INST_0_i_1_n_0 ),
        .I1(\douta[2]_INST_0_i_2_n_0 ),
        .O(douta[2]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[2]_INST_0_i_1 
       (.I0(DOUTADOUT[2]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .O(\douta[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[2]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [2]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [2]),
        .O(\douta[2]_INST_0_i_2_n_0 ));
  MUXF7 \douta[30]_INST_0 
       (.I0(\douta[30]_INST_0_i_1_n_0 ),
        .I1(\douta[30]_INST_0_i_2_n_0 ),
        .O(douta[30]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[30]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [6]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [6]),
        .O(\douta[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[30]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [14]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [6]),
        .O(\douta[30]_INST_0_i_2_n_0 ));
  MUXF7 \douta[31]_INST_0 
       (.I0(\douta[31]_INST_0_i_1_n_0 ),
        .I1(\douta[31]_INST_0_i_2_n_0 ),
        .O(douta[31]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[31]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [7]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [7]),
        .O(\douta[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[31]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [15]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [7]),
        .O(\douta[31]_INST_0_i_2_n_0 ));
  MUXF7 \douta[3]_INST_0 
       (.I0(\douta[3]_INST_0_i_1_n_0 ),
        .I1(\douta[3]_INST_0_i_2_n_0 ),
        .O(douta[3]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[3]_INST_0_i_1 
       (.I0(DOUTADOUT[3]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .O(\douta[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[3]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [3]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [3]),
        .O(\douta[3]_INST_0_i_2_n_0 ));
  MUXF7 \douta[4]_INST_0 
       (.I0(\douta[4]_INST_0_i_1_n_0 ),
        .I1(\douta[4]_INST_0_i_2_n_0 ),
        .O(douta[4]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[4]_INST_0_i_1 
       (.I0(DOUTADOUT[4]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .O(\douta[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[4]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [4]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [4]),
        .O(\douta[4]_INST_0_i_2_n_0 ));
  MUXF7 \douta[5]_INST_0 
       (.I0(\douta[5]_INST_0_i_1_n_0 ),
        .I1(\douta[5]_INST_0_i_2_n_0 ),
        .O(douta[5]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[5]_INST_0_i_1 
       (.I0(DOUTADOUT[5]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .O(\douta[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[5]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [5]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [5]),
        .O(\douta[5]_INST_0_i_2_n_0 ));
  MUXF7 \douta[6]_INST_0 
       (.I0(\douta[6]_INST_0_i_1_n_0 ),
        .I1(\douta[6]_INST_0_i_2_n_0 ),
        .O(douta[6]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[6]_INST_0_i_1 
       (.I0(DOUTADOUT[6]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .O(\douta[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[6]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [6]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [6]),
        .O(\douta[6]_INST_0_i_2_n_0 ));
  MUXF7 \douta[7]_INST_0 
       (.I0(\douta[7]_INST_0_i_1_n_0 ),
        .I1(\douta[7]_INST_0_i_2_n_0 ),
        .O(douta[7]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[7]_INST_0_i_1 
       (.I0(DOUTADOUT[7]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .O(\douta[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[7]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [7]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [7]),
        .O(\douta[7]_INST_0_i_2_n_0 ));
  MUXF7 \douta[8]_INST_0 
       (.I0(\douta[8]_INST_0_i_1_n_0 ),
        .I1(\douta[8]_INST_0_i_2_n_0 ),
        .O(douta[8]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[8]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [0]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [0]),
        .O(\douta[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[8]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [8]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [0]),
        .O(\douta[8]_INST_0_i_2_n_0 ));
  MUXF7 \douta[9]_INST_0 
       (.I0(\douta[9]_INST_0_i_1_n_0 ),
        .I1(\douta[9]_INST_0_i_2_n_0 ),
        .O(douta[9]),
        .S(sel_pipe_d1[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \douta[9]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [1]),
        .I1(sel_pipe_d1[1]),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [1]),
        .O(\douta[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \douta[9]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [9]),
        .I1(sel_pipe_d1[0]),
        .I2(sel_pipe_d1[1]),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [1]),
        .O(\douta[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[0]),
        .Q(sel_pipe_d1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[1]),
        .Q(sel_pipe_d1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(sel_pipe[2]),
        .Q(sel_pipe_d1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[0]),
        .Q(sel_pipe[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[1]),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addra[2]),
        .Q(sel_pipe[2]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0
   (doutb,
    addrb,
    clka,
    DOUTBDOUT,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 );
  output [31:0]doutb;
  input [2:0]addrb;
  input clka;
  input [7:0]DOUTBDOUT;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  input [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  input [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  input [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;

  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 ;
  wire [15:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 ;
  wire [7:0]\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 ;
  wire [7:0]DOUTBDOUT;
  wire [2:0]addrb;
  wire clka;
  wire [31:0]doutb;
  wire \doutb[0]_INST_0_i_1_n_0 ;
  wire \doutb[0]_INST_0_i_2_n_0 ;
  wire \doutb[10]_INST_0_i_1_n_0 ;
  wire \doutb[10]_INST_0_i_2_n_0 ;
  wire \doutb[11]_INST_0_i_1_n_0 ;
  wire \doutb[11]_INST_0_i_2_n_0 ;
  wire \doutb[12]_INST_0_i_1_n_0 ;
  wire \doutb[12]_INST_0_i_2_n_0 ;
  wire \doutb[13]_INST_0_i_1_n_0 ;
  wire \doutb[13]_INST_0_i_2_n_0 ;
  wire \doutb[14]_INST_0_i_1_n_0 ;
  wire \doutb[14]_INST_0_i_2_n_0 ;
  wire \doutb[15]_INST_0_i_1_n_0 ;
  wire \doutb[15]_INST_0_i_2_n_0 ;
  wire \doutb[16]_INST_0_i_1_n_0 ;
  wire \doutb[16]_INST_0_i_2_n_0 ;
  wire \doutb[17]_INST_0_i_1_n_0 ;
  wire \doutb[17]_INST_0_i_2_n_0 ;
  wire \doutb[18]_INST_0_i_1_n_0 ;
  wire \doutb[18]_INST_0_i_2_n_0 ;
  wire \doutb[19]_INST_0_i_1_n_0 ;
  wire \doutb[19]_INST_0_i_2_n_0 ;
  wire \doutb[1]_INST_0_i_1_n_0 ;
  wire \doutb[1]_INST_0_i_2_n_0 ;
  wire \doutb[20]_INST_0_i_1_n_0 ;
  wire \doutb[20]_INST_0_i_2_n_0 ;
  wire \doutb[21]_INST_0_i_1_n_0 ;
  wire \doutb[21]_INST_0_i_2_n_0 ;
  wire \doutb[22]_INST_0_i_1_n_0 ;
  wire \doutb[22]_INST_0_i_2_n_0 ;
  wire \doutb[23]_INST_0_i_1_n_0 ;
  wire \doutb[23]_INST_0_i_2_n_0 ;
  wire \doutb[24]_INST_0_i_1_n_0 ;
  wire \doutb[24]_INST_0_i_2_n_0 ;
  wire \doutb[25]_INST_0_i_1_n_0 ;
  wire \doutb[25]_INST_0_i_2_n_0 ;
  wire \doutb[26]_INST_0_i_1_n_0 ;
  wire \doutb[26]_INST_0_i_2_n_0 ;
  wire \doutb[27]_INST_0_i_1_n_0 ;
  wire \doutb[27]_INST_0_i_2_n_0 ;
  wire \doutb[28]_INST_0_i_1_n_0 ;
  wire \doutb[28]_INST_0_i_2_n_0 ;
  wire \doutb[29]_INST_0_i_1_n_0 ;
  wire \doutb[29]_INST_0_i_2_n_0 ;
  wire \doutb[2]_INST_0_i_1_n_0 ;
  wire \doutb[2]_INST_0_i_2_n_0 ;
  wire \doutb[30]_INST_0_i_1_n_0 ;
  wire \doutb[30]_INST_0_i_2_n_0 ;
  wire \doutb[31]_INST_0_i_1_n_0 ;
  wire \doutb[31]_INST_0_i_2_n_0 ;
  wire \doutb[3]_INST_0_i_1_n_0 ;
  wire \doutb[3]_INST_0_i_2_n_0 ;
  wire \doutb[4]_INST_0_i_1_n_0 ;
  wire \doutb[4]_INST_0_i_2_n_0 ;
  wire \doutb[5]_INST_0_i_1_n_0 ;
  wire \doutb[5]_INST_0_i_2_n_0 ;
  wire \doutb[6]_INST_0_i_1_n_0 ;
  wire \doutb[6]_INST_0_i_2_n_0 ;
  wire \doutb[7]_INST_0_i_1_n_0 ;
  wire \doutb[7]_INST_0_i_2_n_0 ;
  wire \doutb[8]_INST_0_i_1_n_0 ;
  wire \doutb[8]_INST_0_i_2_n_0 ;
  wire \doutb[9]_INST_0_i_1_n_0 ;
  wire \doutb[9]_INST_0_i_2_n_0 ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ;
  wire \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ;

  MUXF7 \doutb[0]_INST_0 
       (.I0(\doutb[0]_INST_0_i_1_n_0 ),
        .I1(\doutb[0]_INST_0_i_2_n_0 ),
        .O(doutb[0]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[0]_INST_0_i_1 
       (.I0(DOUTBDOUT[0]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [0]),
        .O(\doutb[0]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[0]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [0]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [0]),
        .O(\doutb[0]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[10]_INST_0 
       (.I0(\doutb[10]_INST_0_i_1_n_0 ),
        .I1(\doutb[10]_INST_0_i_2_n_0 ),
        .O(doutb[10]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[10]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [2]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [2]),
        .O(\doutb[10]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[10]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [10]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [2]),
        .O(\doutb[10]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[11]_INST_0 
       (.I0(\doutb[11]_INST_0_i_1_n_0 ),
        .I1(\doutb[11]_INST_0_i_2_n_0 ),
        .O(doutb[11]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[11]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [3]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [3]),
        .O(\doutb[11]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[11]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [11]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [3]),
        .O(\doutb[11]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[12]_INST_0 
       (.I0(\doutb[12]_INST_0_i_1_n_0 ),
        .I1(\doutb[12]_INST_0_i_2_n_0 ),
        .O(doutb[12]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[12]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [4]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [4]),
        .O(\doutb[12]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[12]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [12]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [4]),
        .O(\doutb[12]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[13]_INST_0 
       (.I0(\doutb[13]_INST_0_i_1_n_0 ),
        .I1(\doutb[13]_INST_0_i_2_n_0 ),
        .O(doutb[13]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[13]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [5]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [5]),
        .O(\doutb[13]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[13]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [13]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [5]),
        .O(\doutb[13]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[14]_INST_0 
       (.I0(\doutb[14]_INST_0_i_1_n_0 ),
        .I1(\doutb[14]_INST_0_i_2_n_0 ),
        .O(doutb[14]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[14]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [6]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [6]),
        .O(\doutb[14]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[14]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [14]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [6]),
        .O(\doutb[14]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[15]_INST_0 
       (.I0(\doutb[15]_INST_0_i_1_n_0 ),
        .I1(\doutb[15]_INST_0_i_2_n_0 ),
        .O(doutb[15]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[15]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [7]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [7]),
        .O(\doutb[15]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[15]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [15]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [7]),
        .O(\doutb[15]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[16]_INST_0 
       (.I0(\doutb[16]_INST_0_i_1_n_0 ),
        .I1(\doutb[16]_INST_0_i_2_n_0 ),
        .O(doutb[16]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[16]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [0]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [0]),
        .O(\doutb[16]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[16]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [0]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [0]),
        .O(\doutb[16]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[17]_INST_0 
       (.I0(\doutb[17]_INST_0_i_1_n_0 ),
        .I1(\doutb[17]_INST_0_i_2_n_0 ),
        .O(doutb[17]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[17]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [1]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [1]),
        .O(\doutb[17]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[17]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [1]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [1]),
        .O(\doutb[17]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[18]_INST_0 
       (.I0(\doutb[18]_INST_0_i_1_n_0 ),
        .I1(\doutb[18]_INST_0_i_2_n_0 ),
        .O(doutb[18]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[18]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [2]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [2]),
        .O(\doutb[18]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[18]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [2]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [2]),
        .O(\doutb[18]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[19]_INST_0 
       (.I0(\doutb[19]_INST_0_i_1_n_0 ),
        .I1(\doutb[19]_INST_0_i_2_n_0 ),
        .O(doutb[19]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[19]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [3]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [3]),
        .O(\doutb[19]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[19]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [3]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [3]),
        .O(\doutb[19]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[1]_INST_0 
       (.I0(\doutb[1]_INST_0_i_1_n_0 ),
        .I1(\doutb[1]_INST_0_i_2_n_0 ),
        .O(doutb[1]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[1]_INST_0_i_1 
       (.I0(DOUTBDOUT[1]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [1]),
        .O(\doutb[1]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[1]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [1]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [1]),
        .O(\doutb[1]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[20]_INST_0 
       (.I0(\doutb[20]_INST_0_i_1_n_0 ),
        .I1(\doutb[20]_INST_0_i_2_n_0 ),
        .O(doutb[20]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[20]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [4]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [4]),
        .O(\doutb[20]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[20]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [4]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [4]),
        .O(\doutb[20]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[21]_INST_0 
       (.I0(\doutb[21]_INST_0_i_1_n_0 ),
        .I1(\doutb[21]_INST_0_i_2_n_0 ),
        .O(doutb[21]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[21]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [5]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [5]),
        .O(\doutb[21]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[21]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [5]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [5]),
        .O(\doutb[21]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[22]_INST_0 
       (.I0(\doutb[22]_INST_0_i_1_n_0 ),
        .I1(\doutb[22]_INST_0_i_2_n_0 ),
        .O(doutb[22]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[22]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [6]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [6]),
        .O(\doutb[22]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[22]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [6]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [6]),
        .O(\doutb[22]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[23]_INST_0 
       (.I0(\doutb[23]_INST_0_i_1_n_0 ),
        .I1(\doutb[23]_INST_0_i_2_n_0 ),
        .O(doutb[23]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[23]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5 [7]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6 [7]),
        .O(\doutb[23]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[23]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [7]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8 [7]),
        .O(\doutb[23]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[24]_INST_0 
       (.I0(\doutb[24]_INST_0_i_1_n_0 ),
        .I1(\doutb[24]_INST_0_i_2_n_0 ),
        .O(doutb[24]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[24]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [0]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [0]),
        .O(\doutb[24]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[24]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [8]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [0]),
        .O(\doutb[24]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[25]_INST_0 
       (.I0(\doutb[25]_INST_0_i_1_n_0 ),
        .I1(\doutb[25]_INST_0_i_2_n_0 ),
        .O(doutb[25]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[25]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [1]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [1]),
        .O(\doutb[25]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[25]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [9]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [1]),
        .O(\doutb[25]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[26]_INST_0 
       (.I0(\doutb[26]_INST_0_i_1_n_0 ),
        .I1(\doutb[26]_INST_0_i_2_n_0 ),
        .O(doutb[26]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[26]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [2]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [2]),
        .O(\doutb[26]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[26]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [10]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [2]),
        .O(\doutb[26]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[27]_INST_0 
       (.I0(\doutb[27]_INST_0_i_1_n_0 ),
        .I1(\doutb[27]_INST_0_i_2_n_0 ),
        .O(doutb[27]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[27]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [3]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [3]),
        .O(\doutb[27]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[27]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [11]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [3]),
        .O(\doutb[27]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[28]_INST_0 
       (.I0(\doutb[28]_INST_0_i_1_n_0 ),
        .I1(\doutb[28]_INST_0_i_2_n_0 ),
        .O(doutb[28]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[28]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [4]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [4]),
        .O(\doutb[28]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[28]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [12]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [4]),
        .O(\doutb[28]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[29]_INST_0 
       (.I0(\doutb[29]_INST_0_i_1_n_0 ),
        .I1(\doutb[29]_INST_0_i_2_n_0 ),
        .O(doutb[29]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[29]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [5]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [5]),
        .O(\doutb[29]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[29]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [13]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [5]),
        .O(\doutb[29]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[2]_INST_0 
       (.I0(\doutb[2]_INST_0_i_1_n_0 ),
        .I1(\doutb[2]_INST_0_i_2_n_0 ),
        .O(doutb[2]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[2]_INST_0_i_1 
       (.I0(DOUTBDOUT[2]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [2]),
        .O(\doutb[2]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[2]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [2]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [2]),
        .O(\doutb[2]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[30]_INST_0 
       (.I0(\doutb[30]_INST_0_i_1_n_0 ),
        .I1(\doutb[30]_INST_0_i_2_n_0 ),
        .O(doutb[30]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[30]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [6]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [6]),
        .O(\doutb[30]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[30]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [14]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [6]),
        .O(\doutb[30]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[31]_INST_0 
       (.I0(\doutb[31]_INST_0_i_1_n_0 ),
        .I1(\doutb[31]_INST_0_i_2_n_0 ),
        .O(doutb[31]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[31]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9 [7]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10 [7]),
        .O(\doutb[31]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[31]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7 [15]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11 [7]),
        .O(\doutb[31]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[3]_INST_0 
       (.I0(\doutb[3]_INST_0_i_1_n_0 ),
        .I1(\doutb[3]_INST_0_i_2_n_0 ),
        .O(doutb[3]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[3]_INST_0_i_1 
       (.I0(DOUTBDOUT[3]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [3]),
        .O(\doutb[3]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[3]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [3]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [3]),
        .O(\doutb[3]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[4]_INST_0 
       (.I0(\doutb[4]_INST_0_i_1_n_0 ),
        .I1(\doutb[4]_INST_0_i_2_n_0 ),
        .O(doutb[4]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[4]_INST_0_i_1 
       (.I0(DOUTBDOUT[4]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [4]),
        .O(\doutb[4]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[4]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [4]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [4]),
        .O(\doutb[4]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[5]_INST_0 
       (.I0(\doutb[5]_INST_0_i_1_n_0 ),
        .I1(\doutb[5]_INST_0_i_2_n_0 ),
        .O(doutb[5]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[5]_INST_0_i_1 
       (.I0(DOUTBDOUT[5]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [5]),
        .O(\doutb[5]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[5]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [5]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [5]),
        .O(\doutb[5]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[6]_INST_0 
       (.I0(\doutb[6]_INST_0_i_1_n_0 ),
        .I1(\doutb[6]_INST_0_i_2_n_0 ),
        .O(doutb[6]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[6]_INST_0_i_1 
       (.I0(DOUTBDOUT[6]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [6]),
        .O(\doutb[6]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[6]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [6]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [6]),
        .O(\doutb[6]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[7]_INST_0 
       (.I0(\doutb[7]_INST_0_i_1_n_0 ),
        .I1(\doutb[7]_INST_0_i_2_n_0 ),
        .O(doutb[7]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[7]_INST_0_i_1 
       (.I0(DOUTBDOUT[7]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram [7]),
        .O(\doutb[7]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[7]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [7]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 [7]),
        .O(\doutb[7]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[8]_INST_0 
       (.I0(\doutb[8]_INST_0_i_1_n_0 ),
        .I1(\doutb[8]_INST_0_i_2_n_0 ),
        .O(doutb[8]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[8]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [0]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [0]),
        .O(\doutb[8]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[8]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [8]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [0]),
        .O(\doutb[8]_INST_0_i_2_n_0 ));
  MUXF7 \doutb[9]_INST_0 
       (.I0(\doutb[9]_INST_0_i_1_n_0 ),
        .I1(\doutb[9]_INST_0_i_2_n_0 ),
        .O(doutb[9]),
        .S(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doutb[9]_INST_0_i_1 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2 [1]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I2(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3 [1]),
        .O(\doutb[9]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2F20)) 
    \doutb[9]_INST_0_i_2 
       (.I0(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 [9]),
        .I1(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .I2(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .I3(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4 [1]),
        .O(\doutb[9]_INST_0_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .Q(\no_softecc_norm_sel2.has_mem_regs.WITHOUT_ECC_PIPE.ce_pri.sel_pipe_d1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[0] 
       (.C(clka),
        .CE(1'b1),
        .D(addrb[0]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(clka),
        .CE(1'b1),
        .D(addrb[1]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(clka),
        .CE(1'b1),
        .D(addrb[2]),
        .Q(\no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2] ),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (\douta[7] ,
    \doutb[7] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[7] ;
  output [7:0]\doutb[7] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[7] ;
  wire [7:0]\doutb[7] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[7] (\douta[7] ),
        .\doutb[7] (\doutb[7] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (DOUTADOUT,
    DOUTBDOUT,
    clka,
    \addra[14] ,
    \addrb[14] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOUTADOUT;
  output [7:0]DOUTBDOUT;
  input clka;
  input \addra[14] ;
  input \addrb[14] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [7:0]DOUTADOUT;
  wire [7:0]DOUTBDOUT;
  wire [11:0]addra;
  wire \addra[14] ;
  wire [11:0]addrb;
  wire \addrb[14] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.DOUTADOUT(DOUTADOUT),
        .DOUTBDOUT(DOUTBDOUT),
        .addra(addra),
        .\addra[14] (\addra[14] ),
        .addrb(addrb),
        .\addrb[14] (\addrb[14] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\douta[7] ,
    \doutb[7] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[7] ;
  output [7:0]\doutb[7] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[7] ;
  wire [7:0]\doutb[7] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[7] (\douta[7] ),
        .\doutb[7] (\doutb[7] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (\douta[31] ,
    \doutb[31] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[31] ;
  output [7:0]\doutb[31] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[31] ;
  wire [7:0]\doutb[31] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[31] (\douta[31] ),
        .\doutb[31] (\doutb[31] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (\douta[31] ,
    \doutb[31] ,
    clka,
    \addra[14] ,
    \addrb[14] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[31] ;
  output [7:0]\doutb[31] ;
  input clka;
  input \addra[14] ;
  input \addrb[14] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[14] ;
  wire [11:0]addrb;
  wire \addrb[14] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[31] ;
  wire [7:0]\doutb[31] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.addra(addra),
        .\addra[14] (\addra[14] ),
        .addrb(addrb),
        .\addrb[14] (\addrb[14] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[31] (\douta[31] ),
        .\doutb[31] (\doutb[31] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (\douta[31] ,
    \doutb[31] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[31] ;
  output [7:0]\doutb[31] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[31] ;
  wire [7:0]\doutb[31] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[31] (\douta[31] ),
        .\doutb[31] (\doutb[31] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (\douta[15] ,
    \doutb[15] ,
    clka,
    ena_array,
    enb_array,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]\douta[15] ;
  output [15:0]\doutb[15] ;
  input clka;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input rsta;
  input rstb;
  input sleep;
  input [10:0]addra;
  input [10:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [1:0]wea;
  input [1:0]web;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]\douta[15] ;
  wire [15:0]\doutb[15] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [1:0]wea;
  wire [1:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[15] (\douta[15] ),
        .\doutb[15] (\doutb[15] ),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\douta[15] ,
    \doutb[15] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[15] ;
  output [7:0]\doutb[15] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[15] ;
  wire [7:0]\doutb[15] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[15] (\douta[15] ),
        .\doutb[15] (\doutb[15] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\douta[15] ,
    \doutb[15] ,
    clka,
    \addra[14] ,
    \addrb[14] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[15] ;
  output [7:0]\doutb[15] ;
  input clka;
  input \addra[14] ;
  input \addrb[14] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[14] ;
  wire [11:0]addrb;
  wire \addrb[14] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[15] ;
  wire [7:0]\doutb[15] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.addra(addra),
        .\addra[14] (\addra[14] ),
        .addrb(addrb),
        .\addrb[14] (\addrb[14] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[15] (\douta[15] ),
        .\doutb[15] (\doutb[15] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (\douta[15] ,
    \doutb[15] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[15] ;
  output [7:0]\doutb[15] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[15] ;
  wire [7:0]\doutb[15] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.addra(addra),
        .\addra[15] (\addra[15] ),
        .addrb(addrb),
        .\addrb[15] (\addrb[15] ),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[15] (\douta[15] ),
        .\doutb[15] (\doutb[15] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (\douta[23] ,
    \doutb[23] ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[23] ;
  output [7:0]\doutb[23] ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[23] ;
  wire [7:0]\doutb[23] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[23] (\douta[23] ),
        .\doutb[23] (\doutb[23] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (\douta[23] ,
    \doutb[23] ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[23] ;
  output [7:0]\doutb[23] ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[23] ;
  wire [7:0]\doutb[23] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[23] (\douta[23] ),
        .\doutb[23] (\doutb[23] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (\douta[23] ,
    \doutb[23] ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[23] ;
  output [7:0]\doutb[23] ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[23] ;
  wire [7:0]\doutb[23] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 (\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram ),
        .\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 (\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[23] (\douta[23] ),
        .\doutb[23] (\doutb[23] ),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (\douta[31] ,
    \doutb[31] ,
    clka,
    ena_array,
    enb_array,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]\douta[31] ;
  output [15:0]\doutb[31] ;
  input clka;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input rsta;
  input rstb;
  input sleep;
  input [10:0]addra;
  input [10:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [1:0]wea;
  input [1:0]web;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]\douta[31] ;
  wire [15:0]\doutb[31] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [1:0]wea;
  wire [1:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .\douta[31] (\douta[31] ),
        .\doutb[31] (\doutb[31] ),
        .ena_array(ena_array),
        .enb_array(enb_array),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (\douta[7] ,
    \doutb[7] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[7] ;
  output [7:0]\doutb[7] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[7] ;
  wire [7:0]\doutb[7] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[7:0][0:4095]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00CD0ACD2820170000DB9A009A0000CD000000CD0000CD66006F93B713371337),
    .INIT_01(256'h538713376F53871337639363D38793B75353D38753D387530700000035000000),
    .INIT_02(256'h2753D30787072753D30787072753D30787076727538727D38727D3870713376F),
    .INIT_03(256'h27838313EF132327838313EF132327838313EF13232323232323830383038367),
    .INIT_04(256'h8793B78313EF1323278313EF13235327878313EF132327538793B78313EF1323),
    .INIT_05(256'h3753072753870713372783538793B753878313EF13235327878313EF13232753),
    .INIT_06(256'h07275387072783538707032753532753270353532753270793B7270327538713),
    .INIT_07(256'h232783538313EF132327538793B78313EF13238313EF13232323038367275387),
    .INIT_08(256'hEF132307278353878313EF13235327878313EF1323532787538793B78313EF13),
    .INIT_09(256'h838313EF1323532787838313EF13232323076727838313EF1323278353878313),
    .INIT_0A(256'h1323532787838313EF1323532787838313EF1323532787838313EF1323532787),
    .INIT_0B(256'h8787835353D353D353D353D35353D353D3535353538753538707D307878313EF),
    .INIT_0C(256'hD30793B72753D3D353D3D353532753D3D353D3D353532753D3D353D3D3535387),
    .INIT_0D(256'hD353D3D3535307133727535353535353D353D3071337278353D35353D35353D3),
    .INIT_0E(256'h1323238313EF1323238313EF132323679363138313EF1323232303672753D3D3),
    .INIT_0F(256'hEF132327838313EF132327838313EF1323238313EF132393230793B7138313EF),
    .INIT_10(256'hEF132327838313EF132327838313EF1323238313EF1323930793B71327838313),
    .INIT_11(256'h23238313EF132393230793B713936F9363D3878313EF13232707133727838313),
    .INIT_12(256'h2327838313EF1323238313EF1323930793B71327838313EF132327838313EF13),
    .INIT_13(256'h13EF1323236F6383138313EF1323930793B71327838313EF132327838313EF13),
    .INIT_14(256'h6383132783538793B78313EF13232783538793B78313EF13232783538793B783),
    .INIT_15(256'h23032383238323832383238323832313138313EF13239323230793B713036F13),
    .INIT_16(256'h87133763D387133763D387133763D387133707631323B3831303230323832383),
    .INIT_17(256'h3763D387133763D387133763D387133707270713376F53538713376F8713376F),
    .INIT_18(256'hD387133763D387133763D387133707270713376F53538713376F8713376F8713),
    .INIT_19(256'hEF132393136F1363831363136F270713376F53538713376F8713376F87133763),
    .INIT_1A(256'h8313E78313231323232323676313830367938313EF132303836F6303936F8313),
    .INIT_1B(256'h230367631393836723038363138313E783132323036763139383672303836313),
    .INIT_1C(256'h836723038363138313E7831323230367631393836723038363138313E7831323),
    .INIT_1D(256'h132313938363138313EF1323232393036F13938363138313EF13232367830393),
    .INIT_1E(256'h13EF1323232393036F8313EF132313938363138313EF1323232393036F8313EF),
    .INIT_1F(256'h0323B383130323B38313038313EF1323932393036F8313EF1323139383631383),
    .INIT_20(256'h13EF1323236F138313EF1323139363138313EF1323236723B383130323B38313),
    .INIT_21(256'h13239323136F8313EF1323139363138313EF1323236F8313EF13231393631383),
    .INIT_22(256'hEF1323139363138313EF1323232393836F9383639383132303230323038313EF),
    .INIT_23(256'h230323038313EF13239323136F8313EF1323139363138313EF1323236F138313),
    .INIT_24(256'h6723B383130323B38313038313EF1323932393836F8313EF1323938363938313),
    .INIT_25(256'hEF1323139363138313EF1323236F8313EF1323139363138313EF132323232303),
    .INIT_26(256'h03230323038313EF13239323136F8313EF1323139363138313EF1323236F8313),
    .INIT_27(256'h13EF1323236F8313EF1323139363138313EF1323239323B30393036763930323),
    .INIT_28(256'h23B303930367639303230323038313EF13239323136F8313EF13231393631383),
    .INIT_29(256'h63936F936393136F1363D307B313871337838363D30793B787B3930367830393),
    .INIT_2A(256'h87B39387B39363D3D3D35307B39387B3935387B393536FD3631387B313936F93),
    .INIT_2B(256'h63D3071337D3538707D3538707D30787838367936793679367932763D35353D3),
    .INIT_2C(256'h639303D353870353D353870353D30703D36793679327535353D38753D3075307),
    .INIT_2D(256'h53D30703D353D30703D3538703536753538783535353070353D3538703536753),
    .INIT_2E(256'h836753538793B75353878353D353535387035353D3D30703D353D36753639303),
    .INIT_2F(256'h5327830787078707878363D38793B78313EF132353D353232327272723870787),
    .INIT_30(256'h6F53871337639303838313EF132353D35327838707878313EF1323D353D353D3),
    .INIT_31(256'hB39383038303679367936793278353536F536313835363D30713375353875387),
    .INIT_32(256'h13E7831323931323232327272713139363938353878307D30783875387830783),
    .INIT_33(256'h83132303038307870793139363138313E7831323030383078707931393631383),
    .INIT_34(256'h63D3071337D3538707D3538707D30787836393679367936793679363138313E7),
    .INIT_35(256'h8363D3D3D3D3870783D307D387036783136793679327535353D38753D3075307),
    .INIT_36(256'hD3D3D3870783D307D3876313936F936F936F9363D38793B70763D3D3D3D38707),
    .INIT_37(256'h078783538753876313936F936F936F9363D38793B70763D3D3D3D387078363D3),
    .INIT_38(256'h932767936313936F936F936F9363D38793B70763D3D3D3D387078363D3535353),
    .INIT_39(256'h8313EF1323232727232353D38753D387530763D3071337878367932767932767),
    .INIT_3A(256'h53536F2783538783535363138363D307133753538753876F5387133763930383),
    .INIT_3B(256'h93B7D3D3538753D38753D307530763D30793B787036793679367932783538783),
    .INIT_3C(256'h078303B3930383038367936793679327538753D36F27538753D363938363D307),
    .INIT_3D(256'h13679367932753870763D387071337631367839313930363930383B393030787),
    .INIT_3E(256'h63D3870793B7038363D38793B707038313EF1323932323071337936783939313),
    .INIT_3F(256'hB707270793B76F275387071337276F5363930783136F1363136F136313936F93),
    .INIT_40(256'h37276F5363930783136F1363136F136313936F9363D3870793B7038363D38793),
    .INIT_41(256'h136F136313936F9363D3870793B7038363D38793B707270793B76F2753870713),
    .INIT_42(256'h13239323230713379367270713376F2753870793B7276F5363930783136F1363),
    .INIT_43(256'hD3870327D387133763D387133753D307038753D30703875387038307038313EF),
    .INIT_44(256'h07038313EF13239323230713379367270713376F275353870327D3D3870327D3),
    .INIT_45(256'h6393032783D3D30783875353878307D3D307830387838313EF13239323830787),
    .INIT_46(256'hD3071337D353870307D307038727D35387133753D3070387538703076F272727),
    .INIT_47(256'h138367936F27538793B763D38793B727D3D30793B7D353078307D307038727D3),
    .INIT_48(256'h13232363136F23B30393038313EF132393132323632323231383038303B31363),
    .INIT_49(256'hB3831363139323B30393038313EF1323931323236F23B30393038313EF132393),
    .INIT_4A(256'h038313EF132393232363936F23B30393038313EF132393232363930383038303),
    .INIT_4B(256'h0383B3136313836767678303831323B30393038313EF13239323236F23B30393),
    .INIT_4C(256'hD38753D387538707870783632323231327538703072753870307275387030783),
    .INIT_4D(256'h830383138327836F538793B76303938313EF13239323230787076F63136F2753),
    .INIT_4E(256'h136F1363D3D3070363D3D3070363D3538703639303538703D387035387036767),
    .INIT_4F(256'h63D38713378353D38753D38753870363936783679367936313836393136F136F),
    .INIT_50(256'h53871337639303838313EF132323679367936313936F9363936F936393136F13),
    .INIT_51(256'h93639303B31383679367936313936F9363936F936393136F1363D3871337836F),
    .INIT_52(256'hD353878363D3D3078363232323272727231383D38783530783D3878303B31367),
    .INIT_53(256'h5307D3078363136F93036F936F936393036313936F936F936F9363D353878363),
    .INIT_54(256'hD35393236F936F936393136F1363136F136313936F9363D30793B703D35307D3),
    .INIT_55(256'h6F9363936F936393136F1363D3871337836F53871337639303838313EF132353),
    .INIT_56(256'h8313EF1323932307870703B303136793631303B3831393836313936F93631393),
    .INIT_57(256'h136793639303B313830383038303830383679367936783030307870793836313),
    .INIT_58(256'h63232323232323232323930303B31353870307D30703875387030783B39303B3),
    .INIT_59(256'h6F936F932753D38753D387538763D3078793B763936F8313E783132393139313),
    .INIT_5A(256'h138383B30393836313936F9363D38793B76F93631307038313E7831323139313),
    .INIT_5B(256'h93639383035387538753875307D30703D38783538793B7678303039383679363),
    .INIT_5C(256'h6F8313E783132303030787079363138313EF1323D353535327272783B383936F),
    .INIT_5D(256'h13931323232323231383B3936793631383B39303836793678303039383631393),
    .INIT_5E(256'h8313E78313239323039303B303136793631303B38313938363138313E7831323),
    .INIT_5F(256'h8313938363138313E78313239323039303B303136793631303B3831393836313),
    .INIT_60(256'h6793679367830303938363138313E78313239323031303B303136793631303B3),
    .INIT_61(256'h93632323232323232393679363930383B3930383038303830383038367936793),
    .INIT_62(256'h13E7831323931393136323138303B31353870307D30783875387830783B3936F),
    .INIT_63(256'h8313E78313231393136F936F932753D38753D387538763D3078793B763936F83),
    .INIT_64(256'h63138313E783132393031303B383136F936393038363D387830793B76F936313),
    .INIT_65(256'h1303B383136F936393038363138313E783132393031303B383136F9363930383),
    .INIT_66(256'h936F936F936313936F936F936F8313E783132303039363138313E78313239303),
    .INIT_67(256'h93038363138313E783132393031303B383136F93639303836783030393836313),
    .INIT_68(256'h2393039303B383136F936393038363138313E783132393031303B383136F9363),
    .INIT_69(256'h67936783030393836313936F936F936F8313E783132303039363138313E78313),
    .INIT_6A(256'h53878307D30783875387830703B31367631383B3930383038303830383038303),
    .INIT_6B(256'h1323931393131393232327272793931363232323232323232323232323231383),
    .INIT_6C(256'h03038307870793139363138313E783132303038307870793139363138313E783),
    .INIT_6D(256'h231393136F8313E783132313931363136F936F936F936F9363138313E7831323),
    .INIT_6E(256'h870363D38713370703678303830393836763138383B303938363138313E78313),
    .INIT_6F(256'h936F93632727272723138303D307D38753875307D30703D38783538793B763D3),
    .INIT_70(256'h076F6313936F8313E783132303030787079363138313EF132353D3539383B303),
    .INIT_71(256'h67639303B3138303678303830393836F6F230383230383270727072783072783),
    .INIT_72(256'h03B3031367631303B3831393838313E78313231393132323232323239303B313),
    .INIT_73(256'h2393932303039303B3031367631303B3831393838313E7831323939323030393),
    .INIT_74(256'h93838313E783132393932303831303B3031367631303B3831393838313E78313),
    .INIT_75(256'h2323232323232323936763930383B39303830383038303830383036783038303),
    .INIT_76(256'h1303B383136F639303838313E7831323139313239303B3136F63930363232323),
    .INIT_77(256'h03938313E7831323939303831303B383136F639303838313E783132393930383),
    .INIT_78(256'h271393136323930353870307D30703875387030783B3136F8313E78313230383),
    .INIT_79(256'h13E783132303038307870793139363138313E783132393139313139323232727),
    .INIT_7A(256'h931363136F936F936F936F9363138313E7831323030383078707931393631383),
    .INIT_7B(256'h136F6393038363D3870307836F63138313E78313231393136F8313E783132313),
    .INIT_7C(256'h831323939303831303B383136F639303838313E783132393139303831303B383),
    .INIT_7D(256'h13E7831323038303938313E7831323939303831303B383136F639303838313E7),
    .INIT_7E(256'h13239313932303831303B383136F6393036323936763930303B3831393836F83),
    .INIT_7F(256'hE7831323038303938313E7831323939303039303B383136F639303838313E783),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[7] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[7] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(\addrb[15] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (DOUTADOUT,
    DOUTBDOUT,
    clka,
    \addra[14] ,
    \addrb[14] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]DOUTADOUT;
  output [7:0]DOUTBDOUT;
  input clka;
  input \addra[14] ;
  input \addrb[14] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [7:0]DOUTADOUT;
  wire [7:0]DOUTBDOUT;
  wire [11:0]addra;
  wire \addra[14] ;
  wire [11:0]addrb;
  wire \addrb[14] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[7:0][4096:8191]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h83136F6393038363D3878307836F63138313E7831323931393230303836F8313),
    .INIT_01(256'h13E7831323939303039303B383136F639303838313E7831323939303831303B3),
    .INIT_02(256'hB3930383038303830383038303678303830393836F8313E78313230383039383),
    .INIT_03(256'h632323232323232323232323232323138303B393030787078303B31367631383),
    .INIT_04(256'h139313936F936F932753870763D38707133763936F8313E78313231393139303),
    .INIT_05(256'h0363D38713370703678303830393836763138383B303938363138313E7831323),
    .INIT_06(256'h6F93632727272723930383D307D38753875307D30703D38783538793B763D387),
    .INIT_07(256'h6F6313936F8313E783132303030787079363138313EF132353D3539303B38313),
    .INIT_08(256'h639303B3138303678303830393836F6F23038323038327072707278307278307),
    .INIT_09(256'hB3031367631303B3831393838313E78313231393132323232323239303B31367),
    .INIT_0A(256'h93932303039303B3031367631303B3831393838313E783132393932303039303),
    .INIT_0B(256'h838313E783132393932303831303B3031367631303B3831393838313E7831323),
    .INIT_0C(256'h232323232323232323936763930383B393038303830383038303678303830393),
    .INIT_0D(256'h03831303B383136F639303838313E7831323139313231383B3936F6313836323),
    .INIT_0E(256'h038303938313E7831323939303831303B383136F639303838313E78313239393),
    .INIT_0F(256'h13E783132313931393836323930303B313030787078383B3936F8313E7831323),
    .INIT_10(256'h836F63138313E7831323139313936F936F932753870763D3870793B763136F83),
    .INIT_11(256'h136F639303838313E783132393139303831303B383136F6393038363D3870307),
    .INIT_12(256'hE7831323939303831303B383136F639303838313E7831323939303831303B383),
    .INIT_13(256'h83136F6393036323936763930303B3831393836F8313E7831323038303938313),
    .INIT_14(256'h831323939303039303B383136F639303838313E78313239313932303831303B3),
    .INIT_15(256'h878307836F63138313E783132393132303836F8313E7831323038303938313E7),
    .INIT_16(256'h9303B383136F639303838313E7831323939303831303B383136F6393038363D3),
    .INIT_17(256'h83038303678303830393836F8313E7831323038303938313E783132393930303),
    .INIT_18(256'h232323239303B3136F63930363232323136F6323138303032707133783038303),
    .INIT_19(256'h03938313E7831323939303039303B383136F639303838313E783132393131393),
    .INIT_1A(256'h63D3878307836F63138313E783132393131323232323236F8313E78313230383),
    .INIT_1B(256'h039303B383136F639303838313E783132393931303039383B303936F63138303),
    .INIT_1C(256'h07838313E7831323038303936F8313E7831323038303938313E7831323939303),
    .INIT_1D(256'h878353878307D307038753870307830367936793679363D38793B763D38793B7),
    .INIT_1E(256'h0783D3878327D3538793B753D387835307836F272727631383D38783530783D3),
    .INIT_1F(256'h6313830303836F931393832753538793B753D307835307832753538793B75353),
    .INIT_20(256'h93B76F0793B76F0793B763D38793B763D38793B707B393931327272707133783),
    .INIT_21(256'h83270783270783038367836727530783275307032753070363136727B3935307),
    .INIT_22(256'hB753878307136F1363D353071337D3071337D3D3D38713375387030763932707),
    .INIT_23(256'h63136F0793B76F0793B763136313936F9363D3530793B7D30793B7D3D3D38793),
    .INIT_24(256'h8713372783D38793B7538313EF132323538793B707639367270793B76F0793B7),
    .INIT_25(256'h538793B753D3D3538793B75353D353D307838753870307639367275353071337),
    .INIT_26(256'hD38703538703076393672753871337538713372783D38793B7538313EF132323),
    .INIT_27(256'h13EF132353536F07133763D3232327235387133753D353D3530703D307038753),
    .INIT_28(256'h93B763D32753870793B7D3530783D3070383878353D3D3538793B7538793B783),
    .INIT_29(256'hB7D35353870793B78793B753D3D3538793B7538793B78313EF132353D3D36F07),
    .INIT_2A(256'h03830383038367672783538793B7538793B76F0793B763D38793B75353530793),
    .INIT_2B(256'h132323232323232323272323232723238313270713378303B393639303830383),
    .INIT_2C(256'h9383836F6313936F936F9363D38793B763D38793B707838313E7831323931393),
    .INIT_2D(256'hD3078753D3078753870783038363138313E78313231303838393638303B30303),
    .INIT_2E(256'h27D3530783878363D38793B7D3D3538707D3538707D30787038353D307870353),
    .INIT_2F(256'h6F6F27538727D38727D387835387535363D30793B76F275353078727D3530787),
    .INIT_30(256'h832383238303830383038303830383038303830383036767830303870793836F),
    .INIT_31(256'h2323272323232323232323232323232323278323132707133723036313230323),
    .INIT_32(256'h6393136F136F1363D387133763D387133707838313E783132313139393232323),
    .INIT_33(256'h538753D363D38793B75353D3078753D30787538703078367639323B303930393),
    .INIT_34(256'h232327231383538707830383B303930303676727538727D38727D38783538783),
    .INIT_35(256'h13376F07133763D387133763D387133707B383131313272727830793B7038363),
    .INIT_36(256'hE783132393036F2753070327530703278353078363136F27B313530713376F07),
    .INIT_37(256'hB393838323B3039303B3030393838313E7831323038327072707278307038313),
    .INIT_38(256'h070383B3938323B313936F23B3139363D3878303071337832707270727078383),
    .INIT_39(256'h07270727078383B3938327530727530727530753870793B783B3932707270727),
    .INIT_3A(256'h5353078727D353078727D353078753D3538707D3538707D3078387830793B727),
    .INIT_3B(256'hD3078753D30787538703078363138313E7831323931327038383135387070327),
    .INIT_3C(256'h53078727D3530783870363D38713375353D3078753D307875387078353875353),
    .INIT_3D(256'h0307836F6F27538727D38727D387035307535363D30713376F275353078727D3),
    .INIT_3E(256'h870793B78313E7831323030387079383838313E7831323031303032707270727),
    .INIT_3F(256'h23038303D30787039353530783830793B763839323B3039393936F63039363D3),
    .INIT_40(256'h27232383132787133783038303830383038303830383036767676F8313E78313),
    .INIT_41(256'h8793B763D38793B707838313E783132393931313232323232323232323232323),
    .INIT_42(256'h9327272703071337838363231383030383B303938383676313936F936F9363D3),
    .INIT_43(256'h63136F27B313530713376F0713376F07133763D387133763D387133707B39393),
    .INIT_44(256'h03938313E78313230303838313E7831323036F27530783275307832703530703),
    .INIT_45(256'h93B76F63D38793B75353D3078753D30787538703078363138313E78313230303),
    .INIT_46(256'h0383038303836767275353078727D353078727D3530703878353878383538707),
    .INIT_47(256'h232323232387133753D3078753D307875387070303B313631383038303830383),
    .INIT_48(256'h8313E7831323139323232323232323232323272323538793B703B3131363D323),
    .INIT_49(256'h030303938313E78313230303838313E78313232303030383B3039383836F6313),
    .INIT_4A(256'h870793B76F63D38793B75353D3078753D30787538703078363138313E7831323),
    .INIT_4B(256'h23538793B703B3136F6F275353078727D353078727D353070387835387838353),
    .INIT_4C(256'h03030383B3039383836F63138313E78313231393232323232323232323232723),
    .INIT_4D(256'h8703078363138313E7831323030303938313E78313230303838313E783132323),
    .INIT_4E(256'h27D353070387835387838353870793B76F63D38793B75353D3078753D3078753),
    .INIT_4F(256'h53D3078753D30787538703070303B38313631393836F275353078727D3530787),
    .INIT_50(256'h9303538793B703B3136F8313E78313239303538793B703B3131363D323871337),
    .INIT_51(256'h6F632323232323232323930383038303676767830383038313838313E7831323),
    .INIT_52(256'h03938313E783132303830383138313E783132313931323130327072707270783),
    .INIT_53(256'h132303830383138313E783132393132303938303270727072783070383836F63),
    .INIT_54(256'h138313E783132393132303938303270727072783070383836F6303938313E783),
    .INIT_55(256'h2393132303938303270727072783070383836F6303938313E783132303830383),
    .INIT_56(256'h838327072707278307038383676303938313E783132303830383138313E78313),
    .INIT_57(256'hB393038303830383038303830383678303830383138313E78313231393230393),
    .INIT_58(256'h836F63232323232323232323232323239303B31383B393838327072707270783),
    .INIT_59(256'hD3078753D30787538783070303838313E7831323139313239383270727072707),
    .INIT_5A(256'h13E7831323930353871337036F8313E78313239303538713370363D387133753),
    .INIT_5B(256'h132303938303270727072783070383836F6303938313E7831323038303831383),
    .INIT_5C(256'h538713370363D387133753D3078753D30787538783070303838313E783132393),
    .INIT_5D(256'h13E783132303830383138313E7831323930353871337036F8313E78313239303),
    .INIT_5E(256'h070303838313E783132393132303938303270727072783070383836F63039383),
    .INIT_5F(256'h37036F8313E78313239303538713370363D387133753D3078753D30787538783),
    .INIT_60(256'h2783070383836F6303938313E783132303830383138313E78313239303538713),
    .INIT_61(256'h53D3078753D30787538783070303838313E78313239313230393830327072707),
    .INIT_62(256'h8313E7831323930353871337036F8313E78313239303538713370363D3871337),
    .INIT_63(256'h13932303938383270727072783070383836F6303938313E78313230383038313),
    .INIT_64(256'h03538713370363D387133753D3078753D30787538783070303838313E7831323),
    .INIT_65(256'h8313E783132303830383138313E7831323930353871337036F8313E783132393),
    .INIT_66(256'h0303B3930303B313138383B3930303B313130303B31383036F838303B3039383),
    .INIT_67(256'h072753870703B31327538707275387072753870703B31327072707270703B393),
    .INIT_68(256'h5387072753870703B31327538707275387072753870703B31327538707275387),
    .INIT_69(256'h1383B313836383B39313836393038303836F939303B3138383B3932753870727),
    .INIT_6A(256'h931323232383B39303B393838327072707270783B393038303836F6323232323),
    .INIT_6B(256'h83B393138383639313838313EF13239393038303B38313838313E78313239313),
    .INIT_6C(256'h03B313830383676767676783038313838313E7831323036F63231383B3138363),
    .INIT_6D(256'h136303B3930303B3136303B3930303B31383B3138383B3936303B39303936393),
    .INIT_6E(256'h1383B3936313936F936F936F936F936303B3930303B313136303B3930303B313),
    .INIT_6F(256'h676783038313838313E783132313136F632323239303B393036303B313930363),
    .INIT_70(256'h938313838313E783132393139313136F632323232323232323231383B3138367),
    .INIT_71(256'h0303B303136303B3130303B3831383B3138383B3936303B3930393639383B303),
    .INIT_72(256'h13936F936F936F936F936303B3930303B313136303B3930303B313136303B393),
    .INIT_73(256'h038313838313E7831323931393139303836F63239383B3938367830383B39363),
    .INIT_74(256'hEF1323938313EF13239323136F136F6393639353078367676767678303830383),
    .INIT_75(256'h63136313D307838313EF1323938313EF132393136F136F639363935307838313),
    .INIT_76(256'h239303B39303639303B393036313830383038303836F938313EF1323936F936F),
    .INIT_77(256'h07270703B39383B39303B31303832727270793B703036F632323232323232323),
    .INIT_78(256'h8303838313E783132303830383138313E7831323139313232323239383270727),
    .INIT_79(256'h133783836F63231383B31383631383B31383639313032707270727070303B313),
    .INIT_7A(256'h23232323039383832707270727830703B39383B39383B3839303832727270307),
    .INIT_7B(256'h8713370363D387133753D3078753D30787538783070303838313E78313239313),
    .INIT_7C(256'hE783132303830383138313E7831323930353871337036F8313E7831323930353),
    .INIT_7D(256'h83038303830383036767676767830313032707270727070303B3138303838313),
    .INIT_7E(256'h232727271327D3D3072753530727535307D353B3838763138303830383038303),
    .INIT_7F(256'h0703272727830793B78313EF1323931323232323232323232323232323232323),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],DOUTADOUT}),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],DOUTBDOUT}),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[14] ),
        .ENBWREN(\addrb[14] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\douta[7] ,
    \doutb[7] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[7] ;
  output [7:0]\doutb[7] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[7] ;
  wire [7:0]\doutb[7] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[7:0][8192:12287]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8313838313E7831323139393030387133703B38313830793B713270727072783),
    .INIT_01(256'h3783836F63231383836313838303B31323030303B313270727072707030303B3),
    .INIT_02(256'h132393132323230393838327072707278307038383B383930383272727030713),
    .INIT_03(256'h239303538713370363D387133753D3078753D30787538783070303838313E783),
    .INIT_04(256'h03838313E783132303830383138313E7831323930353871337036F8313E78313),
    .INIT_05(256'h0383078707936F936393938313836F8313E78313230383132707270727078303),
    .INIT_06(256'h5353531313035387538753875307D307D38753D3330307830383038303676783),
    .INIT_07(256'h6F9363936F936313832707270727078383B393676383038303830383036783D3),
    .INIT_08(256'h03630393039383B39363232323232323232323232313936F9363936F93631383),
    .INIT_09(256'h83831383B393136F6F8313E78313230383138313E78313231393136F63239303),
    .INIT_0A(256'h63838383B3939363838383B3939363838383B39363838383B393030303B31363),
    .INIT_0B(256'h9313136F631383836F8313E783132313931383B3936393136F136F136F136F13),
    .INIT_0C(256'h6F136F639363935307836F8313E7831323038303830383138313E78313239313),
    .INIT_0D(256'h23938313EF132393136F136F639363935307838313EF1323938313EF13239313),
    .INIT_0E(256'h63830393838313EF1323938313EF132393136F136F639363935307838313EF13),
    .INIT_0F(256'h6F1363136F136393036F1363936F1363138383270727072783078383B3039367),
    .INIT_10(256'h038313E7831323139393030383136F8313E78313231393039303B31363239313),
    .INIT_11(256'h23232323239383676383038303830383036783038303830393838313E7831323),
    .INIT_12(256'h2783078383036F638303938313E783132313931393936F632323232323232323),
    .INIT_13(256'h8313E7831323130393836313936F936313836F9363936F936313838327072707),
    .INIT_14(256'h8313E78313230383038303938313E7831323038313E78313239313038383136F),
    .INIT_15(256'h03938313E783132393130303936F63232393836F630383936F93639393831383),
    .INIT_16(256'h3793678313E783132303038303936F936393130393838313E783132303830383),
    .INIT_17(256'h230793B79323038313EF132393230793B7138313EF132393138313EF13230713),
    .INIT_18(256'h6393679323038313EF13230793B79323038313EF13230793B79323038313EF13),
    .INIT_19(256'h932393138313EF132313932393138313EF1323238313EF132393232307133793),
    .INIT_1A(256'hEF1323238313EF132313932393138313EF1323238313EF1323238313EF132313),
    .INIT_1B(256'h0793B71363139323B30393039323832383238323832383238323832313138313),
    .INIT_1C(256'h13EF132313932393138313EF132313932393138313EF1323238313EF13239323),
    .INIT_1D(256'h2313138313EF1323238313EF132313932393138313EF1323238313EF13232383),
    .INIT_1E(256'h53D3536393036767936F931323B3039303932383238323832383238323832383),
    .INIT_1F(256'h1313272727D30303B313132727270303B31383B393538793B7D35353538793B7),
    .INIT_20(256'hB3131327272753D30303B31313272727D353D30303B3131327272753D30303B3),
    .INIT_21(256'h53878313EF13235327272327232323D387133753538713375367272727538383),
    .INIT_22(256'h232753071337D3D3071337D39383538753878313EF13235327878313EF132327),
    .INIT_23(256'h0383870707D38753878313EF13235327878313EF13232753878313EF13235327),
    .INIT_24(256'h53139323232323272387133787133793530793B7D30793B7D363930367830383),
    .INIT_25(256'h9303838713838793B70793B713538713375387133753838313E7831323D353D3),
    .INIT_26(256'h93B7538793B7536393036767830383076F136393130393838313E78313231393),
    .INIT_27(256'h87133753631393836F136393130393838313E783132313932323232323935387),
    .INIT_28(256'h676767830393836F136393130393838313E78313239323232303135387133753),
    .INIT_29(256'h23832313138313EF132393238383138313EF132393232323230793B713631383),
    .INIT_2A(256'h13138313EF132393238383138313EF132393230793B71363139323B303930393),
    .INIT_2B(256'h13EF132393238383138313EF132393230793B71363139323B303930393238323),
    .INIT_2C(256'h1323238383138313EF132393230793B71363139323B303930393238323131383),
    .INIT_2D(256'h93B71393639303830367676767678393031323B30393039323832313138313EF),
    .INIT_2E(256'hEF13238323832313138313EF132393238383138313EF13239323232323232307),
    .INIT_2F(256'h138313EF132393238383138313EF132393230793B79383B39323B30393038313),
    .INIT_30(256'h9323832313138313EF132393238383138313EF13230793B79323039323832313),
    .INIT_31(256'h93039323039323832313138313EF132393238383138313EF13230793B7932303),
    .INIT_32(256'h132393238383138313EF13239323230713379313631393838313E78313239313),
    .INIT_33(256'h13EF132393230713379383B39323B30393038313EF13238323832313138313EF),
    .INIT_34(256'h238383138313EF13230793B79323039323832313138313EF1323932383831383),
    .INIT_35(256'h83676767830393838313E7831323931393039323039323832313138313EF1323),
    .INIT_36(256'h03B38313631393838313E7831323139313232323232323938303B31363138303),
    .INIT_37(256'h936F23B30393038313EF13239313232363239303830303B38313632313938303),
    .INIT_38(256'h831323B30393038313EF1323931323236F23B30393038313EF13239313232363),
    .INIT_39(256'h1393838313E78313231393230393830303B38313631393836F8313E783132303),
    .INIT_3A(256'h93038313EF13239313232363239303830383B3039363239313030303B3831363),
    .INIT_3B(256'h93038313EF1323931323236F23B30393038313EF13239313232363936F23B303),
    .INIT_3C(256'hB39363930383038303676767676783038313836F8313E783132303831323B303),
    .INIT_3D(256'h8313EF13239313232363231383038303B3136323232323232323231393830383),
    .INIT_3E(256'h8313EF1323931323236F23B30393038313EF13239313232363136F23B3039303),
    .INIT_3F(256'h8303838313E783132313930313038303836F8313E783132303831323B3039303),
    .INIT_40(256'h2363136F23B30393038313EF13239313232363231383038383B3039363931303),
    .INIT_41(256'h2303831323B30393038313EF1323931323236F23B30393038313EF1323931323),
    .INIT_42(256'h93132323031303830303B38313631393838313E78313230383136F8313E78313),
    .INIT_43(256'h8313EF13239313232363231383038383B30393639313038303838313E7831323),
    .INIT_44(256'h8313EF1323931323236F23B30393038313EF13239313232363136F23B3039303),
    .INIT_45(256'h03B38313631393838313E78313230383136F8313E783132303831323B3039303),
    .INIT_46(256'h23B30393038313EF13239313232363231383038303B383136323231393838303),
    .INIT_47(256'h23B30393038313EF1323931323236F23B30393038313EF13239313232363136F),
    .INIT_48(256'h139323039303B38313631393838313E78313230383136F8313E7831323038313),
    .INIT_49(256'h07D38753870307133783930383038303836767676767830393838313E7831323),
    .INIT_4A(256'h83138313EF1323539323272727232327232323232327238793B7130713D38753),
    .INIT_4B(256'h63930303B3831363231393830327872707270723832313138313EF1323932383),
    .INIT_4C(256'h6F23B30393038313EF13239313232363936F23B30393038313EF132393132323),
    .INIT_4D(256'h23032303270713936F8313E783132303831323B30393038313EF132393132323),
    .INIT_4E(256'hEF132393238383138313EF1323539327232307133793870393839323B3039303),
    .INIT_4F(256'h13239313232363930303B3831363231393830327872787270723832313138313),
    .INIT_50(256'h1323931323236F23B30393038313EF13239313232363936F23B30393038313EF),
    .INIT_51(256'h8323B383130323032303270713936F8313E783132303831323B30393038313EF),
    .INIT_52(256'h2313138313EF132393238383138313EF13235393272323071337938783130313),
    .INIT_53(256'h93038313EF13239313232363930383B303936323931303032707270727072383),
    .INIT_54(256'h93038313EF1323931323236F23B30393038313EF13239313232363936F23B303),
    .INIT_55(256'h83672303938323B383130323032303270713936F8313E783132303831323B303),
    .INIT_56(256'h538703071337D3538707D3538707D30787035387030713378393930383038303),
    .INIT_57(256'h232327232323230793B713D307D3538703071337D307D3D30703871337538753),
    .INIT_58(256'h27072707270723832313138313EF132393238383138313EF1323539323272727),
    .INIT_59(256'h232363936F23B30393038313EF13239313232363930383B30393632393130303),
    .INIT_5A(256'h132303831323B30393038313EF1323931323236F23B30393038313EF13239313),
    .INIT_5B(256'h038303830383038303836723039323B303930323032303270713936F8313E783),
    .INIT_5C(256'h53D3071337231323132323230383230323032303230323830383038303830383),
    .INIT_5D(256'h23238313EF1323932323232323232323232323232323232323230793B7138327),
    .INIT_5E(256'h23238313EF1323238313EF132313932393138313EF132313932393138313EF13),
    .INIT_5F(256'h8323832383238323832313138313EF1323238313EF132313932393138313EF13),
    .INIT_60(256'hEF13239323230793B71383038313EF1323139383038313EF1323832383238323),
    .INIT_61(256'hEF1323238313EF132313932393138313EF132313932393138313EF1323238313),
    .INIT_62(256'h83238323832313138313EF1323238313EF132313932393138313EF1323238313),
    .INIT_63(256'h23230793B71383038313EF1323139383038313EF132383238323832383238323),
    .INIT_64(256'h8313EF132313932393138313EF132313932393138313EF1323238313EF132393),
    .INIT_65(256'h832313138313EF1323238313EF132313932393138313EF1323238313EF132323),
    .INIT_66(256'h132323038313EF1323139383038313EF13238323832383238323832383238323),
    .INIT_67(256'hE783132303936F23038363138313E78313232303938313E7831323038313E783),
    .INIT_68(256'h23938313EF1323938313EF13239323038313EF1323938313E783132303938313),
    .INIT_69(256'h8313EF1323938313EF13239303838313EF1323938313EF13239303838313EF13),
    .INIT_6A(256'h03838313E7831323039313938313E783132303938313EF1323938313EF132393),
    .INIT_6B(256'h6F23B30393038313EF13239313232363239303830303B3831363231393830383),
    .INIT_6C(256'h1323B30393038313EF1323931323236F23B30393038313EF1323931323236393),
    .INIT_6D(256'h132303938313E7831323031383838313E78313230383136F8313E78313230383),
    .INIT_6E(256'hB3831363139383838313E783132393038313038327072707270307838313E783),
    .INIT_6F(256'h6F8313E78313230363136F8313E78313230363138363D387830793B763138303),
    .INIT_70(256'h83132393130303936F632393836763038393138313E7831323038393136F6F6F),
    .INIT_71(256'h13231393678313E78313230303830393938313E78313230383038303938313E7),
    .INIT_72(256'h2323232323232323232313139313931393138313EF132393230793B7138313EF),
    .INIT_73(256'h8313EF132393230793B7138313EF132393230793B7138313EF13239313939323),
    .INIT_74(256'hEF1323931323231393138313EF132393230793B7138313EF132393230793B713),
    .INIT_75(256'h0793B7138313EF132383138313EF1323931323230393138313EF132383138313),
    .INIT_76(256'h0793B7138313EF132393230793B7138313EF132313932393138313EF13239323),
    .INIT_77(256'h0793B7138313EF132393230793B7138313EF132313932393138313EF13239323),
    .INIT_78(256'h2393138313EF132393230793B7138313EF132393230793B7138313EF13239323),
    .INIT_79(256'h0793B7138313EF132393230793B7138313EF132313932393138313EF13231393),
    .INIT_7A(256'h93B7138313EF132393230793B7138313EF132393230793B7138313EF13239323),
    .INIT_7B(256'hB7138313EF132393230793B7138313EF132393230793B7138313EF1323932307),
    .INIT_7C(256'h8313EF1323931393932383231393138313EF13232393138313EF132393230793),
    .INIT_7D(256'h2383138313EF132393230793B7138313EF132393230793B7138313EF13239313),
    .INIT_7E(256'h8313EF13232393138313EF13239323230793B71323832313138313EF13231393),
    .INIT_7F(256'h132313932393138313EF13239313939323232713130713379313932383231313),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[7] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[7] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(\addrb[15] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10
   (\douta[31] ,
    \doutb[31] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[31] ;
  output [7:0]\doutb[31] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[31] ;
  wire [7:0]\doutb[31] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[31:24][0:4095]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h3FBE3CBD4E4C384141403E433E413E3D413BC03DC3433E3F430D000000000000),
    .INIT_01(256'h180009000118000900000003A000090058001000001000100000BF3F3C43C340),
    .INIT_02(256'h0000100000000000100000000000100000000000100000100000100000090001),
    .INIT_03(256'h000101FE770100000101FE790100000101FE7B01000000000000000000010100),
    .INIT_04(256'h00080002FD7002020001FE10020020000101FE250100001000080001FE760100),
    .INIT_05(256'h001002001001000800000010000800100102FD0A020220020202FD1F02020210),
    .INIT_06(256'h0000080000000008000001001020002000001020002000000900000000100008),
    .INIT_07(256'h0000002000FF760100001000080000FF5A000000FF5A00000000000000000800),
    .INIT_08(256'h000100000000100101FE6F010020000001FE0501002000001000080000FF5601),
    .INIT_09(256'h0000FF6601002000000000FF7B000000000000000001FE4C01000000100101FE),
    .INIT_0A(256'h02002000000001FE7201002000000001FE6101002000000001FE770100200000),
    .INIT_0B(256'h000000101020081010100010101010001010100810001010000110010101FE5D),
    .INIT_0C(256'h1000080000001010001010101000001010001010101000001010001010101000),
    .INIT_0D(256'h1000101010100008000010001010001010101000080000001000101000101010),
    .INIT_0E(256'h01000001FE1E01000000FF1F010000000000FF00FF2200000000000000100010),
    .INIT_0F(256'h160200000101FE180200000101FE1A02000001FE02010000000009000001FE1C),
    .INIT_10(256'h0E0202000102FD100202000102FD1202020001FE7A02000000090000000101FE),
    .INIT_11(256'h020202FD6E020200020009000000000001A00202FD0C020202000900000102FD),
    .INIT_12(256'h02000203FC0003020202FD6703020000090000000202FD040302000202FD0603),
    .INIT_13(256'hFC770302020800010003FC5F03020000090000000203FC7C0302000203FC7E03),
    .INIT_14(256'h00000000031000080003FC71030200031000080003FC74030200031000080003),
    .INIT_15(256'h000100010001000300020202020302020003FC51030200020200090000020000),
    .INIT_16(256'h00090001A000090003A000090007A0000900001A000000000000000000000001),
    .INIT_17(256'h0001A000090003A000090007A000090000000009000118100009000100090001),
    .INIT_18(256'hA000090003A000090007A0000900000000090001181000090001000900010009),
    .INIT_19(256'hBA03020000000000020002000400000900011810000900010009000100090001),
    .INIT_1A(256'h01FE0000010000000000010000030000000003FCF803020301020001000003FC),
    .INIT_1B(256'h0000000003000100000001000001FE0000010000000000030000000000000000),
    .INIT_1C(256'h0100000001000001FE000002000000000003000100000001000001FE00000100),
    .INIT_1D(256'h0100FF000002FF00FF270100000000000FFF000000FF00FF2A00000000000000),
    .INIT_1E(256'hFE1D0200000000010A01FE060100FF000102FF01FE220100000000001000FF0B),
    .INIT_1F(256'h000000010001000001000102FDEC0202000000010301FE010200FF000102FF01),
    .INIT_20(256'hFF0D0000000C0000FF750000FF0002FF00FF1100000000000000000000000000),
    .INIT_21(256'h01000000000200FF6D0100FF0002FF00FF090100000700FF710000FF0002FF00),
    .INIT_22(256'h630100FF0002FF01FE7F01000000000067000000FF000000000000000001FED9),
    .INIT_23(256'h0001000102FDCA02020000000201FE5F0200FF0002FF01FE7A020000070001FE),
    .INIT_24(256'h000000010000000002000102FDDE0202000200010302FD590202000102FF0000),
    .INIT_25(256'h4B0100FF0002FF01FE670100000B00FF4F0100FF0002FF00FF6B010000000100),
    .INIT_26(256'h000001000101FEB301000000000201FE470100FF0002FF01FE630100000701FE),
    .INIT_27(256'hFD550202000701FE3D0200FF0002FF01FE590200000000000000000000FF0000),
    .INIT_28(256'h00000000010000FF000001000202FDA502020002000202FD390202FF0002FF02),
    .INIT_29(256'h00000100000000000001A0000000000900010111A00009000000000000000000),
    .INIT_2A(256'h00000000000005A0200010000000000000180000000800200000000000000000),
    .INIT_2B(256'h03A00009000010000000100000100000010000000000000000000001A0200010),
    .INIT_2C(256'h0000000010000110001000011010000110000000000018200010000010001000),
    .INIT_2D(256'h0010000110001000011010000110000010000210001000021000100002100020),
    .INIT_2E(256'h0000001000070000100002001010001000020010101000020010100020000000),
    .INIT_2F(256'h2000010000000000000111A000090001FEE80100202020000000000000000000),
    .INIT_30(256'h00080009000000000102FDDE0202202020000100000001FEEA02002020202020),
    .INIT_31(256'h0000000000010000000000000000180800200000015803A00009000810011001),
    .INIT_32(256'hFE0000010000000000000000000000000E000008000100080001000800010000),
    .INIT_33(256'h000100010001000000000000040001FE000001000100010000000000000A0001),
    .INIT_34(256'h03A000090000100000001000001000000108000000000000000000000001FE00),
    .INIT_35(256'h0105A02000100000011000080000000000000000000018200010000010001000),
    .INIT_36(256'h2000100000011000080012000000000000000001A00009000003A02000100000),
    .INIT_37(256'h000001100108010A000000000000000001A00009000003A020001000000105A0),
    .INIT_38(256'h0000000000000000000000000001A00009000103A020001000000105A0200010),
    .INIT_39(256'h01FE940100000000000000100000100010000FA0000900000000000000000000),
    .INIT_3A(256'h0058020000100100085802000105A00009000810001000000800090000000001),
    .INIT_3B(256'h090008101000001000001000100009A000090000000000000000000000100100),
    .INIT_3C(256'h000200000000000001000000000000001001005801001001085800000105A000),
    .INIT_3D(256'h00000000000010000001A0000009000200000000000000000000000000000000),
    .INIT_3E(256'h01A000000900010009A0000900000000FF090000000000000900000000000000),
    .INIT_3F(256'h0000000009000100180000090000002000000001000000000001000000000000),
    .INIT_40(256'h000000200000000100000000000100000000000001A000000900010009A00009),
    .INIT_41(256'h000100000000000001A000000900010009A00009000000000900010018000009),
    .INIT_42(256'h0000000000000900000000000900010018000009000000200000000100000000),
    .INIT_43(256'h180001001800090005A00009000010000100001000010010000100000000FF64),
    .INIT_44(256'h000000FF56000000000000090000000000090001002018000100201800010020),
    .INIT_45(256'h0000000000201000010020100001002010000100000000FFBA01000000000000),
    .INIT_46(256'h100007000010000200100002000008100007000010000200100002000B000000),
    .INIT_47(256'h0000000000001800090001A00009000008100007000010000200100002000008),
    .INIT_48(256'h000000040008000000000101FEAC01000000000004000001000000000000001E),
    .INIT_49(256'h0000000E00FF000000000101FED801000000000003000000000101FECD010000),
    .INIT_4A(256'h0101FEBE0200000000020007000001000101FE9E020000000002000000000000),
    .INIT_4B(256'h02000000100000000000000000FF000001000101FECA02000000000300000100),
    .INIT_4C(256'h1000001000100000000001020001000000080001000008000100000800010000),
    .INIT_4D(256'h000000FF000000000800090000010001FEF80100000000000000050000060000),
    .INIT_4E(256'h00000001A020000103A020000105A02000010800000800010800010800010000),
    .INIT_4F(256'h01A0000900010010000010001000010800000100000000000001020000000000),
    .INIT_50(256'h080009000000000000FFDE000000000000000000000000000001000000000000),
    .INIT_51(256'h0000FF0000000000000000000000000000000100000000000001A00009000100),
    .INIT_52(256'hA020000105A02000010800000000000001000008000108000108000100000000),
    .INIT_53(256'h100010000108001300010000000000000102000000000000000001A020000103),
    .INIT_54(256'h202000000A000000000000000000000100000000000001A00009000100100000),
    .INIT_55(256'h000000000100000000000001A00009000100080009000000000102FDBB020220),
    .INIT_56(256'h02FDB90202000200000000000100000000FF0000010000010800000000000000),
    .INIT_57(256'h00000001FF000100000000010101010202000000000000000100000000020200),
    .INIT_58(256'h0302010000010000000000000001000800010008000100080001000001000001),
    .INIT_59(256'h0200000000001000001000100003A00000090004000702FD0000020200000000),
    .INIT_5A(256'h00010000010001040000000001A000070002000000000202FD00000202000000),
    .INIT_5B(256'h0000FF0000000010000000100000000010000000000700000001000001000000),
    .INIT_5C(256'h0003FC00000302000002020200020003FC8D0302212020200202020000010008),
    .INIT_5D(256'h000000000000000100000000000000FF00000000000000000001000001000000),
    .INIT_5E(256'h01FE000001000000000000000000000000FF000000000001160001FE00000100),
    .INIT_5F(256'h00000001080001FE000002000000000000000000000000FF0000000000010E00),
    .INIT_60(256'h00000000000000000001000002FD000002020000000000000000000000FF0000),
    .INIT_61(256'h00010001000101000006000001FF000001000000000101010102020200000000),
    .INIT_62(256'hFD00000202000000000300000000000008000100080001000800010000010028),
    .INIT_63(256'h02FD000002020000000200000000001000001000100003A00000090004000702),
    .INIT_64(256'h0E0002FD0000020200000000000000120000FF000015A0000100070017000000),
    .INIT_65(256'h0000000000060000FF0000080002FD00000202000000000000000C0000FF0000),
    .INIT_66(256'h0000000000000000000000000002FD00000202000000020002FD000002020000),
    .INIT_67(256'hFF00000E0002FD0000020200000000000000120000FF00000000010100010000),
    .INIT_68(256'h0200000000000000060000FF0000080002FD00000202000000000000000C0000),
    .INIT_69(256'h0000000001010001000000000000000002FD00000202000000020002FD000002),
    .INIT_6A(256'h0800010008000100080001000001000001FF0001000000000101010102020202),
    .INIT_6B(256'h0404000000000000040502020200000011030202030200000000010101000000),
    .INIT_6C(256'h040104030303000000040004FB000004040401040303030000000A0004FB0000),
    .INIT_6D(256'h040000000204FB0000040400000002000500000000000000000004FB00000404),
    .INIT_6E(256'h000115A0000900000100000201020002000000010000020003040004FB000004),
    .INIT_6F(256'h000700000404040404FF000200001000000010000000011000010000070013A0),
    .INIT_70(256'h05040000000005FA00000604000204050500020005FAEE060420202000000002),
    .INIT_71(256'h0000FF0000000000000002010200020000000004000003000400050000050001),
    .INIT_72(256'h000000000000FF00000100000101FE0000010000000000000000000100000000),
    .INIT_73(256'h02000000000000000000000000FF00000100000101FE00000200000000000000),
    .INIT_74(256'h000202FD00000202000002000000000000000000FF00000100000102FD000002),
    .INIT_75(256'h0100000000000001060001FF0000010000000001010101020202020000000001),
    .INIT_76(256'h00000002000B00FF000203FC0000030200000003000000001000FF0011020203),
    .INIT_77(256'h020003FC000003020000010100000002000600FF000203FC0000030200000101),
    .INIT_78(256'h02000000110300000800010008000100080001000001002E03FC000003020101),
    .INIT_79(256'hFB000004040401030303030000000A0004FB0000040400000000000004030202),
    .INIT_7A(256'h000002000500000000000000000004FB00000404040103030303000000040004),
    .INIT_7B(256'h001000FF000213A00000000013000004FB000004040000000204FB0000040400),
    .INIT_7C(256'h0004040000010100000002000B00FF000204FB00000404000000010100000002),
    .INIT_7D(256'hFB000004040101020004FB000004040000010100000002000600FF000204FB00),
    .INIT_7E(256'h050400000004010100000002000C00FF000C04060000FF000000020000020004),
    .INIT_7F(256'h000005040101040004FB000005040000010100000002000600FF000404FB0000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[31] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[31] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(\addrb[15] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (\douta[31] ,
    \doutb[31] ,
    clka,
    \addra[14] ,
    \addrb[14] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[31] ;
  output [7:0]\doutb[31] ;
  input clka;
  input \addra[14] ;
  input \addrb[14] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[14] ;
  wire [11:0]addrb;
  wire \addrb[14] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[31] ;
  wire [7:0]\doutb[31] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[31:24][4096:8191]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h02000B00FF00040DA0000000000E000004FB00000504000000040100011204FB),
    .INIT_01(256'hFB000005040000010100000002000600FF000404FB0000050400000101000000),
    .INIT_02(256'h01000000000001010101020202000000010200040004FB000005040101040004),
    .INIT_03(256'h030302020302020000010001000100000000010000000000020001000001FF00),
    .INIT_04(256'h00000000020000000010000001A00000090002000603FC000003020000000000),
    .INIT_05(256'h0115A0000900000100000202020002000000010000030003040003FC00000302),
    .INIT_06(256'h0700000404040202FF000200001000000010000000011000010000070013A000),
    .INIT_07(256'h040000000004FB00000504000203040400020004FBB605042020200000000300),
    .INIT_08(256'h00FF000000000000000202020002000000000300000300030004000004000104),
    .INIT_09(256'h0000000000FF00000100000101FE000001000000000000000000010000000000),
    .INIT_0A(256'h000000000000000000000000FF00000100000101FE0000020000000000000000),
    .INIT_0B(256'h0202FD00000202000002000000000000000000FF00000100000102FD00000202),
    .INIT_0C(256'h020100000000000001060001FF00000100000000010101010202000000000100),
    .INIT_0D(256'h010100000001000B00FF000202FD0000030200000003000000001000FF001102),
    .INIT_0E(256'h0101020002FD000003020000010100000001000600FF000202FD000003020000),
    .INIT_0F(256'hFD0000030200000000000303000000010000000000020001002102FD00000302),
    .INIT_10(256'h0013000002FD0000030200000000020000000010000001A00000090002000602),
    .INIT_11(256'h000B00FF000202FD00000302000000010100000001001000FF000213A0000000),
    .INIT_12(256'h000003020000010100000001000600FF000202FD000003020000010100000001),
    .INIT_13(256'h01000C00FF000C02060000FF000000020000020002FD000003020101020002FD),
    .INIT_14(256'h0003020000010100000001000600FF000303FC00000302000000020101000000),
    .INIT_15(256'h000000000E000003FC0000030200000200011203FC000003020101030003FC00),
    .INIT_16(256'h00000001000600FF000303FC000003020000010100000001000B00FF00030DA0),
    .INIT_17(256'h01010102000000010200020003FC000003020101030003FC0000030200000101),
    .INIT_18(256'h00000000000000000C00FF000D00000006240100FF0000000000060000000001),
    .INIT_19(256'h010002FD000002020000010000000001000600FF000102FD0000020200000000),
    .INIT_1A(256'h0DA0000000020E000002FD0000020200000002000000001302FD000002020100),
    .INIT_1B(256'h0000000001000600FF000102FD00000202000000010000000001000B00FF0001),
    .INIT_1C(256'h000002FD00000202000000000002FD000002020100010002FD00000202000001),
    .INIT_1D(256'h0001080001000800010008000100000000000000000001A000060003A0000700),
    .INIT_1E(256'h0002100002000010000700001000021000020A00000000000010000110000110),
    .INIT_1F(256'h0800000000008B00000001000010000700001000021000020000100007000010),
    .INIT_20(256'h0900010009000100090001A000090003A0000900000000FFFF00000000090000),
    .INIT_21(256'h0200000200000200000000000020000100200001002000010200000000002000),
    .INIT_22(256'h000800010000000001A00800040010000300D0C0100004000800010010000000),
    .INIT_23(256'h000002000900010005000000020000000001A00800040010000300D0C0100004),
    .INIT_24(256'h0005000000100005001000FF1000000010000400000600000000050001000900),
    .INIT_25(256'h1000050008D0C0180004005800101008000100080001000A0000001008000900),
    .INIT_26(256'h580001080001002000000010000500080009000000100005001000FF17000000),
    .INIT_27(256'hFE2A010020180400060001A00000000020000600001010105800010800010010),
    .INIT_28(256'h060001A00020000006001058000108000100000008D0C0180005001000050001),
    .INIT_29(256'h000810080100070000050008D0C0180005001000050001FE1F01002020180400),
    .INIT_2A(256'h0101010202020000000018000400100005000000090001A00009000810080007),
    .INIT_2B(256'h0002030202020203000000000000000100000000060000000100290000000001),
    .INIT_2C(256'h000003190000000000000001A000060003A0000700000303FC00000402000000),
    .INIT_2D(256'h10000000100000100000010002120003FC000004020002000200160002000003),
    .INIT_2E(256'h0000100000000105A00009001000100000001000001000000100101001000200),
    .INIT_2F(256'h0000000000000000000000011000101005A00009000000001000000000100000),
    .INIT_30(256'h0001000001010101020202020303030304040404050500000000010001FF0000),
    .INIT_31(256'h0405040505040505030303020202020300000000000000060001007800010001),
    .INIT_32(256'h0C00000000000001A000060003A0000700000606F90000070600000000060607),
    .INIT_33(256'h1005101005A000090020001000000010000010000500050000000000060006FF),
    .INIT_34(256'h0606060600001005000100000004000004000000000000000000000004100005),
    .INIT_35(256'h09000100090001A000090003A000090000000500FFFF0000000300090000040A),
    .INIT_36(256'h0000080600030200200001002000010003200001020006000000200009000100),
    .INIT_37(256'h000000020000060006000004000707F8000008060207000000000003000307F8),
    .INIT_38(256'h000200000001000000000B0000000001A0000107000700000000000000000300),
    .INIT_39(256'h0000000000030000000100100000100000100010070003000000000000000000),
    .INIT_3A(256'h0010000000001000000000100000100010000000100000100003000500030000),
    .INIT_3B(256'h100000001000001000050003120008F700000808000006010002001005000100),
    .INIT_3C(256'h1000000000100002000405A00009002000100000001000001000000510072000),
    .INIT_3D(256'h0100030000000000000000000000041007101005A00009000000001000000000),
    .INIT_3E(256'h0500030008F70000080800050707FF000008F70000080800FF00010000000000),
    .INIT_3F(256'h080002050001000600100800010700090006060000000600FF000100060009A0),
    .INIT_40(256'h00010000000000060000000001010101020202020303030000000008F7000008),
    .INIT_41(256'h00060003A0000700000303FC0000040200000000020302020202030001000000),
    .INIT_42(256'hFF0000000200090000020A0200000002000003000003000000000000000001A0),
    .INIT_43(256'h02000600000020000900010009000100090001A000090003A0000900000000FF),
    .INIT_44(256'h010004FB0000040401010304FB00000404020200200001002000010002200001),
    .INIT_45(256'h09000101A000090020001000000010000010000000020C0004FB000004040100),
    .INIT_46(256'h0202020203030000000010000000001000000000100000000010000103100000),
    .INIT_47(256'h0000000100000900001000000010000010000000000100510000000001010101),
    .INIT_48(256'h04FB0000050400000504050302030202020302010018000200000100001DA000),
    .INIT_49(256'h0200030005FA0000050403030405FA0000050404030004000004000004150000),
    .INIT_4A(256'h020009000101A000090020001000000010000010000200020C0005FA00000504),
    .INIT_4B(256'h00180002000001001D0000001000000000100000000010000100011000010410),
    .INIT_4C(256'h03000500000400000415000005FA000005040000050405030203020202030401),
    .INIT_4D(256'h000200020C0005FA000006040200030005FA0000060403030505FA0000060404),
    .INIT_4E(256'h000010000100011000010510050009000101A000090020001000000010000010),
    .INIT_4F(256'h00100000001000001000000000000001001000FF010000001000000000100000),
    .INIT_50(256'h0000180002000000000406F9000006060000180002000000000005A004000900),
    .INIT_51(256'h070000000000000000000000000001010000000000000001FF0506F900000606),
    .INIT_52(256'h010002FD00000202000100020702FD0000020200000002FF0000000000000000),
    .INIT_53(256'h0202000100020702FD0000020200000200FF0000000000000001000100010800),
    .INIT_54(256'h0702FD0000030200000200FF0000000000000001000100010800010002FD0000),
    .INIT_55(256'h0200000200FF0000000000000001000100010800010002FD0000030200010002),
    .INIT_56(256'h0000000000000001000101010000010003FC00000302000100020703FC000003),
    .INIT_57(256'h01000100010100000001010101020000000100030703FC0000030200000200FF),
    .INIT_58(256'h0013010202030202000000000001000000000100000000000100000000000000),
    .INIT_59(256'h1000000010000010000100001D0303FC0000030200000003FF00000000000000),
    .INIT_5A(256'hFC000003020001180002001D0303FC000003020001180002001D03A000090000),
    .INIT_5B(256'h000201FF0002000000000002000200021400030003FC00000302010201030703),
    .INIT_5C(256'h180002001D03A0000900001000000010000010000100001D0303FC0000040200),
    .INIT_5D(256'hFC00000402010201030703FC000004020001180002001D0303FC000004020001),
    .INIT_5E(256'h00001D0304FB0000040400000201FF0002000000000002000200021400030003),
    .INIT_5F(256'h001D0304FB000004040001180002001D03A00009000010000000100000100001),
    .INIT_60(256'h0002000200021400030004FB00000404010201030704FB000004040001180002),
    .INIT_61(256'h001000000010000010000100001D0404FB0000040400000401FF000200000000),
    .INIT_62(256'h04FB000004040001180002001D0304FB000004040001180002001D03A0000900),
    .INIT_63(256'h00000401FF0002000000000002000201021400030004FB000004040102010407),
    .INIT_64(256'h01180002001D03A0000900001000000010000010000100001D0404FB00000404),
    .INIT_65(256'h04FB00000404010201040704FB000004040001180002001D0304FB0000040400),
    .INIT_66(256'h0100000001000000000100000001000000FF010000000000E100000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000160000000000180000000001C80000000000010000000000000000),
    .INIT_6A(256'h00000000000000000000000001000000000000000000010001010C0000000001),
    .INIT_6B(256'h0000000000000600000001FEB6020000000101000001000001FE000002000000),
    .INIT_6C(256'h0000000000000000000000000000000102FD0000020200020000000000000004),
    .INIT_6D(256'hFF06000100000001000800010000000100000100000000003800010000003A00),
    .INIT_6E(256'h0000000009000000000000000000000000010000000100000200010000000100),
    .INIT_6F(256'h0000000000000000FF0000010000000200000000000000000006000000000008),
    .INIT_70(256'h0002000002FD0000020200000000000300000202000000000100000000000000),
    .INIT_71(256'h0000000100080000000000000100000000000000001600000000001800000002),
    .INIT_72(256'h000000000000000000000000000000000000000200000000000000FF06000000),
    .INIT_73(256'h0002000202FD0000030200000000000101030002000000000000000000000000),
    .INIT_74(256'h5200000200FF69000000000F0000000000000FC0000000000000000001010201),
    .INIT_75(256'h0000000FC0000000FF4C00000200FF630000000F0000000000000FC0000000FF),
    .INIT_76(256'h010000000000360000000000380000000001010101470000FF5D00000F000000),
    .INIT_77(256'h0000000001000001000000000001000000000900000110000200000000000000),
    .INIT_78(256'h02010203FC00000302000202030703FC0000030200000002020302FF00000000),
    .INIT_79(256'h090000011D000200000000002000000000002200000200000000000001000000),
    .INIT_7A(256'h0402020200FF0001000000000001000000000000000000010000010000000100),
    .INIT_7B(256'h0002001D03A0000900001000000010000010000300001D0404FB000004040000),
    .INIT_7C(256'h00000404000303040704FB000004040000180002001D0304FB00000404000018),
    .INIT_7D(256'h02020203030303040000000000000000030000000000000100000003010204FB),
    .INIT_7E(256'h010000000000001000000010000000100010D04000003F000000000101010102),
    .INIT_7F(256'h00040000000400090005FA8C0504000005040404020203020303020300000101),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[31] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[31] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[14] ),
        .ENBWREN(\addrb[14] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12
   (\douta[31] ,
    \doutb[31] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[31] ;
  output [7:0]\doutb[31] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[31] ;
  wire [7:0]\doutb[31] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[31:24][8192:12287]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h03000405FA000005040000000303000900000003000400090000000000000004),
    .INIT_01(256'h0000011B00040000001E00000000000000030100000000000000000004000000),
    .INIT_02(256'h0606000004040401FF0002000000000002000000000002000001000000020009),
    .INIT_03(256'h060001180002001D03A0000900001000000010000010000500001D0506F90000),
    .INIT_04(256'h010506F900000606010505050706F9000006060001180002001D0306F9000006),
    .INIT_05(256'h00030000000000FF00000003FF040006F9000006060105000000000000000200),
    .INIT_06(256'h20202000FF0000001000000010000000100010D0400000000000010101000000),
    .INIT_07(256'h0200000003000100000000000000000000010000010000000001010101000021),
    .INIT_08(256'h0007000000000000000902020200000000000000010000000000000100010000),
    .INIT_09(256'h00000000010000170003FC0000030201020003FC000003020000000201020000),
    .INIT_0A(256'h01000000010000030000000100FF050000000100070000000100000000010015),
    .INIT_0B(256'h00000003010000000703FC000003020000000000000300000000000000000000),
    .INIT_0C(256'h0000000000000FC000020003FC000003020100010001020003FC000003020000),
    .INIT_0D(256'h020203FC200302000F0000000000000FC0000203FC0F03020203FC260302000F),
    .INIT_0E(256'h000002000203FC0403020003FC1A0302000F0000000000000FC0000203FC0903),
    .INIT_0F(256'h0000000001000000000200000003000000010000000000000200000000010000),
    .INIT_10(256'h0003FC00000302000000010000000303FC000003020000010000000002020000),
    .INIT_11(256'h0000000001FF000001000000000101010100000000010001000303FC00000302),
    .INIT_12(256'h000200000002110000030003FC00000302000000000003010202020203000000),
    .INIT_13(256'h03FC000003020002000002000000000000000100000002000000020000000000),
    .INIT_14(256'h03FC0000030200010201020003FC000003020103FC0000030200000101010003),
    .INIT_15(256'h030003FC00000402000000010003000202FF000C0000030000FF000000000002),
    .INIT_16(256'h00000003FC00000402000201010000FF00000003000303FC0000040200010102),
    .INIT_17(256'h0000090000000000FF3F000000000009000000FF400000000000FF4300000009),
    .INIT_18(256'h2E000000000000FF37000000090000000000FF39000000090000000000FF3C00),
    .INIT_19(256'h0000000001FE2C0100000000000000FFEB01000000FF32000000000000090000),
    .INIT_1A(256'hDF02020202FD240202000000000001FEE302000001FEE501000001FE2A010000),
    .INIT_1B(256'h000900001600FF000000000000000000000001000100010001000200020002FD),
    .INIT_1C(256'hFC130302000002000003FC160302000002000002FDD503020202FD1B02020002),
    .INIT_1D(256'h00020004FBC904040404FB0E0404000002000003FCCD04020203FCCE03020203),
    .INIT_1E(256'h001010120000000000D200FF0000000002000002000200030003000300030004),
    .INIT_1F(256'h0005000000200000000002000000000000000000001800090018185800000900),
    .INIT_20(256'h0000050000002020000000000200000020202000000000000000002020000000),
    .INIT_21(256'h100101FE5A020020000000000100001800090058000003001000000000200000),
    .INIT_22(256'h02021800090058000003001000011001180202FD35020220020102FD24020200),
    .INIT_23(256'h00020001021002180303FC2B030220020303FC1A030202100003FC5003022002),
    .INIT_24(256'h200000000000000001000900000900000800020010000200D012000000000000),
    .INIT_25(256'h000000000001000900000900000000030010000200D00101FE00000100212020),
    .INIT_26(256'h020010000200D010000000000000010000FF00000000FF0101FE000001000000),
    .INIT_27(256'h000200D00800000000FF00000000FF0101FE0000010000000000000001000800),
    .INIT_28(256'h0000000000000100FF00000001FF0102FD000002020000000000000800020010),
    .INIT_29(256'h000100000001FE2D0100000000000001FE310100000000000100090000240000),
    .INIT_2A(256'h000001FE240200000000000001FE2801000000000900001A00FF000000000000),
    .INIT_2B(256'hFD1B0202000200000002FD1F02020000000900001200FF000000000100000100),
    .INIT_2C(256'h03020200000002FD1702020002000900000800FF000000000100000200000002),
    .INIT_2D(256'h0900000740000000000000000000000000FF000000000200000200000002FD13),
    .INIT_2E(256'h03020001000100000001FE060200000000010001FE0A01000000000000000100),
    .INIT_2F(256'h0002FD7C0202000200010002FD000202000000090000000000000000000001FE),
    .INIT_30(256'h00000200000002FD750202000200010002FD790202000900001C010000020000),
    .INIT_31(256'h0000071C0100000200000002FD6E0302000200010002FD720202000900001C01),
    .INIT_32(256'h0302000200010003FC67030200020200090000071C00FF0002FD000003020000),
    .INIT_33(256'hFC5D0402000200090000000000000000000203FC60030203000300000003FC63),
    .INIT_34(256'h0400010004FB560404000900001C0300000300000004FB590404000200010003),
    .INIT_35(256'h000000000000FF0204FB0000040400000000071C0300000400000004FB520404),
    .INIT_36(256'h000001002E00FF0101FE00000100000000000000000001FF0000000034000000),
    .INIT_37(256'h0008000002000202FDB302020000020204000000000000000000100000FF0000),
    .INIT_38(256'h01FF000002000202FDDF02020000020203000002000202FDD402020000020204),
    .INIT_39(256'h00FF0202FD0000030200000200FF0000000001001A00FF010002FD0000020200),
    .INIT_3A(256'h000303FC9A04020000020204020000000000000000100200FF00000000010014),
    .INIT_3B(256'h000303FCC504020000020203000003000303FCBA040200000202040008000003),
    .INIT_3C(256'h0000640000000001010000000000000001FF020003FC000004020003FF000003),
    .INIT_3D(256'h02FD8203020000020205020000000000000010000000000000000100FF001D00),
    .INIT_3E(256'h02FDAD03020000020203000002000202FDA20302000002020500080000020002),
    .INIT_3F(256'h011D0102FD00000302000001FF00011D010002FD000003020102FF0000020002),
    .INIT_40(256'h02040008000003000303FCEC030200000202040200000000000001001000FF00),
    .INIT_41(256'h020102FF000003000303FC9703020000020203000003000303FC8C0302000002),
    .INIT_42(256'h0000020201FF00011D000000003600FF0003FC000003020001070003FC000003),
    .INIT_43(256'h04FBD2050400000404040400000000000001001000FF00011D0304FB00000404),
    .INIT_44(256'h04FBFD05040000040403000004000404FBF20504000004040400080000040004),
    .INIT_45(256'h000000001C00FF0304FB000005040003070004FB000005040104FF0000040004),
    .INIT_46(256'h000005000506F9BB0606000004040404000000000000010010040400FF00011D),
    .INIT_47(256'h000005000506F9E606060000040403000005000506F9DB060600000404040008),
    .INIT_48(256'h0000060007000000000400FF0406F9000006060005070006F9000006060105FF),
    .INIT_49(256'h002000080001000900000000000001010100000000000000FF0606F900000606),
    .INIT_4A(256'h030003FC26030220000202020202020000000000000000000900000000200020),
    .INIT_4B(256'h04000000000200100200FF0003000200020003000300000003FC210402000200),
    .INIT_4C(256'h03000004000404FBB0040400000404040008000004000404FB8F040400000404),
    .INIT_4D(256'h00010003000100000004FB000004040203FF000004000404FBBB040400000404),
    .INIT_4E(256'h030504000400030005FA07050420000404040009000000000000000000010001),
    .INIT_4F(256'h06060000060404000000000200100400FF0003000200050000000500000005FA),
    .INIT_50(256'h06060000060403000005000606F991060600000604040008000005000606F9F1),
    .INIT_51(256'h01000001000400040005000100000006F9000006060205FF000005000606F99C),
    .INIT_52(256'h00000007F8640706000600030007F86807062000060606000900000000000000),
    .INIT_53(256'h000708F7D208080000060604000000000200100600FF00030006000200000007),
    .INIT_54(256'h000708F7FD08080000060603000007000708F7F2080800000606040008000007),
    .INIT_55(256'h010000000001000001000600060007000100000008F7000008080207FF000007),
    .INIT_56(256'h1000010008000010000000100000100000010800010009000000000000000101),
    .INIT_57(256'h0000000000000000090000080010100001000800080010100001000800080010),
    .INIT_58(256'h000100020002000200000003FC360302000200020002FD3A0302200002020200),
    .INIT_59(256'h0202040008000003000303FCA404020000020204000000000100100200FF0002),
    .INIT_5A(256'h04020103FF000003000303FCCF04020000020203000003000303FCC404020000),
    .INIT_5B(256'h0404040405050505060600000000000000000000000003000100000003FC0000),
    .INIT_5C(256'h18D0000100000001000100000000000000010101000100010202020203030303),
    .INIT_5D(256'h060606F90E060600040404050405040503020302030302030100000900000000),
    .INIT_5E(256'h060607F8C007060606F9050706000006000006F9080606000006000006F9C706),
    .INIT_5F(256'h06000600070007000700020007F8BB08060607F8000706000006000007F8BF07),
    .INIT_60(256'h75080800080600090000000507F8C3080600FF000507F8790806050006000600),
    .INIT_61(256'hA709080809F66C0908000008000008F76F0908000008000008F7AE08080808F7),
    .INIT_62(256'h09000900090002000AF5A20A0A0809F6670A08000008000009F6A609080809F6),
    .INIT_63(256'h0A0A0009000000050AF5AA0A0A00FF00050AF5600A0A08000800080008000900),
    .INIT_64(256'h0BF4530B0A00000A00000BF4560B0A00000A00000AF5950B0A0A0AF55C0A0A00),
    .INIT_65(256'h0C0002000CF3890C0C0C0CF34E0C0C00000A00000BF48D0C0A0A0BF48E0B0A0A),
    .INIT_66(256'h0C0C0C050CF3910C0C00FF00050CF3470C0C0A000A000A000B000B000B000B00),
    .INIT_67(256'h00000D0C04000200040C00000CF300000D0C0C04000CF300000C0C050CF30000),
    .INIT_68(256'h0C000CF3330D0C030CF3340D0C0500030CF3BF0D0C000CF300000D0C04000CF3),
    .INIT_69(256'h0CF32A0D0C020CF3410D0C0000050CF32E0D0C020CF3450D0C0000050CF3310D),
    .INIT_6A(256'h01030CF300000D0C030000000CF300000D0C03000CF3270D0C000CF33E0D0C0F),
    .INIT_6B(256'h0800000D000D0DF2930E0C00000C0C040C0000000000000200100C00FF00041D),
    .INIT_6C(256'hFF00000D000D0DF2BE0E0C00000C0C0300000D000D0DF2B30E0C00000C0C0400),
    .INIT_6D(256'h0E0C02000DF200000E0C020700030DF200000E0C020C07000DF200000E0C020D),
    .INIT_6E(256'h0002000800FF00040DF200000E0C000201FF000400000000000100010DF20000),
    .INIT_6F(256'h000DF200000E0C000200020DF200000E0C0102000005A0000100090006000000),
    .INIT_70(256'h000E0E0000000C0003000CFF000000000500000DF200000E0C000A0000000000),
    .INIT_71(256'h00000000000EF100000E0E00070C0A00000EF100000E0E000C0A070D000EF100),
    .INIT_72(256'h00000000000000020202020000000000000300FF6A000000000009000000FF6B),
    .INIT_73(256'h00FF5D010000000009000000FF60000000000009000000FF6100000000000000),
    .INIT_74(256'h53020000000000FF000301FE58010000000005000001FE5A0100000000090000),
    .INIT_75(256'h0009000002FD4C0202020002FD4E02020000020000000001FE510200010001FE),
    .INIT_76(256'h0009000003FC46030200020006000002FD470302000002000002FD4B02020002),
    .INIT_77(256'h0009000003FC3E040200020009000003FC3F0302000002000003FC4303020002),
    .INIT_78(256'h04000004FB36040400040009000004FB39040400040009000004FB3B04040002),
    .INIT_79(256'h0009000005FA2E050400040009000005FA2F0504000004000004FB3205040000),
    .INIT_7A(256'h09000006F926060600040009000005FA29060400040009000005FA2B05040004),
    .INIT_7B(256'h000006F91E070600060009000006F920060600060009000006F9230606000600),
    .INIT_7C(256'h07F81307060000000000070000000007F817070606000007F81B070600060009),
    .INIT_7D(256'h06070307F80E080600060009000007F811070600060009000007F81207060000),
    .INIT_7E(256'h08F703090808000008F707080800080800090000000700000008F70A08080000),
    .INIT_7F(256'h0908000008000008F77D0908000000000000000000000900000B000008000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[31] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[31] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(\addrb[15] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (\douta[15] ,
    \doutb[15] ,
    clka,
    ena_array,
    enb_array,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]\douta[15] ;
  output [15:0]\doutb[15] ;
  input clka;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input rsta;
  input rstb;
  input sleep;
  input [10:0]addra;
  input [10:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [1:0]wea;
  input [1:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_142 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_146 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]\douta[15] ;
  wire [15:0]\doutb[15] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [1:0]wea;
  wire [1:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[15:0][12288:14335]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2423250326232483282324032A2323832023839303B7021303132083011300EF),
    .INIT_01(256'h2023879307B702130713A2232683A4232603A023061306370213059322232583),
    .INIT_02(256'h29832023899319B7021309132223288324232023889318B70213081322232783),
    .INIT_03(256'h02130B93222320238B931BB702130B1322232A8320238A931AB702130A132223),
    .INIT_04(256'h2D3702130C93222324232623282320238C932CB702130C13A223A0230C131C37),
    .INIT_05(256'h2023859325B72A23021309132223202309132937282302130D13A223A0230D13),
    .INIT_06(256'h081328372E2302130713A223A423A623A823A023071327372C23021305932223),
    .INIT_07(256'h2223202307133737222302130313222320230313233720230213081322232023),
    .INIT_08(256'h242325032623240328232A232C232E232023222324832023849334B702130713),
    .INIT_09(256'hA023A223A423A0230613363702130693A223A423A023869336B7021303932223),
    .INIT_0A(256'hA4232603A6232503A0230513353702130393A223A423A623A823AA23AC23AE23),
    .INIT_0B(256'hA023889348B702130493A223A4232D03A623A8232703AA23AC23AE23A023A223),
    .INIT_0C(256'hA823AA23AC23AE23A023A223A423A623A023829342B7242302130893A223A423),
    .INIT_0D(256'hA823AA23AC23AE23A023A2232383A423A023839343B702130293A223A423A623),
    .INIT_0E(256'hA223A0230A134A3702130493222324232023849344B702130313A223A423A623),
    .INIT_0F(256'h2C232E23202320230A135A3702130913A223A423A623A823AA23AC23AE23A023),
    .INIT_10(256'h021309932223242325832023859355B702130313222324232283262328232A23),
    .INIT_11(256'h5BB702130B1322232A8320238A935AB702130A13A223A423A623A0230A135A37),
    .INIT_12(256'h02130C9322232423262328232A232C032C232B832E2320232223242320238B93),
    .INIT_13(256'hA223A423A623A823AA23AC23AE23A023A223A423A623A823AA23A0230C136C37),
    .INIT_14(256'h0613663702130893A2232883A423A623A823AA23AC232C03AE232B03A0232883),
    .INIT_15(256'hA2232303A423A623A823AA23AC23AE23A023A223A423A623A823AA23AC23A023),
    .INIT_16(256'hA623A823AA23AC23AE23A023A223A423A623A823AA23A0230513653702130493),
    .INIT_17(256'h763702130593222325032423262328232A2320230513753702130413A223A423),
    .INIT_18(256'h24232023869376B702130613A223A423A623A823AA23AC23AE23A023A0230613),
    .INIT_19(256'h262320230713773702130413A223A423A623A823A02307137737021306932223),
    .INIT_1A(256'h2A232C232E232023899389B70213091322232023091389370213071322232423),
    .INIT_1B(256'hA8232383AA23AC23AE23A0232A03A0230A138A37021309932223242326232823),
    .INIT_1C(256'h0313A223A423A6232483A823AA23AC23AE232803A023A2232383A4232383A623),
    .INIT_1D(256'h893702130893222324232803262328232A2328032C2328032023081388370213),
    .INIT_1E(256'hAC23AE23A0230613963702130593A223A423A623A823AA23AC23AE23A0230913),
    .INIT_1F(256'h2023869396B702130613222320230613963702130413A223A423A623A823AA23),
    .INIT_20(256'h97370213069322232023869396B70213061322232023869396B7021304132223),
    .INIT_21(256'h02130913222327032423262320230713A73702130613A223A423A623A0230713),
    .INIT_22(256'hAA23AC232A03A0230A13AA370213099322232423262328232A2320238993A9B7),
    .INIT_23(256'hA223A423A623A823AA23AC23A0238C93BCB702130B93A223A423A623A8232A83),
    .INIT_24(256'h242323832623238328232A232C232E23202322232A0320230A13BA3702130D13),
    .INIT_25(256'h2C232E232023222324232283262328232A232C232E2323832023238322232383),
    .INIT_26(256'hCCCD000000132083011380E72C83011326230313029322232423262328232A23),
    .INIT_27(256'h14631DD3208700000FDA00000000A7898106AAAC866664B60FDA00000FDA0FDA),
    .INIT_28(256'hD2B71C639DD3806714631DD3A1078293D2B780672C830053A0878293D2B78067),
    .INIT_29(256'h2027222720238293D2B702130D13A0878293D2B7F06F0053F06F80D3A1078293),
    .INIT_2A(256'hA1878293D2B7015300D30053F06F200700D32083011380E72C83011322238053),
    .INIT_2B(256'h8067005380D3A0878293D2B7005380D3A1878293D2B780530053A2078293D2B7),
    .INIT_2C(256'h8293D2B700530153A1078293D2B700530153A2078293D2B780D301D3015300D3),
    .INIT_2D(256'h9DD3A0878293D2B720830113F0EF011322238053202720D38067005300D3A107),
    .INIT_2E(256'h0053A1078293D2B700D32107A0878293D2B7006FA0272007A227021302931E63),
    .INIT_2F(256'h006FA027A227021302931C631DD3A1078293D2B7A087A007A027A22702130293),
    .INIT_30(256'h16631DD32227A1078293D2B7A087A007A027A227021302930053A1078293D2B7),
    .INIT_31(256'h208720830113F0EF01132423006F20830113F0EF011324230053A1078293D2B7),
    .INIT_32(256'h9DD3A0878293D2B720830113F0EF0113222320272053A0878293D2B780670053),
    .INIT_33(256'h021302930053A1078293D2B7A0878293D2B7006FA0272007A227021302931E63),
    .INIT_34(256'h8293D2B7006FA027A227021302931C631DD3A1078293D2B7A087A007A027A227),
    .INIT_35(256'h2227A1078293D2B7A087A007A027A227021302930053A1078293D2B780D3A107),
    .INIT_36(256'h0113F0EF01132423006F20830113F0EF011324230053A1078293D2B716631DD3),
    .INIT_37(256'hAAAACCCD49258E38D66EB0DB000000000FDA00000FDACCCD8067005320872083),
    .INIT_38(256'h0153A1078293D2B700538153A3878293D2B700D3835302D3825301D3015300D3),
    .INIT_39(256'h00530153A1078293D2B700530153A1078293D2B700530153A1078293D2B70053),
    .INIT_3A(256'h011322238053202716631DD3A1078293D2B720D38067005300D3A1078293D2B7),
    .INIT_3B(256'h8293D2B7A1078293D2B714631DD3A1078293D2B780670053208720830113F0EF),
    .INIT_3C(256'h208720830113F0EF0113242380532227202780D380D3A2078293D2B781D3A187),
    .INIT_3D(256'h0113262380532427202780D3A1878293D2B7A1078293D2B78067005320878053),
    .INIT_3E(256'hA02382938DB39293806700538067900B8067005320878053208720830113F0EF),
    .INIT_3F(256'h84132383806702B3929393138067CCE38193A02782938DB392938067CCE38193),
    .INIT_40(256'h230320830113F0EF01132A230293282326232423222320235413843380671463),
    .INIT_41(256'h20230313D33702130D1380672C832D032303228380672C832D03230322834C63),
    .INIT_42(256'h931320830113F0EF01132223202380679463031380672C830313E33702932223),
    .INIT_43(256'h029396630313F06F8293228320830113F0EF0113242322238333238303339393),
    .INIT_44(256'h0D93F06F006F02B3228320830113F0EF0113222302932023031348630313F06F),
    .INIT_45(256'h9D934D8B9D934D8B9D934D8B8067428B9293428B9293428B9293428B8067900B),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000806780534D8B),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:16],\douta[15] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:16],\doutb[15] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:2],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_142 ,\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:2],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_146 ,\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\douta[15] ,
    \doutb[15] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[15] ;
  output [7:0]\doutb[15] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[15] ;
  wire [7:0]\doutb[15] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[15:8][0:4095]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00CCD7CC6BBCB700000F9900990000CC000000CC0000CC6600B081C102220191),
    .INIT_01(256'h8020030300802003031C031A2DA08303000080A00080A000A0000000FA000000),
    .INIT_02(256'hA40080A120A0A20080A120A0A00080A120A080A480A0A280A0A080A020030300),
    .INIT_03(256'hA4222001C0012AA2222001C0012AA0222001C0012A2826242220242423232280),
    .INIT_04(256'hA082022001C001202E2001C0012E802C202001C0012C2A00A082022001C0012A),
    .INIT_05(256'h038221A28121210303A02201A1820281202001C001248022202001C001222000),
    .INIT_06(256'h20A200A020A02300A02023240090229020230092241222A283032023A4022203),
    .INIT_07(256'h26A222102001C001262400A082022001C001242001C001242220232280A400A0),
    .INIT_08(256'hC0012A20A02280202001C0012A8028202001C0012880262000A082022001C001),
    .INIT_09(256'h222001C001268024A0222001C0012422202080A0222001C0012AA42280202001),
    .INIT_0A(256'h012E802CA0222001C0012C802AA0222001C0012A8028A0222001C001288026A0),
    .INIT_0B(256'hA3A22281821000808085058505850404840484038423038322220121202001C0),
    .INIT_0C(256'h86A68202A40686060686068606A20686060686068606A00686860686868686A5),
    .INIT_0D(256'h800181810181200303A2000001840080868486260303A0220686078786078786),
    .INIT_0E(256'h012A282001C00128262001C0012624800296032001C0012422202380A4000080),
    .INIT_0F(256'hC0012EA2222001C0012EA0222001C0012E2C2001C0012C022AA08303032001C0),
    .INIT_10(256'hC00120A2222001C00120A0222001C001202E2001C0012E02A0830303A4222001),
    .INIT_11(256'h26242001C001240222A0830303020002169D202001C0012220200303A4222001),
    .INIT_12(256'h28A0222001C00128262001C0012602A0830303A2222001C00126A0222001C001),
    .INIT_13(256'h01C0012A28009423032001C0012802A0830303A4222001C00128A2222001C001),
    .INIT_14(256'h962303A42200A082022001C0012AA22200A082022001C0012AA02200A0820220),
    .INIT_15(256'h262428232A232C232E23202322222402032001C0012C02282AA0840404230003),
    .INIT_16(256'h2003031A1D2003031C2D200303122D200303A09003A08D251525202522242424),
    .INIT_17(256'h031A1D2003031C2D200303122D200303A0A02003030080002003030020030300),
    .INIT_18(256'h1D2003031C2D200303122D200303A0A220030300800020030300200303002003),
    .INIT_19(256'hF0012C820300039624039C0300A420030300800020030300200303002003031A),
    .INIT_1A(256'h2001802C01280D2624222080C404232380022001F0012C232200142302002001),
    .INIT_1B(256'h2A2D80C4038222802023229A032001802C012A282D80C4038222802023229A03),
    .INIT_1C(256'h22802023229A032001802C012E2C2D80C4038222802023229A032001802C012C),
    .INIT_1D(256'h012603822294032001C0012624220323C00382229A032001C0012220802C2D82),
    .INIT_1E(256'h01C0012E2C2A0323002001C0012A03822294032001C0012A28260323002001C0),
    .INIT_1F(256'h23A08D231323A08D2313232001F00120822E0323002001C0012E038222940320),
    .INIT_20(256'h01C001242200832001B00122030294032001C001222080A08D231323A08D2313),
    .INIT_21(256'h0128022603002001B00126030292032001C0012624002001B001240302920320),
    .INIT_22(256'hB0012C030294032001B0012C2A288322B0822298032283A023A223A4232001F0),
    .INIT_23(256'hA023A2232001F00120022E03002001B0012E030292032001B0012E2C00832001),
    .INIT_24(256'h80A08D231323A08D2313232001F0012282208322002001B00120822292032283),
    .INIT_25(256'hB00128030292032001B0012826002001B00126030292032001B0012624222023),
    .INIT_26(256'h23A223A4232001F0012C022A03002001B0012A030292032001B0012A28002001),
    .INIT_27(256'h01B001202E002001B0012E030292032001B0012E2C02A00D241323801403A3A0),
    .INIT_28(256'hA00D241323801403A3A023A2232001F00122022003002001B001200302920320),
    .INIT_29(256'h160200029606060006169DA20D96210606A2A510ADA28505A10D9525802C2D02),
    .INIT_2A(256'hA10D92A08D92129DA00002A20D12A18D1200A10D928000919606A18D96020002),
    .INIT_2B(256'h1C9D2203038102A2228102A22281A221A223800280028002800220189D218101),
    .INIT_2C(256'h1603A3810222A302810222A3828122A30180028002A000100080A00000A200A2),
    .INIT_2D(256'h038324A303038324A3830323A303800000A0A200810122A301810222A3828080),
    .INIT_2E(256'h23800000A082020000A0A2008000810122A38101028324A383840380001603A3),
    .INIT_2F(256'h802C22232222A1A1A022162DA082022001F0012C8000812A2826242220222221),
    .INIT_30(256'h00002003031C03A3222001F001208100802E222121202001F0012E0282018100),
    .INIT_31(256'h8D9225252424800280028002A022000000109603A2001A1D2103030080218120),
    .INIT_32(256'h01802C012C048D2A28262422200504039C05A301A1A3A180A1A5A000A0A5A0A2),
    .INIT_33(256'h2C012C2D23222120200404039C032001802C012C2D2322212020040403920320),
    .INIT_34(256'h1C9D2203038102A2228102A22281A221A2920480028002800280029603200180),
    .INIT_35(256'hA41A1DA2828222A2A481A281A124802C0D800280022000100080A00000A200A2),
    .INIT_36(256'hA2828222A2A481A281A19E0504000400040004162DA28404A2161DA2828222A2),
    .INIT_37(256'h22A1A401A181A1920504000400040004162DA28404A2161DA2828222A2A41A1D),
    .INIT_38(256'h02208002960302000200020002162DA08202A0161DA0800121A0A21A9D200002),
    .INIT_39(256'h2001F0012A2826242220028222028222022218AD220404212380022080022080),
    .INIT_3A(256'h800000A02200A02280009203A21A1D210303008021812000002003031C03A322),
    .INIT_3B(256'h8303008001A0008020000022002218ADA284042124800280028002A02200A022),
    .INIT_3C(256'hA025A50D952524242380028002800220002000800020002000809E03A2129DA1),
    .INIT_3D(256'h8380028002A000A0A01E1DA02003031E03802C020D83231E0626A20D9226A1A0),
    .INIT_3E(256'h161D20A08404A423162DA0830320232001B0012482222020040403802C02838D),
    .INIT_3F(256'h0320A2A0830300A20020200404A000101604A0A4040004960400841605040004),
    .INIT_40(256'h04A400101604A0A4040004960400841605040004161D20A08404A423162DA083),
    .INIT_41(256'h0400841605040004161D20A08404A423162DA0830320A6A0830300A600202004),
    .INIT_42(256'h01248222202004040380AA20030300AA0020A08303A800101603A0A304000496),
    .INIT_43(256'h8020A3A0802003031C1D200303008021A320008021A4200020A42320232001A0),
    .INIT_44(256'h20232001A001248222202004040380A020030300A6108020A3A4908020A3A290),
    .INIT_45(256'h1A0424A0239181A223A11101A123A19080A12323A0222001F001268224232120),
    .INIT_46(256'h8022040480022224A2802224A0A2800222040402822324A2022224A200A6A4A2),
    .INIT_47(256'h0423808200A880A082021E2DA08202A68080A182028001A222A1802124A0A400),
    .INIT_48(256'h032826900600A00D2413232001F0012A02032826902422200625A5A4A48D1440),
    .INIT_49(256'h8D2393C60302A00D2413232001F0012A0203282600A00D2413232001F0012A02),
    .INIT_4A(256'h232001F0012E822C2A1E0500A00D2413232001F0012E822C2A1E0525A4A423A3),
    .INIT_4B(256'hA4A38D144C04238080802C2D2203A00D2413232001F0012E822C2A00A00D2413),
    .INIT_4C(256'h80A00080A180A1212020A39E24222005240020A5A0220020A5A0200020A5A0A4),
    .INIT_4D(256'h2C2D228322A6220000A082021C23022001E0012A822826212020004405002600),
    .INIT_4E(256'h030003161D2020A3141DA020A3129D2021A31403A30121A38021A30021A38080),
    .INIT_4F(256'h169D200303A20080200080218021A3140380A2800280029603A2100303000300),
    .INIT_50(256'h002003031C03A3222001E0012220800280029603020002160200029603030003),
    .INIT_51(256'h021604A40D9423800280029603020002160200029603030003169D200303A200),
    .INIT_52(256'h9D22A124121DA1A324962C2A2826242220052402A22482A22401A124A48D1480),
    .INIT_53(256'h02A301A324940500022400020002160424900504000400040004169DA2A12414),
    .INIT_54(256'h0081022E000200021604040004960400841605040004161DA28404248102A281),
    .INIT_55(256'h0002160200029603030003169D200303A200002003031C03A3222001E0012080),
    .INIT_56(256'h2001F001220220212020A30D241380021604A38D239382229C03020002960302),
    .INIT_57(256'h9880021608A80D9827272626252524242380028002802C2D2321202082229403),
    .INIT_58(256'h18202E2C2A282624222009A9A70D190121A9A18021A9A00020A9A0A88D18A80D),
    .INIT_59(256'h00020002200080200080218021189D22A183031803002001802C0122038D8283),
    .INIT_5A(256'h03A2A20D2392229203020002169DA082020002960320232001802C01220D8203),
    .INIT_5B(256'h0296032223002180A1012101A180212380A02200A08202802C2D238222800296),
    .INIT_5C(256'h002001802C01282D23212020029C032001F001280080010D262422A28D239200),
    .INIT_5D(256'h8D0283282624222005A40D9480029605A40D9424238002802C2D2382229E0302),
    .INIT_5E(256'h2001802C012C822A2D04A30D241380021604A38D2393822296032001802C012A),
    .INIT_5F(256'h2393822296032001802C012E822C2D04A30D241380021604A38D239382229E03),
    .INIT_60(256'h80028002802C2D2382229E032001802C0120022E2D04A30D241380021604A38D),
    .INIT_61(256'h02162C2A28262422200980021609A9A80D982827272626252524242380028002),
    .INIT_62(256'h01802C0120038D8283982E09A7A78D170121A72180A1A92000A0A920A68D1900),
    .INIT_63(256'h2001802C01200D820300020002200080200080218021189D22A1830398030020),
    .INIT_64(256'h92032001802C0120022D04A38D231300021603A3221A1DA022A0820200029603),
    .INIT_65(256'h04A38D231300021603A32294032001802C0120022D04A38D231300021603A322),
    .INIT_66(256'h020002000296030200020002002001802C01202D230296032001802C0120022D),
    .INIT_67(256'h03A32292032001802C0120022D04A38D231300021603A322802C2D2382229E03),
    .INIT_68(256'h20822D03A38D231300021603A32294032001802C0120022D04A38D2313000216),
    .INIT_69(256'h8002802C2D2382229E030200020002002001802C01202D230296032001802C01),
    .INIT_6A(256'h01A12AA180A12AA000A02AA0AA0D9A80940AA90D992928282727262625252424),
    .INIT_6B(256'h0124030D0283848422202E2C2A0A05059228262422202E2C2A28262422200B2A),
    .INIT_6C(256'h2D23222120200404039C032001802C01242D232221202004040392032001802C),
    .INIT_6D(256'h248D0283002001802C01240D02839606000200020002000296032001802C0124),
    .INIT_6E(256'h2023181D2003032023802C2D23238222809403A2A20D23922292032001802C01),
    .INIT_6F(256'h940002962C2A282624052424812281A1012101A180212480A02300A083031E9D),
    .INIT_70(256'h2000940302002001802C012E2D23212020029C032001E0012E81008082A40D25),
    .INIT_71(256'h801405A50D952424802C2D232382220000202322202322A420A220A02220A022),
    .INIT_72(256'hA30D2413801404A38D239382222001802C012C0D82032A282624222005A58D15),
    .INIT_73(256'h2082032E2D2504A30D2413801404A38D239382222001802C012E82032C2D2504),
    .INIT_74(256'h82222001802C01220283202D2404A30D2413801404A38D239382222001802C01),
    .INIT_75(256'h2E2C2A28262422200A80140AAAA90D992928282727262625252424802C2D2323),
    .INIT_76(256'h04A38D2313001403A3222001802C01280D82032605A50D15001405A51C242220),
    .INIT_77(256'h23022001802C012802832D2404A38D2313001403A3222001802C012802832D24),
    .INIT_78(256'h280A050512260AAA0121AAA18021AAA00020AAA0A88D1A002001802C01282D23),
    .INIT_79(256'h01802C01222D232221202004040392032001802C0122030D82838404202E2C2A),
    .INIT_7A(256'h82831606000200020002000296032001802C01222D23222120200404039C0320),
    .INIT_7B(256'h14001404A423129D2023A0220094032001802C01228D8283002001802C01220D),
    .INIT_7C(256'h2C012202832D2404A38D2313001403A3222001802C01220203832D2505A48D24),
    .INIT_7D(256'h01802C01222D2323022001802C012202832D2404A38D2313001403A322200180),
    .INIT_7E(256'h0126020383242D2505A48D2414001404241A220480140424A38D239382220020),
    .INIT_7F(256'h802C01262D2323022001802C012603822D2403A38D2313001403A3222001802C),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[15] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[15] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(\addrb[15] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\douta[15] ,
    \doutb[15] ,
    clka,
    \addra[14] ,
    \addrb[14] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[15] ;
  output [7:0]\doutb[15] ;
  input clka;
  input \addra[14] ;
  input \addrb[14] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[14] ;
  wire [11:0]addrb;
  wire \addrb[14] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[15] ;
  wire [7:0]\doutb[15] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[15:8][4096:8191]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2313001403A322189DA022A0220094032001802C0126028303242D2524002001),
    .INIT_01(256'h01802C012603822D2403A38D2313001403A3222001802C012602832D2404A38D),
    .INIT_02(256'h0D99A928282727262625252424802C2D23238222002001802C01262D23230220),
    .INIT_03(256'h9A2A28262422202E2C2A28262422200C2BAB0D9BABA1A0A02AAA8D9A80940AA9),
    .INIT_04(256'h0D020383000200022000A0201E1D202005059E05002001802C012C8D020303A5),
    .INIT_05(256'h23181D2003032023802C2D23238222809403A2A20D23922292032001802C012C),
    .INIT_06(256'h0002162422202E2C04A423812281A1012101A180212480A02300A083031E9D20),
    .INIT_07(256'h00940302002001802C01262D23212020029C032001E0012681008002A48D2414),
    .INIT_08(256'h1405A50D952424802C2D232382220000202322202322A420A220A02220A02220),
    .INIT_09(256'h0D2413801404A38D239382222001802C012C0D82032A282624222005A58D1580),
    .INIT_0A(256'h82032E2D2504A30D2413801404A38D239382222001802C012E82032C2D2504A3),
    .INIT_0B(256'h222001802C01220283202D2404A30D2413801404A38D239382222001802C0120),
    .INIT_0C(256'h202E2C2A282624222009801409A9A80D98282727262625252424802C2D232382),
    .INIT_0D(256'h2D2404A38D2313001403A3222001802C01260D02832405A40D94009405A41C22),
    .INIT_0E(256'h2D2323022001802C012602832D2404A38D2313001403A3222001802C01260283),
    .INIT_0F(256'h01802C01260D828303A41A240AAAA90D19AAA1A0A0A9A78D19002001802C0126),
    .INIT_10(256'h220094032001802C01268D820383000200022000A0201E1D20A084041E050020),
    .INIT_11(256'h13001403A3222001802C01260203832D2505A48D2414001404A423129D2023A0),
    .INIT_12(256'h802C012602832D2404A38D2313001403A3222001802C012602832D2404A38D23),
    .INIT_13(256'h2414001404241A260480140424A38D23938222002001802C01262D2323022001),
    .INIT_14(256'h2C012A03822D2403A38D2313001403A3222001802C012A020383282D2505A48D),
    .INIT_15(256'hA022A0220094032001802C012A0283282D24002001802C012A2D232302200180),
    .INIT_16(256'h03A38D2313001403A3222001802C012A02832D2404A38D2313001403A322189D),
    .INIT_17(256'h24242323802C2D23238222002001802C012A2D2323022001802C012A03822D24),
    .INIT_18(256'h2E2C2A2804A48D14001404249C2624220800942008272726A020070726262525),
    .INIT_19(256'h23022001802C012003822D2403A38D2313001403A3222001802C0120828D0383),
    .INIT_1A(256'h1A9DA022A0220094032001802C0122820D83202E2C2A28002001802C01202D23),
    .INIT_1B(256'h2403A38D2313001403A3222001802C01220382832D2504A30D24930094042323),
    .INIT_1C(256'hA0222001802C01222D232302002001802C01222D2323022001802C012203822D),
    .INIT_1D(256'hA1A301A1A3A18021A4A00020A4A02323800280028002169DA08202141DA08202),
    .INIT_1E(256'hA3A301A1A3208103A383030303A3A383A3A3002422209A04A302A2A382A2A301),
    .INIT_1F(256'h9E05A42D2423B082830CA2248000A083030080A1A300A1A3220101A183038101),
    .INIT_20(256'h820200A0820200A082021A1DA082021C2DA08202A00D928284A4A2A020040422),
    .INIT_21(256'hA4A2A0A4A0A0A4A423802C80A410A0A2A21020A3A01020A39C0380A08D1210A0),
    .INIT_22(256'h0200A0A220040004161D002104048021040480AD002004040020A4201C04A4A0),
    .INIT_23(256'h9A0300A0820200A082029A031603020002161D00A1820280A1820280AD00A082),
    .INIT_24(256'h200303A02280A082020020017001222000A08202201A0480A2A0820200A08202),
    .INIT_25(256'h00A0820200802D00A082020000800080A1A2200020A4201E0480A28000210303),
    .INIT_26(256'h8020A40020A420120480A40020030380200303A22200A0820200200170012220),
    .INIT_27(256'h017001282080002004041A9D2624222022210404018101800121A48021A42000),
    .INIT_28(256'h82021A1D28A221A182028001A1A28021A322A02200802D00A0820200A0820220),
    .INIT_29(256'h0280010121A18202A0820200802D00A0820200A08202200170012A80A08000A0),
    .INIT_2A(256'h2625252424238080A42200A0820280A0820200A082021A9DA08202800000A182),
    .INIT_2B(256'h832C2A28262422202E2C2A2826242220A9092021090928A60D98C80828272726),
    .INIT_2C(256'h92A2220094030200020002169DA08202141DA08202A0222001802C012E838D02),
    .INIT_2D(256'h8021A0008021A00020A023A3229C032001802C012E832DA32302982323822323),
    .INIT_2E(256'hA08102A223A122161DA18202808102A2228102A22281A22123A2808121202300),
    .INIT_2F(256'h0000A480A1A281A1A081A12200200080109DA0820200A48000A2A1A28102A2A1),
    .INIT_30(256'h2A2224202C2C2B2B2A2A29292828272726262525242480802C2D232020822200),
    .INIT_31(256'h2E2C2A28262422202E2C2A28262422202E2C262A0BA0210B0B28A84808262D24),
    .INIT_32(256'h10030300030003169D200303141D200303A0222001802C0126830D0203242220),
    .INIT_33(256'h00208000161DA0820210008021A0008021A0002023A022801402A00D24132302),
    .INIT_34(256'h2C2A282605A40020A0A4A4A30D241323238080A480A0A280A0A080A02200A022),
    .INIT_35(256'h0505002105051A1D2105051C2D210505A18D26150506A4A2A025A18505A52494),
    .INIT_36(256'h802C012E822D00A41121A5A21121A5A02411A1A49E0500A08D15112105050021),
    .INIT_37(256'h8D14A322A00D24132382232392222001802C012E2D22A420A220A02220232001),
    .INIT_38(256'h2026A58D15A3A08D160500A08D16051C1DA02525200505A3A4A0A2A0A0A024A3),
    .INIT_39(256'hA0A2A0A0A025A38D15A3A400A1A201A1A001A10020A08505A38D15A420A220A0),
    .INIT_3A(256'h8000A1A0A28001A1A0A08001A1A0008001A1A18001A1A180A125A023A08303A4),
    .INIT_3B(256'h8021A0008021A0002023A02294032001802C012002832E2DA6260680202026A4),
    .INIT_3C(256'h02A221208102A2232123161D21030311018122A1018122A10121A12200201000),
    .INIT_3D(256'h23A02200002480212281212081212300210000101D20030300248000A2212281),
    .INIT_3E(256'h20A082022001802C01202D23202082A2222001802C01202D03232324A022A020),
    .INIT_3F(256'h202D232300212023028000A1A222A08202902302A00D24920302004423021C9D),
    .INIT_40(256'h242220AA0A20200A0A2929282827272626252524242323808080002001802C01),
    .INIT_41(256'hA08202141DA08202A0222001802C012E02838D832C2A28262422202E2C2A2826),
    .INIT_42(256'h8424222024200404A323922E04A32323A20D2392A2228094030200020002169D),
    .INIT_43(256'h9E0300A00D931020030300200303002003031A1D2003031C2D200303A00D9383),
    .INIT_44(256'h23022001802C01202D23222001802C01202D002410A0A32210A0A320231020A3),
    .INIT_45(256'h820200141DA0820210008021A0008021A0002023A02290032001802C01202D23),
    .INIT_46(256'h2726262525248080A4800021A0A2800121A0A080012123A02200A0A2228020A0),
    .INIT_47(256'h2826242220200B0B00802120008021200020202BAB8D1B4E0B2A2A2929282827),
    .INIT_48(256'h2001802C01268D022422202E2C2A28262422202E2C00A08B0BAB8D1B0B1C9D2A),
    .INIT_49(256'h2D2323022001802C01282D23222001802C0128262D2323A20D2392A222009403),
    .INIT_4A(256'h20A0820200141DA0820210008021A0008021A0002023A02290032001802C0128),
    .INIT_4B(256'h2C00A08B0BAB8D1B0000A4800021A0A2800121A0A080012123A02200A0A22280),
    .INIT_4C(256'h2D2323A20D2392A2220094032001802C012C8D0224222A2E2C2A28262422282E),
    .INIT_4D(256'h2023A02290032001802C012E2D2323022001802C012E2D23222001802C012E2C),
    .INIT_4E(256'hA080012123A02200A0A2228020A0820200141DA0820210008021A0008021A000),
    .INIT_4F(256'h00802120008021200020242023A38D2393C003822200A4800021A0A2800121A0),
    .INIT_50(256'h022D00A08404A38D93002001802C0120022D00A08404A38D1383149D2E200303),
    .INIT_51(256'h00942E2C2A28262422200626252524248080802C2D23232284222001802C0120),
    .INIT_52(256'h23022001802C01222D232322042001802C01228D820320072724A022A020A026),
    .INIT_53(256'h01242D232322042001802C01240283222D852525A420A220A0242024A3220014),
    .INIT_54(256'h042001802C01260283242D852525A420A220A0242024A322001423022001802C),
    .INIT_55(256'h280283262D852525A420A220A0242024A322001423022001802C01262D232322),
    .INIT_56(256'hA323A420A220A0232023A222801423022001802C01282D232322042001802C01),
    .INIT_57(256'h8D19A9A8A8A72726262525242423802C2D232322042001802C012A8302282D83),
    .INIT_58(256'hA8009428262422202E2C2A282624222008A88D18A70D17A2A224A022A020A0A7),
    .INIT_59(256'h80A1200080A12000A0232023A3222001802C012C8D02832A89A9242022202020),
    .INIT_5A(256'h01802C012C022D00200404A3002001802C012C022D00200404A31E9D20030300),
    .INIT_5B(256'h832C2D852525A420A220A0242024A322001423022001802C012C2D2323220420),
    .INIT_5C(256'h00200404A31E9D2003030080A1200080A12000A0232023A3222001802C012E02),
    .INIT_5D(256'h01802C012E2D232322042001802C012E022D00200404A3002001802C012E022D),
    .INIT_5E(256'h2023A3222001802C012002832E2D852525A420A220A0242024A3220014230220),
    .INIT_5F(256'h04A3002001802C0120022D00200404A31E9D2003030080A1200080A12000A023),
    .INIT_60(256'hA0242024A322001423022001802C01202D232322042001802C0120022D002004),
    .INIT_61(256'h0080A1200080A12000A0232023A3222001802C01220283202D852525A420A220),
    .INIT_62(256'h2001802C0122022D00200404A3002001802C0122022D00200404A31E9D200303),
    .INIT_63(256'h8302222D83A323A420A220A0232023A222001423022001802C01222D23232204),
    .INIT_64(256'h2D00200404A31E9D2003030080A1200080A12000A0232023A3222001802C0124),
    .INIT_65(256'h2001802C01242D232322042001802C0124022D00200404A3002001802C012402),
    .INIT_66(256'h24A40D9727A78D1787A6A68D9626A68D168623A30D962525802322A30D239222),
    .INIT_67(256'hA0A00020A0A38D93A40020A0A20020A0A00020A0A30D93A420A220A020A30D97),
    .INIT_68(256'h0020A0A00020A0A30D93A40020A0A20020A0A00020A0A30D93A40020A0A20020),
    .INIT_69(256'h06A58D16A5CCA58D1606A5CA0525242423800283A38D93A2A28D92A40020A0A2),
    .INIT_6A(256'h82032C2A28A68D17A60D17A5A5A4A0A2A0A0A0A58D17A7A6A6A5009426242220),
    .INIT_6B(256'hA38D1404A322CC028322200180012E03822423A38D2393222001802C012E838D),
    .INIT_6C(256'hA70D9726262580808080802C2D2283222001802C01202D00942E04A38D14A3CC),
    .INIT_6D(256'h8812A80D1828A88D9816A80D1828A88D98A78D18A7A70D9742A80D182807C007),
    .INIT_6E(256'h03A20D929C0807000700070007000716A80D1828A80D18881CA80D1828A80D18),
    .INIT_6F(256'h80802C2D2283222001802C01268D03001424222003A30D13A342A30D1403A340),
    .INIT_70(256'h932283222001802C01240484030D8300942422202E2C222A282607A68D172680),
    .INIT_71(256'h25A50D269518A50D1625A58D2595A48D15A4A40D9448A50D15A504C604A30D24),
    .INIT_72(256'h0504000400040004000416A50D1625A50D15851CA50D1625A50D158512A50D16),
    .INIT_73(256'h232285222001802C012683840C83042D2300942404A38D14A3802C2DA20D929E),
    .INIT_74(256'h5001220220015001220220030003004403CC0313A02280808080802C2D242423),
    .INIT_75(256'hC4034C0312A022200150012202200150012202030003004403CC0313A0222001),
    .INIT_76(256'h2007A70D17A74A07A70D17A74807262625252424235002200150012202000200),
    .INIT_77(256'h202020A80D18A78D18A70D17A8A7A4A2A0A0870727A70014202E2C2A28262422),
    .INIT_78(256'h23A3222001802C012A2D232322042001802C012A8D0283282624228828242022),
    .INIT_79(256'h0404A3A300942A04A38D14A3C204A38D14A3C003032324202220202024A30D94),
    .INIT_7A(256'h202E2C222D85A525A420A220A02520A50D15A48D15A38D2593A5A42422202420),
    .INIT_7B(256'h200404A31E9D2003030080A1200080A12000A0232023A3222001802C01220283),
    .INIT_7C(256'h802C01222D232322042001802C0122022D00200404A3002001802C0122022D00),
    .INIT_7D(256'h272726262525242480808080802C2D032324202220202024A30D9423A3222001),
    .INIT_7E(256'h2624222007A4818122A2028222A0028222818207A7A1420C2B2B2A2A29292828),
    .INIT_7F(256'h2023A4A2A022A0820220018001288203262422202E2C2A28262422202E2C2A28),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[15] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[15] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[14] ),
        .ENBWREN(\addrb[14] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (\douta[15] ,
    \doutb[15] ,
    clka,
    \addra[15] ,
    \addrb[15] ,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[15] ;
  output [7:0]\doutb[15] ;
  input clka;
  input \addra[15] ;
  input \addrb[15] ;
  input rsta;
  input rstb;
  input sleep;
  input [11:0]addra;
  input [11:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [11:0]addra;
  wire \addra[15] ;
  wire [11:0]addrb;
  wire \addrb[15] ;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[15] ;
  wire [7:0]\doutb[15] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[15:8][8192:12287]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h2393222001802C01280302032D25200505A48D249423A0830303A420A220A023),
    .INIT_01(256'h05A42400942805A424C805A424A38D93202423A38D932420222020202423A38D),
    .INIT_02(256'h012002832E2C2A2D86A626A420A220A0262026A5A48D26942625242220252005),
    .INIT_03(256'h20022D00200404A31E9D2003030080A1200080A12000A0232023A3222001802C),
    .INIT_04(256'hA3222001802C01202D232322042001802C0120022D00200404A3002001802C01),
    .INIT_05(256'h2D22212020830083C60382228322002001802C01202D220324A022A020A02323),
    .INIT_06(256'h80010D8D0323002100A1012101A1802100A0000003A52026262525242480802C),
    .INIT_07(256'h0008C60800084609A824A022A020A0A8A80D9880C4A828272726262525802C00),
    .INIT_08(256'hA9442909A908A70D97962422202E2C2A282624222009080008C60800084689A8),
    .INIT_09(256'hA9A909A80D980800002001802C01282D22032001802C01280D82830014260929),
    .INIT_0A(256'h96A9A9A90D998998A9A9A90D99899AA9A9A98D999AA9A9A98D992929A90D99CC),
    .INIT_0B(256'h038D83009409A8A8002001802C01280D8203A70D971C09090009000900090009),
    .INIT_0C(256'h0003004403CC0313A022002001802C01282D2424232322052001802C01280484),
    .INIT_0D(256'h2802200140012802030003004403CC0313A02220014001280220014001280203),
    .INIT_0E(256'hC423238222200140012802200140012802030003004403CC0313A02220014001),
    .INIT_0F(256'h000346030003C683230003C603000346852423A4A0A2A0A024A0A3A30D249380),
    .INIT_10(256'h2D2001802C012A83048C2D232305002001802C012A83022D03A30D931E280303),
    .INIT_11(256'h282624222088A880C4A828272726262525802C2D2424232382222001802C012A),
    .INIT_12(256'hA024A0A3232400C42323022001802C012A0D0283838800C428262422202E2C2A),
    .INIT_13(256'h2001802C012A832D032298050300034605230003C603000346852423A4A0A2A0),
    .INIT_14(256'h2001802C012A2D24242323022001802C012A2D2001802C012A84832D25230500),
    .INIT_15(256'h23022001802C012E02832D240200442C2A82A20044A422830083C60382228322),
    .INIT_16(256'h0302802001802C012E2D2423230400044603032382222001802C012E2D242423),
    .INIT_17(256'h22A0830302222320014001220220A08303032001400120028320014001202003),
    .INIT_18(256'h4403800228232001400122A083030226232001400122A0830302242320014001),
    .INIT_19(256'h02280303200140012883022603032001F0012624200140012482222020040403),
    .INIT_1A(256'hF0012220200140012083022E03032001F0012E2C2001F0012C2A200140012A83),
    .INIT_1B(256'hA0830303C80302A00D24132302202222222422262228222A222C222E02032001),
    .INIT_1C(256'h0140012A8302280303200140012883022603032001F001262420014001240222),
    .INIT_1D(256'h2E02032001F0012220200140012083022E03032001F0012E2C2001F0012C2A20),
    .INIT_1E(256'h018101C60424808002F00203A00D24132302202222222422262228222A222C22),
    .INIT_1F(256'h13832422209123A38D138324222023A38D93A20D1281A1820280000101A18202),
    .INIT_20(256'h8D1383242220121123A38D138324222012921123A38D1383242220921123A38D),
    .INIT_21(256'h0020200130012E802C2A28262422208020040400002004048080A4A2A011A2A2),
    .INIT_22(256'h242201210303808021030300822200208020200130012280202020013001202E),
    .INIT_23(256'h232221212000208020200130012C802A20200130012A28002020013001280026),
    .INIT_24(256'h8D0D822A28262422202105052005050481A1840480A1840480CE0424802C2D23),
    .INIT_25(256'h032D24218423A08303A0830303012003030020030380222001802C012C008001),
    .INIT_26(256'h840400A0840480CE042480802C2D232000034603032382222001802C012C8302),
    .INIT_27(256'h20040480C604832300034603032382222001802C012A0D8228262422200400A0),
    .INIT_28(256'h8080802C2D832300034603032382222001802C0120022E2C2A2D040020040400),
    .INIT_29(256'h2022220203200130012A8228A3228320013001280226242220A0840404480423),
    .INIT_2A(256'h0203200130012E822CA32283200130012C022AA0830303CA0302A00D24132302),
    .INIT_2B(256'h013001228220A322832001300120022EA0830303C20302A00D24132302202222),
    .INIT_2C(256'h012624A2228320013001240222A0830303CA0302A00D24132302202222020320),
    .INIT_2D(256'h85050504C60424232380808080802C022D03A00D241323022022220203200130),
    .INIT_2E(256'h30012E222022220203200130012E822CA32283200130012C022A2826242220A0),
    .INIT_2F(256'h0320013001228220A322832001300120822EA0840403A20D12A00D2413232001),
    .INIT_30(256'h02202222020320013001248222A322832001300122A08303022C230220222202),
    .INIT_31(256'h0C2D02282302202222020320013001268224A322832001300124A08303022A23),
    .INIT_32(256'h012C822AA32283200130012A8228262004040303C40382222001802C01268283),
    .INIT_33(256'h0130012E822C20040403A20D12A00D241323200130012C222022220203200130),
    .INIT_34(256'h20A222832001300120A08303022C230220222202032001300120822EA3228320),
    .INIT_35(256'h238080802C2D82222001802C012282830C2D022A230220222202032001300122),
    .INIT_36(256'hA38D2393C40382222001802C012C8D02832A28262422208525A58D1546052424),
    .INIT_37(256'h0700A00D241323200180012482032220102E07272626A58D2595C62C05842424),
    .INIT_38(256'h2203A00D24132320018001248203222000A00D24132320018001248203222010),
    .INIT_39(256'h0382222001802C01268302242D842424A38D2393C2038222002001802C01242D),
    .INIT_3A(256'h1323200180012E82832C2A102806A62525A40D2514462604042424A38D2393C6),
    .INIT_3B(256'h1323200180012E82832C2A00A00D241323200180012E82832C2A100600A00D24),
    .INIT_3C(256'h0D95C205252424232380808080802C2D228322002001802C012E2D2203A00D24),
    .INIT_3D(256'h200180012602032422902009282827A70D97C42E2C2A28262422200786A6A6A5),
    .INIT_3E(256'h20018001260203242200A00D241323200180012602032422900900A00D241323),
    .INIT_3F(256'h23A3222001802C012603022D04A423A322002001802C01262D2203A00D241323),
    .INIT_40(256'h28900700A00D241323200170012C02832A28902607A62625A40D2514460404A4),
    .INIT_41(256'h2C2D2203A00D241323200180012C02832A2800A00D241323200180012C02832A),
    .INIT_42(256'h02032E2C2D05A52424A38D2393C60382222001802C012C2D2203002001802C01),
    .INIT_43(256'h200170012602832422902007A62625A40D2514460404A423A3222001802C0120),
    .INIT_44(256'h20017001260283242200A00D241323200170012602832422900700A00D241323),
    .INIT_45(256'hA38D2393C20382222001802C01262D2203002001802C01262D2203A00D241323),
    .INIT_46(256'hA00D241323200170012002032E2C902A07262625A58D2595C628260584A42424),
    .INIT_47(256'hA00D241323200170012002032E2C00A00D241323200170012002032E2C900700),
    .INIT_48(256'h8302202D03A38D2393CA0382222001802C01202D2203002001802C01202D2203),
    .INIT_49(256'hA190A0002023200707A69226252524242380808080802C2D82222001802C0122),
    .INIT_4A(256'h2283200120012C80022A28262422202E2C2A2826242220A2870707A28391A111),
    .INIT_4B(256'h100626A58D2595C02E05842424A420A220A0202023220203200120012E822CA3),
    .INIT_4C(256'h00A00D241323200170012482032220100600A00D241323200170012482032220),
    .INIT_4D(256'hA023A223A4200202002001802C01242D2203A00D241323200170012482032220),
    .INIT_4E(256'h20012C822AA32283200120012A0082282624210606052025842302A00D241323),
    .INIT_4F(256'h01228203202E100626A58D2595C02C05842424A420A220A02020232202032001),
    .INIT_50(256'h01228203202E00A00D24132320017001228203202E100600A00D241323200170),
    .INIT_51(256'h22A08D231323A023A223A4200202002001802C01222D2203A00D241323200170),
    .INIT_52(256'h220203200120012A8228A322832001200128008226242221050504A024042483),
    .INIT_53(256'h1323200170012082832E2C1005A5A40D2514402A04042424A420A220A0202023),
    .INIT_54(256'h1323200170012082832E2C00A00D241323200170012082832E2C100500A00D24),
    .INIT_55(256'h238020238222A08D231323A023A223A4200202002001802C01202D2203A00D24),
    .INIT_56(256'h012127210707800121A1800121A18021A027002027200707A682922625252424),
    .INIT_57(256'h2C2A2826242220A285050380A20002222322070781A28181222721070701A101),
    .INIT_58(256'hA420A220A020202322020320012001288226A32283200120012600022422202E),
    .INIT_59(256'h2C2A100500A00D241323200170012E82832C2A1005A5A40D2514402804042424),
    .INIT_5A(256'h012E2D2203A00D241323200170012E82832C2A00A00D241323200170012E8283),
    .INIT_5B(256'h2827272626252524242380202302A00D241323A023A223A4200202002001802C),
    .INIT_5C(256'h0080200303225320DB2A22202D242824262924252226202C2C2B2B2A2A292928),
    .INIT_5D(256'h22202001200120022E2C2A28262422202E2C2A28262422202E2CA085050322A0),
    .INIT_5E(256'h2A282001D001282620012001268302240303200120012483022203032001D001),
    .INIT_5F(256'h22262228222A222C222E02032001D0012E2C200120012C83022A03032001D001),
    .INIT_60(256'h10012202202EA084040423232001D0012E83832323200110012E222022222224),
    .INIT_61(256'hD0012A2820011001288302260303200110012683022403032001D00124222001),
    .INIT_62(256'h222A222C222E02032001D001202E200110012E83022C03032001D0012C2A2001),
    .INIT_63(256'h2220A084040423232001D0012083832323200110012022202222222422262228),
    .INIT_64(256'h200110012A8302280303200110012883022603032001D0012624200110012402),
    .INIT_65(256'h222E02032001D0012220200110012083022E03032001D0012E2C2001D0012C2A),
    .INIT_66(256'h0124222D2001D0012283832323200110012222202222222422262228222A222C),
    .INIT_67(256'h802C01262D02002023229A032001802C0126242D022001802C01242D2001802C),
    .INIT_68(256'h260220011001260220011001260220232001500126022001802C01262D022001),
    .INIT_69(256'h200110012602200110012602A322200110012602200110012602A32220011001),
    .INIT_6A(256'hA3222001802C01262D0303022001802C01262D02200110012602200110012602),
    .INIT_6B(256'h00A00D241323200160012E82032C2A10280727A6A6A58D2595C6260584242423),
    .INIT_6C(256'h03A00D241323200160012E82032C2A00A00D241323200160012E82032C2A1007),
    .INIT_6D(256'h012E2D022001802C012E2D03A2222001802C012E2D2203002001802C012E2D22),
    .INIT_6E(256'h8D2393CE0382A2222001802C012E822D2303A32224A022A02023A0222001802C),
    .INIT_6F(256'h002001802C012E2D9204002001802C012E2D9204231E1DA023A083039E0423A3),
    .INIT_70(256'h2C012002832D240200442E82A28044A42203032001802C012E2D220303000000),
    .INIT_71(256'h01200302802001802C01202D24232304022001802C01202D2424232302200180),
    .INIT_72(256'h222426282A2C2E202224020605050404030320011001220220A0830303200110),
    .INIT_73(256'h20011001260224A083030320011001240222A0830303200110012282830C0220),
    .INIT_74(256'h10012E82032C2A040303200110012A0228A083030320011001280226A0830303),
    .INIT_75(256'hA08303032001100122228320011001228203202EA40303200110012E22832001),
    .INIT_76(256'hA083030320011001280226A08303032001100126830224030320011001240222),
    .INIT_77(256'hA0830303200110012E022CA0830303200110012C83022A0303200110012A0228),
    .INIT_78(256'h24030320011001240222A083030320011001220220A08303032001100120022E),
    .INIT_79(256'hA0830303200110012A0228A08303032001100128830226030320011001268302),
    .INIT_7A(256'h8303032001100120022EA0830303200110012E022CA0830303200110012C022A),
    .INIT_7B(256'h030320011001260224A083030320011001240222A083030320011001220220A0),
    .INIT_7C(256'h200110012A82830C82A022A2020303200110012A28028320011001280226A083),
    .INIT_7D(256'h2E2303200110012E022CA0830303200110012C022AA0830303200110012A0283),
    .INIT_7E(256'h20011001262402832001100124022220A0840404202322020320011001208302),
    .INIT_7F(256'h01288302260303200100012682830C0220222402042004040303022022220203),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[15] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[15] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\addra[15] ),
        .ENBWREN(\addrb[15] ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (\douta[23] ,
    \doutb[23] ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[23] ;
  output [7:0]\doutb[23] ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[23] ;
  wire [7:0]\doutb[23] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[23:16][0:4095]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h004C23CC6EBED170F049197F9920804CA08000CC16164C660090011202030101),
    .INIT_01(256'h0003430040000303007300B0100383000010108210104200020080808E484800),
    .INIT_02(256'h0210208383820210204343420210200303020002008212004212000203030000),
    .INIT_03(256'h02014181D08111020141819081110201418150811191618171514D8DCD0D4D00),
    .INIT_04(256'h02C20001C110411101C101100111100141814190C111011002C2004181108111),
    .INIT_05(256'h0020412221C103430022C1310282000081814110C11110010141819081110110),
    .INIT_06(256'h8303104243030110020301032031031003410231430043038300238142520383),
    .INIT_07(256'h11024100C101C00111011002C2008141D0C111814110C11151614D8D00031082),
    .INIT_08(256'hD08111C1024100014181C081111001C101C15041111001811002C200C1015001),
    .INIT_09(256'h41C101000111100102418141C0C1116151030002014181908111024100014181),
    .INIT_0A(256'h0111100182418141C0C1111001824141818081111001424101C1404111100142),
    .INIT_0B(256'h42020123224210120543B513054201940214438303811342C141110181C10100),
    .INIT_0C(256'h62020200C2D6D521D6D300C284C2D6D542D6D3A5C263C2D6D510D6D394C23182),
    .INIT_0D(256'h1531A193613203030002062024150406938632030300C241D6E62745E607A386),
    .INIT_0E(256'h81115101C110411151C10190011151000062F0814110C11151614D0002101140),
    .INIT_0F(256'hD001110281C1019001110281C10150011151814110C111035103830030418190),
    .INIT_10(256'hD0411102C101C190411102C101C150411151C10100011103038300300281C101),
    .INIT_11(256'h1151814100C111035103830020008010B0000141811081110103830002C101C1),
    .INIT_12(256'h1102C101C110411151C101C0011103038300300281C1019001110281C1015001),
    .INIT_13(256'h8100811151C063410001C1C04111030383003002C101C180411102C101C14041),
    .INIT_14(256'h63C12002011002C200418180811102011002C200418140811102011002C20041),
    .INIT_15(256'h8341738173C17341738173C1530153C2028141C0C11104516104840040418010),
    .INIT_16(256'h030300B010038300B010038300B0100383000364306DA5012541A38193C19301),
    .INIT_17(256'h00B010038300B010038300B01003830043030383000000000383000003430000),
    .INIT_18(256'h10038300B010038300B010038300830303830000000003830000034300000303),
    .INIT_19(256'h0FC11103008010644100642000030383000000000383000003430000030300B0),
    .INIT_1A(256'h01C10C0D411103715161A10082C04D8D00108141CFC111018100534100408141),
    .INIT_1B(256'h51410062C012010053C101620041810C0D811151410062C012810053C1816200),
    .INIT_1C(256'h810053C1816200C1010C0D011151410062C012410053C141620081410C0DC111),
    .INIT_1D(256'h0111F0128162F0C1010001117151130140F0120162F04181C08111510C0D0112),
    .INIT_1E(256'h0100011171511301004181008111F0120162F041810081117151138140C10100),
    .INIT_1F(256'h817D624123017D62C1238101C19F411103511381C0C101000111F0128162F0C1),
    .INIT_20(256'h4100C1115100024181908111F01062F0418140811151007D624123017D62C123),
    .INIT_21(256'h4111035130C0C101500111F03062F0C1010001115140814150C111F02062F081),
    .INIT_22(256'h50C111F01062F0814110C1117161120150120172F003026241628162C101C11F),
    .INIT_23(256'h628162C101C1DF4111035120C0C101100111F02062F0C101D001115180028141),
    .INIT_24(256'h007D620123017D6201234141811F811103611241C001C1104111124172F00302),
    .INIT_25(256'h504111F02062F001C110411151C0C101500111F01062F0C1011001115161A14D),
    .INIT_26(256'hC16201624181411FC111035130C04181508111F03062F04181108111514001C1),
    .INIT_27(256'hC11041115140C101500111F01062F0C10110011151135D744123810073F00262),
    .INIT_28(256'h5D744123810073F00262C1620141811F8111035120C001C1504111F02062F001),
    .INIT_29(256'h56008006D200008010B0410DC3230686008202B0410585000DB3234D0C0D0113),
    .INIT_2A(256'h0D53240D5524B0111012400D53240D5524300D5323014031C2000DC523008010),
    .INIT_2B(256'hB0410383004152828341524243410203024D000000000000001005B020212130),
    .INIT_2C(256'h7300C24152830221415243021041030200000000100330001020821012420202),
    .INIT_2D(256'h7383830251738343024073030230000110824210214143420141520342200031),
    .INIT_2E(256'h4D00031002C200011082421030402351434222315083034283504100637300C2),
    .INIT_2F(256'h1001014181C182420241B01002820081415FC111314252615101112171834303),
    .INIT_30(256'h40100303007330420101C1DF411131211001014181C1C101DF01116352423121),
    .INIT_31(256'h55224D8DCD0D00000000001002013010400062008200B02003830001018110C1),
    .INIT_32(256'h410C0DC1110504915161112101201000B310423183428320454243100542030D),
    .INIT_33(256'h0DC11141C101810141100020620081410C0DC11141C101014181002010620081),
    .INIT_34(256'hB04103830041528283415242434102030293200010002000300000620081410C),
    .INIT_35(256'h02B052521251434402414301034D0C0D04000000100530001020821012420202),
    .INIT_36(256'h52025103040241C31183A40000800080008010B05204840043B0525222518384),
    .INIT_37(256'h03040231432103A40000800080008010B052048400C3B052522251838402B052),
    .INIT_38(256'h30240000620000800080008010B01002820043B010101131434202B001000241),
    .INIT_39(256'h41819F811151413161715222C35212830243B041048400034D00103400203400),
    .INIT_3A(256'h00000002011002410000620082B02003830001018110C1401003030073304201),
    .INIT_3B(256'h8300111100C31020C31012830243B041048400034D0000000000100201100241),
    .INIT_3C(256'h05850DB5224D8DCD0D0000000000100410031000800410031000720082B02003),
    .INIT_3D(256'h02000000100410C502B0100203830066200C0D05040203D610450D5622438545),
    .INIT_3E(256'hB010030484008301B0100383000341814140C111035161048400600C0D050503),
    .INIT_3F(256'h004302038300400210030404000240009400040300801084008004A400008010),
    .INIT_40(256'h000240009400440300801084008004A400008010B010430484008301B0100383),
    .INIT_41(256'h008004A400008010B010830484008301B0100383008302038300400210430404),
    .INIT_42(256'hC111035161048400400002038300400210830303000240007400830300801084),
    .INIT_43(256'h0003031200034300B010038300102083038310204403431004030103418141D0),
    .INIT_44(256'h0341814110C11103516104840050000203830040020000830312100043031210),
    .INIT_45(256'h9400C303813141830382213143034210200303010241C1010F01110351018343),
    .INIT_46(256'h4004C40040528443024004438213405204C40052628443425244438280332313),
    .INIT_47(256'h004D0003400300020200B01002820013112002C2002041424302200443421311),
    .INIT_48(256'h046191C520005D74C123014181DF811105046191C57151A1104402420D832383),
    .INIT_49(256'h6381226200F35D74C1230141811F811105046191C05D74C1230141811F811105),
    .INIT_4A(256'h81C101DF0111045181B520805D74412381C1015F0111045181B510430343410D),
    .INIT_4B(256'h830D832383004D00000C0D0141F35D74412381C1011F0111045181805D744123),
    .INIT_4C(256'h2083101143010384440403A461A1512004108543820410454342041005430243),
    .INIT_4D(256'h0D4101F28102C1401002020053013041815F8111039181844404809520400410),
    .INIT_4E(256'h008010B010218302B010104302B001000302731042318342304342300342000C),
    .INIT_4F(256'hB000038300821020831011430103027320008200000010620082730000800080),
    .INIT_50(256'h100303007330420141819F811151000000106200008010530080037200008010),
    .INIT_51(256'h1094F00D83224D000000106200008010530080037200008010B0000383008240),
    .INIT_52(256'h41424404B033310404A4516171011121A110445184444044443004440D832400),
    .INIT_53(256'h4344330404A420800484C0008010940084A40000800080008010B041528404B0),
    .INIT_54(256'h42520481C0008010940000801084008004A400008010B0320484008441528441),
    .INIT_55(256'h8010530080037200008010B000038300824010030300733042C101C11F411131),
    .INIT_56(256'h41815F811103514181C10D640123001083F00D63412212816200008010620000),
    .INIT_57(256'h22000018F00D03224D8DCD0D4D8DCD0D4D000000000C0D01414181C112016200),
    .INIT_58(256'h39A101B151A161C1D1F110480D27283189488620494846100948060D15280D03),
    .INIT_59(256'h80008010051020C71011870147B041070383007920C041810C0D811107040803),
    .INIT_5A(256'h00820D538122C16200008010B00002820040006200030141810C0D8111040807),
    .INIT_5B(256'h1072F003C13083018231430142200341000281100242000C0D01C11241000062),
    .INIT_5C(256'h8001C10C0D411101C14181C110620001C11F4111AD1000211121010D53812240),
    .INIT_5D(256'h03050451618171A1000D94240000A4F00D93224D8D00100C0D01C11241620000),
    .INIT_5E(256'h81410C0DC111045141000D648123000083F00D63C1221201620041810C0D8111),
    .INIT_5F(256'hC12212816200C1010C0D0111045141000D648123000083F00D63C12212416200),
    .INIT_60(256'h001000100C0D01C112C1620001C10C0D4111045141000D648123000083F00D63),
    .INIT_61(256'h103951A1611101C1B130000039F0080D13224D8DCD0D4D8DCD0D4D8D00100010),
    .INIT_62(256'hC10C0D41110704060327A110460DE7293187468720494647100946070D362900),
    .INIT_63(256'h01C10C0D411104060780008010051020C71011870147B041070383007720C001),
    .INIT_64(256'h620001C10C0D41110441000D638123400073F042C1B01002C102020040006200),
    .INIT_65(256'h000D638123C00073F0C2C1620001C10C0D41110441000D638123800073F082C1),
    .INIT_66(256'h0080108000620010801080108001C10C0D411101C140620001C10C0D41110441),
    .INIT_67(256'hF082C1620001C10C0D41110441000D638123400073F042C10C0D410112816200),
    .INIT_68(256'h110341000D638123C00073F0C2C1620001C10C0D41110441000D638123800073),
    .INIT_69(256'h00100C0D41011281620010801080108001C10C0D411101C140620001C10C0D41),
    .INIT_6A(256'h318A4A84204A4A44100A4A040D47290049F00D33224D8DCD0D4D8DCD0D4D8DCD),
    .INIT_6B(256'hC11105060A03050AC1411121012010006A31E151A16171D18191210111F1104A),
    .INIT_6C(256'h41C101C14181100020620081410C0DC11141C1014181C1002010620081410C0D),
    .INIT_6D(256'h11050A038081410C0DC111050A03CA208010802080308000620081410C0DC111),
    .INIT_6E(256'h0341B01003830003810C0D41C1011281006200820D53C12201620081410C0DC1),
    .INIT_6F(256'h248010A40111213151F0040141840183314401432004010003C110034300B000),
    .INIT_70(256'h814062000080C1010C0D0111C101C10141106200C1015F0111312110040D95C1),
    .INIT_71(256'h00B5F00DA3224D8D0C0D41C1011281404053018153410102C102010281410241),
    .INIT_72(256'h0D64C1230083F00D630122124181410C0DC1110405055161918171A1000DA425),
    .INIT_73(256'h110405518141000D64C1230083F00D6301221281C1010C0D0111040551814100),
    .INIT_74(256'h120141810C0D81110404518141000D64C1230083F00D63012212C101C10C0D41),
    .INIT_75(256'h0171F1E191D181A130005AF0090D33224D8DCD0D4D8DCD0D4D8DCD0C0D014101),
    .INIT_76(256'h000D6301238073F082C101C10C0D411108050531000DA92540B5F0495A516121),
    .INIT_77(256'hC14001C10C0D41110404C181000D6301238073F0C2C101C10C0D41110404C181),
    .INIT_78(256'h012010005A311048318A4884204A4844100A48040D482A8001C10C0D41114181),
    .INIT_79(256'h810C0D81110181C1014181002010620041810C0D811105060803050AC1111121),
    .INIT_7A(256'h0803CA208010802080308000620041810C0D81110181C1810141100020620041),
    .INIT_7B(256'h24C094F043C1B00003410281C0620041810C0D81110508038041810C0D811105),
    .INIT_7C(256'h0D81110404C181000D6301238073F082C141810C0D8111050405C181000D8401),
    .INIT_7D(256'h810C0D81114181C14041810C0D81110404C181000D6301238073F0C2C141810C),
    .INIT_7E(256'h011105040561C181000D8401240094F0439451300094F0030D63412212814041),
    .INIT_7F(256'h0C0D011141818130C1010C0D01110403C181000D6301238073F08281C1010C0D),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra[11:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[11:0],1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[23] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[23] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2 
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (\douta[23] ,
    \doutb[23] ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[23] ;
  output [7:0]\doutb[23] ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[23] ;
  wire [7:0]\doutb[23] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[23:16][4096:8191]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h01238073F04281B00002410281806200C1010C0D01110404056101C18180C101),
    .INIT_01(256'h010C0D01110403C181000D6301238073F08281C1010C0D01110404C181000D63),
    .INIT_02(256'h3322034D8DCD0D4D8DCD0D4D8D0C0D018141124140C1010C0D011141818130C1),
    .INIT_03(256'h8B31D151A16171C181219111F101E1104A0D7B29438A4A0A8A0D46290049F00D),
    .INIT_04(256'h050A0B0AC00080100610CA0BB0100B058500BB20C081410C0DC111050A050B03),
    .INIT_05(256'h81B01003830003C10C0D81014112C1006200820D53012241620081410C0DC111),
    .INIT_06(256'h8010940111213151F00341418401833144014320040100034110034300B00003),
    .INIT_07(256'h4062000080C1010C0D0111C141C10141106200C1010F0111312110040D840124),
    .INIT_08(256'hB5F00DA3224D8D0C0D81014112C1404053018153414102C10201028141028181),
    .INIT_09(256'h64C1230083F00D630122124181410C0DC1110405055161918171A1000DA42500),
    .INIT_0A(256'h0405518141000D64C1230083F00D6301221281C1010C0D01110405518141000D),
    .INIT_0B(256'h0141810C0D81110404518141000D64C1230083F00D63012212C101C10C0D4111),
    .INIT_0C(256'h6101E171D1B1C181A1300039F0080D13224D8DCD0D4D8DCD0D4D0C0D01410112),
    .INIT_0D(256'h8141000D63C1238073F08281C1010C0D011107050411000D982440A4F0483951),
    .INIT_0E(256'h01418140C1010C0D011104048141000D63C1238073F0C281C1010C0D01110404),
    .INIT_0F(256'h010C0D011105070409035A1110470D2A2943894909870D3729C0C1010C0D0111),
    .INIT_10(256'h81C06200C1010C0D011104070909C00080100610C909B01009048400AA20C0C1),
    .INIT_11(256'h238073F08281C1010C0D01110504058141000D84C124C094F04381B000034102),
    .INIT_12(256'h0C0D011104048141000D63C1238073F0C281C1010C0D011104048141000D63C1),
    .INIT_13(256'hC1240094F0439451300094F0030D630122124140C1010C0D011101418140C101),
    .INIT_14(256'h0D811104038141000D63C1238073F0820141810C0D8111050405618141000D84),
    .INIT_15(256'h0241028180620041810C0D8111040461C1410041810C0D81110141013041810C),
    .INIT_16(256'h000D63C1238073F0820141810C0D811104048141000D63C1238073F04201B000),
    .INIT_17(256'h4D8DCD0D0C0D01410112C14041810C0D81110141013041810C0D811104038141),
    .INIT_18(256'hE1D1B1A1000D86244094F0470761C15130000771F00706060307C7004D8DCD0D),
    .INIT_19(256'hC13001C10C0D411104034141000D6381238073F082C101C10C0D411104050402),
    .INIT_1A(256'hB00002010201C0620041810C0D811107040291E1D1B1A10001C10C0D41110141),
    .INIT_1B(256'h41000D6381238073F082C141810C0D81110504034141000D748123C083F043C1),
    .INIT_1C(256'h020141810C0D8111C14181104041810C0D81110141C13041810C0D8111040341),
    .INIT_1D(256'h03023183428320444243100442034D8D000000000010B000028200B010020200),
    .INIT_1E(256'h034230834233617303C30073714342608342005343338300C251830240430230),
    .INIT_1F(256'hA410424D8DCD8F0C02038203021003C3001020034220434223223103C3002161),
    .INIT_20(256'h82000002420000020200B010028200B0100282000D5322F2F203030304840004),
    .INIT_21(256'h02034402030402024D0C0D000300820203004302030003026420000D53240002),
    .INIT_22(256'h0010824283008010B001100484002004C4000D00100404001004420394100384),
    .INIT_23(256'h6200800282000002020062006400008010B001100282002002C2000D00100202),
    .INIT_24(256'h0303001201000202000041815081117110024200439420000302020000028200),
    .INIT_25(256'h10028200100D0010028200001010002082428310044203943000020001030300),
    .INIT_26(256'h00040210044203944000021003030000030300120110020200004181D0811171),
    .INIT_27(256'hC1104111000000040400B0416151217100044400311000200184022084428310),
    .INIT_28(256'h0200B041013141024200200142022043428142C1100D00100282001002C20001),
    .INIT_29(256'h002021310102C200024200100D00100282001002C2004181D081111010304002),
    .INIT_2A(256'h4D8DCD0D4D8D000002011002C2000002020040028200B00002820000000102C2),
    .INIT_2B(256'h098101F1C1D1A111E10161B1911151A106002409C900460D162212004D8DCD0D),
    .INIT_2C(256'h2202414062000080008010B000028200B0100202000281C1010C0D0111080309),
    .INIT_2D(256'h20838310204343100303C102016200C1010C0D011103410381007203C1620301),
    .INIT_2E(256'h32414003C10201B030028200304152828341524243410203410201208183C110),
    .INIT_2F(256'h40400201823201423201020110810010B0000282004002014083823241404342),
    .INIT_30(256'h8D51CD910D4D8DCD0D4D8DCD0D4D8DCD0D4D8DCD0D4D000C0D01418181F24140),
    .INIT_31(256'h617101A111913181415191E18171C121F11109D100250BCB0061835840014DA1),
    .INIT_32(256'h73000080008010B000038300B0100303000281C1010C0D011106050B03B15101),
    .INIT_33(256'h10410000B01002820000102083821020434210038102C10053005D74012341F0),
    .INIT_34(256'h716101811043104104C3830D74412303810000020082120042120002C1100201),
    .INIT_35(256'h450000050500B031058500B0310585000DA6C125F5F5252525C10585000401A4),
    .INIT_36(256'h0C0D0111038140242185032421450324C1210403A420402DA526210585000005),
    .INIT_37(256'h932342815D740123416203012241C1010C0D0111C1810283024302010341C101),
    .INIT_38(256'h06410DB32302BDC3231000BDC32300B01005C58105C500C2038403440304410D),
    .INIT_39(256'h8503450305C10DB323C203018323014323010310010585000DB3230586054605),
    .INIT_3A(256'h00208583132020454313202005031020318583203145432005C103C103430003),
    .INIT_3B(256'h2083821020434210038102C1620001C10C0D4111060601C1060100004146C503),
    .INIT_3C(256'h404343334140034103C1B030038300213141838231414342310302C110010010),
    .INIT_3D(256'h4102414040030183330143330103C120C10021B0010383004003014083833341),
    .INIT_3E(256'h4102020001C10C0D411101C1C101F2024101C10C0D4111C1F303010382034203),
    .INIT_3F(256'h118181C11181038113002002C28102020053C1207D540122F013C0534140B000),
    .INIT_40(256'h0131910500140ACA004D8DCD0D4D8DCD0D4D8DCD0D4D8D0000004001C10C0D41),
    .INIT_41(256'h028200B0100202000281C1010C0D01110A02030A8111C151F1D1216101B1A1E1),
    .INIT_42(256'hF30404044104840003818351104203C10D53012202410062000080008010B000),
    .INIT_43(256'h6320000D6424000383000003430000030300B010038300B0100383000D7323F3),
    .INIT_44(256'h410001C10C0D4111C181C101C10C0D4111010003008302030043020341000302),
    .INIT_45(256'h820000B0100282000010208382102043421003C10241620001C10C0D41110103),
    .INIT_46(256'h0D4D8DCD0D4D000002002083821220204342122020030102411002C2C1008102),
    .INIT_47(256'h5161A1A1710B8B001020838B1020434B10030B0B0D622464004D8DCD0D4D8DCD),
    .INIT_48(256'hC1010C0D0111080B31E161419121D1C1F1010151B1100BCB000D622B14B00081),
    .INIT_49(256'hC103010001C10C0D41118141C101C10C0D411151C103010D5341220281406200),
    .INIT_4A(256'h0102820000B0100282000010208382102043421003410281620001C10C0D4111),
    .INIT_4B(256'hB1100B8B000D6224004002002083821220204342122020038102C11002C2C100),
    .INIT_4C(256'hC103410D534122028140620081410C0DC111080B31E161419121D1C1F1010151),
    .INIT_4D(256'h034102816200C1010C0D0111C1030100C1010C0D0111814181C1010C0D011151),
    .INIT_4E(256'h122020038102C11002C281000102820000B01002820000102083821020434210),
    .INIT_4F(256'h10208483102044431004C103030D6301226200E2414002002083821220204342),
    .INIT_50(256'h0381100484000D63220001C10C0D411103811004C4000D632312B00051038300),
    .INIT_51(256'hC0D251C17181A191B161004D8DCD0D4D00000C0D4101C101E2C101C10C0D4111),
    .INIT_52(256'hC11041810C0D8111414101016041810C0D8111040307D1F70504830443040306),
    .INIT_53(256'hC111414101416081410C0DC11104057181F505C104840444040104414281C053),
    .INIT_54(256'h60C1010C0D011104057181F505C104840444040104418281C053C12081410C0D),
    .INIT_55(256'h1104057181F505C10484044404010441C281C053C130C1010C0D011141410181),
    .INIT_56(256'h03C1038303430301034102810053C14001C10C0D4111414101C16001C10C0D41),
    .INIT_57(256'h37230242C2424D8DCD0D4D8DCD0D0C0D414101016041810C0D811103035181F3),
    .INIT_58(256'h06801251D10181B191F171C16121A1E1000D08230DF82302820787074707070D),
    .INIT_59(256'h208383102043431003810303824181410C0DC11104080911F905048804480408),
    .INIT_5A(256'h410C0DC111034110048400828081410C0DC11103411004C400C2B00003830010),
    .INIT_5B(256'h0571C1F50501048404440441048142C18053011081410C0DC111018181414081),
    .INIT_5C(256'h1004C400C2B000038300102083831020434310038103038281C1010C0D011104),
    .INIT_5D(256'h010C0D01110181818140C1010C0D01110341100484008280C1010C0D01110341),
    .INIT_5E(256'h030382C101C10C0D4111040571C1F50501048404440441048182C180530120C1),
    .INIT_5F(256'h00828001C10C0D411103411004C400C2B0000383001020838310204343100381),
    .INIT_60(256'h04410481C2C18053013001C10C0D4111018181C14001C10C0D41110341100484),
    .INIT_61(256'h10208383102043431003810303820141810C0D8111040571C1F5050104840444),
    .INIT_62(256'h41810C0D8111034110048400828041810C0D811103411004C400C2B000038300),
    .INIT_63(256'h030351C1F30301038303430341038102C18053014041810C0D81110181810140),
    .INIT_64(256'h411004C400C2B00003830010208383102043431003810303824181410C0DC111),
    .INIT_65(256'h81410C0DC111018181414081410C0DC111034110048400828081410C0DC11103),
    .INIT_66(256'h440DF422470DE32712460DD322460DC326F2430DC3224D8DDF01410D538122C1),
    .INIT_67(256'h45051003050D66240510838505104345051003050D66240583054305030DF324),
    .INIT_68(256'h104345051003050D64240510838505104345051003050D672405108385051043),
    .INIT_69(256'h000DC523C2C50DD523008265404D8DCD0D1F05050D6224020D53220510838505),
    .INIT_6A(256'h0506E181910DF6230DF62305820485044504050DF5230242C24240C56151A1A1),
    .INIT_6B(256'h0D9323008281624012C1C101DF0111040301410D638122C1C1010C0D01110603),
    .INIT_6C(256'h0DE4224D8DCD000000000C0D018112C101C10C0D411141008361000D8323C283),
    .INIT_6D(256'hF2F80D1825880D0422F80D1825880D03220D0725870DF422F80D18258700A740),
    .INIT_6E(256'h400D54220700008000800080008010F80D1825880D042812F80D1825880D0428),
    .INIT_6F(256'h000C0D41011281C1010C0D011106054073A1B151000D7325C2730D83250082A3),
    .INIT_70(256'h2241128181410C0DC111050404060300E6A151817191B1C1A161000DE625C700),
    .INIT_71(256'h850DA68122950DC523850DA5C1220DA423840D9422950DB523830064400D7401),
    .INIT_72(256'h00008000800080008010950DD523850DA42512950DD523850DA425F2950DD523),
    .INIT_73(256'hC1411281C1010C0D01110C030405034181809361000D9323C30C0D410D5422A4),
    .INIT_74(256'h4081110041810081110351F0800080730063F000024D000000000C0D018101C1),
    .INIT_75(256'h620053F0008201418180811100418140811103F0800080730063F00042014181),
    .INIT_76(256'hA1000DF723C2F7000DF7238267404D8DCD0D4D8DCD80A04181C08111F0800080),
    .INIT_77(256'h4804080D18230D17230DE62742C2060606078700078240F761D1C181A19171B1),
    .INIT_78(256'h01424141810C0D81114181C1016041810C0D8111040808E1F10151F805048804),
    .INIT_79(256'h84000382008361000D8323C283000D83238263401301038403440304C10D8323),
    .INIT_7A(256'h7191A151C1F50501058505450541050DB5230DB4230D75812342C2040404C104),
    .INIT_7B(256'h04C400C2B00003830010208383102043431003C10303820141810C0D81110505),
    .INIT_7C(256'h0C0D81114181C1014041810C0D8111038110048400828041810C0D8111038110),
    .INIT_7D(256'h4D8DCD0D4D8DCD0D000000000C0D011341038403440304C10D83234142414181),
    .INIT_7E(256'hA1011121003821418748124147480241074107F30A0783004D8DCD0D4D8DCD0D),
    .INIT_7F(256'h0381020202C102820001C1CF411108070181C161519111717161B131D1A14121),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra[11:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[11:0],1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[23] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[23] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(addra[13]),
        .I1(addra[12]),
        .O(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(addrb[13]),
        .I1(addrb[12]),
        .O(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (\douta[23] ,
    \doutb[23] ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ,
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [7:0]\douta[23] ;
  output [7:0]\doutb[23] ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  output \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [7:0]dina;
  input [7:0]dinb;
  input [0:0]wea;
  input [0:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]\douta[23] ;
  wire [7:0]\doutb[23] ;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire [0:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[23:16][8192:12287]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hC1220101C10C0D411105030481410585000D84C1230103030000038303430341),
    .INIT_01(256'h00048300A4610004C3A40004830D63228301830D6322038403440304C1030D63),
    .INIT_02(256'h4111060691B1C1C1F606010686064606410606050D96812443C3050505C10585),
    .INIT_03(256'h1103811004C400C2B0000383001020838310204343100381030382C101C10C0D),
    .INIT_04(256'h420101C10C0D4111414181C14001C10C0D4111038110048400828001C10C0D41),
    .INIT_05(256'hC1C10141810280B272501201F2014001C10C0D4111010110038303430303C103),
    .INIT_06(256'h10002105F3063084308431442044200410041003A346054D8DCD0D4D8D000C0D),
    .INIT_07(256'hC0006800C000191346068806480608080D14220012064D8DCD0D4D8DCD0C0DAD),
    .INIT_08(256'hC739090087000DF42228C151D18161E1B17191A1A10010800058008000191206),
    .INIT_09(256'h0988000D142200804001C10C0D411141C11001C10C0D41110807088039F10009),
    .INIT_0A(256'h2909890D3429122909890D3429F22909890D34222909890D332209890D242229),
    .INIT_0B(256'h04070300280008C88001C10C0D41110707080DF4223900008000800080008010),
    .INIT_0C(256'h800080730063F00002814001C10C0D41110181C1C181411001C10C0D41110804),
    .INIT_0D(256'h110001C190411103F0800080730063F000428101C19041110001C150411103F0),
    .INIT_0E(256'h720301124101C1104111A001C1D0411103F0800080730063F000828101C1D041),
    .INIT_0F(256'h800053008000631203C0009300C0007514814304830443048103030D74C12200),
    .INIT_10(256'h4141810C0D81110C03040181C1008041810C0D8111030341000D642273510010),
    .INIT_11(256'hA1C191E1A1F8470012474D8DCD0D4D8DCD0C0D0181C1C181120141810C0D8111),
    .INIT_12(256'h0481030304C1C07203010041810C0D811107040804120012F171D15101B16181),
    .INIT_13(256'h41810C0D811103010004A300008000751003C0009300C0007514414304830443),
    .INIT_14(256'h41810C0D8111C141C181411041810C0D81110141810C0D81110504C141810040),
    .INIT_15(256'h8100C1010C0D0111040241811300536171F242408342010280B2725022811241),
    .INIT_16(256'h003000C1010C0D011101C181410380B3735023411281C1010C0D0111C18141C1),
    .INIT_17(256'h11038300305301418140811103510383003001C1404111500201C1C041110383),
    .INIT_18(256'h73000003530141810081110383003053014181C0811103830030530141818081),
    .INIT_19(256'h0351005001C1C041110303510050C101DF011151814180C11103615104840030),
    .INIT_1A(256'hDF81115101C1C041110303510010C101DF01115181415FC11151418140811103),
    .INIT_1B(256'h038300306200F35D7401234103538153C153015341538153C153015302024181),
    .INIT_1C(256'h81808111030351005001C10041110303510050C1011F0111518141C0C1110351),
    .INIT_1D(256'h53020241811F81115101C10041110303510010C1011F01115181419FC1115141),
    .INIT_1E(256'h31100092504D0000041F04F35D7401234103538153C153015341538153C15301),
    .INIT_1F(256'h230333230310030D622383231303030D62230D54232102020020200131020200),
    .INIT_20(256'h6223131343332100030D622393534333211000030D6223134333231000030D62),
    .INIT_21(256'h1081C101D001111021015131A16171000404000010040400100012022221020D),
    .INIT_22(256'h5101110303000020030300001201104100014181D081111001C101C150411101),
    .INIT_23(256'h4181C1814110C10041814190C11110010141811081110110C101C19041112111),
    .INIT_24(256'h3104045171816101A10585000585000020040400200444000292004D0C0D8101),
    .INIT_25(256'h04C181412301038300038300001003030010034300024181410C0DC111AD1000),
    .INIT_26(256'h0400100444000292004D000C0D01014140B373501381F24181410C0DC1110403),
    .INIT_27(256'h044400028200438140B3735023C1F20141810C0D8111040451617181A1401004),
    .INIT_28(256'h00000C0D01434140B373502381F2C101C10C0D41110451617141401004040010),
    .INIT_29(256'h53015382024181108111036102C10201C150411104716151A10484003083004D),
    .INIT_2A(256'h8202C101500111036102C102814190C1110351038300306200F35D7441238103),
    .INIT_2B(256'h81908111036102C10201C1D041110351038300306200F35D7441234103538153),
    .INIT_2C(256'h01116102C102814110C1110351038300306200F35D744123C103530153820241),
    .INIT_2D(256'h8500308092004D8DCD000000000C0D0401F35D74412341035381538202C10110),
    .INIT_2E(256'h500111015381538202C1011001110361024102814150C111056191517181A105),
    .INIT_2F(256'h024181008111036102410201C15041110351048400300D54235D748123C1C101),
    .INIT_30(256'h035341538202814140C111036102410241818081110383003053C10353015382),
    .INIT_31(256'h03413053C1035381538202C10180011103610241028141C0C1110383003053C1),
    .INIT_32(256'hC1110361024102418140811103615104840030806200F2C1C1010C0D01110C02),
    .INIT_33(256'h014001110351048400300D54235D748123C1814140C111015341538202814100),
    .INIT_34(256'h6102410201C18041110383003053810353C153820201C10041110361024102C1),
    .INIT_35(256'hCD00000C0D01F2C141810C0D81110C0203414053810353015382024181808111),
    .INIT_36(256'h0D6301226200F24181410C0DC1110405056151817191A1F5040DA223A3004D8D),
    .INIT_37(256'h20005D740123418141CFC111060591C1F761104503430DA58124A45100F404C1),
    .INIT_38(256'hC1F35D7401234181410FC111060591C1C05D7401234181410FC111060591C1F7),
    .INIT_39(256'h00F281C1010C0D011104035141F404C10D6301226200F2814081410C0DC11141),
    .INIT_3A(256'h2381C1018F0111050481A1D661104403430D958124945100F404C10D63012262),
    .INIT_3B(256'h2381C101CF0111050481A1C05D74412381C101CF0111050481A1D620005D7441),
    .INIT_3C(256'hB522B2004D8DCD0D4D000000000C0D0101F2C140C1010C0D01114101F35D7441),
    .INIT_3D(256'hC1010F01110807D1F128C1104706460DE326E6B17181619151A1A100F603C50D),
    .INIT_3E(256'hC1014F01110807D1F1C05D74412381C1014F01110807D1F12820005D74412381),
    .INIT_3F(256'h8142C1C1010C0D0111040341F4038182C140C1010C0D01114101F35D74412381),
    .INIT_40(256'hB1E620005D7401234181415FC111060481B1E661104403430D9501249400F403),
    .INIT_41(256'h1141C1F35D7401234181418FC111060481B1C05D7401234181418FC111060481),
    .INIT_42(256'h0405615141F50481C30D6341226200F28181410C0DC111C1C1404081410C0DC1),
    .INIT_43(256'hC1011F0111060481B1E661104403430D9501249400F4038182C101C10C0D4111),
    .INIT_44(256'hC1015F0111060481B1C05D74412381C1015F0111060481B1E620005D74412381),
    .INIT_45(256'h0D6341226200F281C1010C0D0111C1C15040C1010C0D01114101F35D74412381),
    .INIT_46(256'h5D748123C101C15F4111060591B1E681104504440DA50124A4615100F40481C3),
    .INIT_47(256'h5D748123C101C19F4111060591B1C05D748123C101C19F4111060591B1E62000),
    .INIT_48(256'h030351C1700D6341226200F2C101C10C0D4111C101604001C10C0D41114141F3),
    .INIT_49(256'h4510051003C307070004224D8DCD0D4D8D000000000C0D01F20141810C0D8111),
    .INIT_4A(256'h4102814110C1115207A141213181C10161D17151B11191078700300512318521),
    .INIT_4B(256'hD610450DA54124A46100F40441138103C103017381538202C101D00111036102),
    .INIT_4C(256'hC05D7401234181411FC11103059151D620005D740123418141DFC11103059151),
    .INIT_4D(256'h628162C102C1C2024081410C0DC11101C1F35D7401234181411FC11103059151),
    .INIT_4E(256'h50C11103610241024181908111210511915106860030458123C1135D74012341),
    .INIT_4F(256'h811103059151D610450DA54124A46100F4044113811301034173415382028141),
    .INIT_50(256'h811103059151C05D74C1230141819F811103059151D620005D74C1230141814F),
    .INIT_51(256'h415D6301238162C1628102C1C2024041810C0D81110181F35D74C1230141819F),
    .INIT_52(256'h5382024181808111036102410201C1C04111210411816105850030848134C122),
    .INIT_53(256'h23C101C18F411103048151B510440D954124946100F4044103C103C103417301),
    .INIT_54(256'h23C101C1CF411103048151C05D748123C101C1CF411103048151B520005D7481),
    .INIT_55(256'h8D00530132415D630123416281624102C1C2024001C10C0D41110141F35D7481),
    .INIT_56(256'h3107030707002031878520314745200705031007C30707000412224D8DCD0D4D),
    .INIT_57(256'h81C10151D1719105850030408512528303070700414511414703070700310511),
    .INIT_58(256'h03C10301034173C153820201C18041110361028102C101C001114203A1213111),
    .INIT_59(256'h8151B520005D74412381C1018F011103048151B510440D958124946100F40481),
    .INIT_5A(256'h01114101F35D74412381C101CF011103048151C05D74412381C101CF01110304),
    .INIT_5B(256'h0D4D8DCD0D4D8DCD0D4D005301135D7441238162C162010201C20240C1010C0D),
    .INIT_5C(256'h100203C300691369126165554D8D91CD810D214DA18DC1CD0D4D8DCD0D4D8DCD),
    .INIT_5D(256'h115101C10041110351A1D101F151E1113191A1814181C1917171058500300505),
    .INIT_5E(256'h115101C1DF411151C101C001110303510050814140C111030351005041815F81),
    .INIT_5F(256'h8153C1530153415381530202C1015F011151814140C111030351001041815F81),
    .INIT_60(256'h108111047151048400300381C1015F011103E30381C101100111C15301534153),
    .INIT_61(256'hDF81115101C1D041110303510050C101500111030351005081415FC111514181),
    .INIT_62(256'h41538153C153020201C15F411151C101500111030351001081415FC111514181),
    .INIT_63(256'h715104840030038101C15F411103E3038101C1104111015341538153C1530153),
    .INIT_64(256'h4181D08111030351005001C15041110303510050C1015F011151814110C11104),
    .INIT_65(256'h0153020241815F81115101C15041110303510010C1015F0111518141DFC11151),
    .INIT_66(256'hC111514141815F811103E30381418110811141538153C153015341538153C153),
    .INIT_67(256'h0C0D01114110405381816200C1010C0D011151C10081410C0DC1110181410C0D),
    .INIT_68(256'h11A0C10150011130C101D001110053C1C1015F011100C1010C0D01110100C101),
    .INIT_69(256'hC101D0011100C101900111034281C10150011100C101100111030281C101D001),
    .INIT_6A(256'h0201C1010C0D011141000090C1010C0D01118140C101D00111A0C101900111F0),
    .INIT_6B(256'h005D74412381C1019F0111060591C1F771104503430DA5C124A46100F40481C3),
    .INIT_6C(256'hF35D74412381C101DF0111060591C1C05D74412381C101DF0111060591C1F720),
    .INIT_6D(256'h01110120C1010C0D01114170C201C1010C0D011141C16040C1010C0D01118101),
    .INIT_6E(256'h63C1226200F20281C1010C0D0111038141F3028103820342038102C1C1010C0D),
    .INIT_6F(256'h40C1010C0D0111C18320C0C1010C0D011101831043B01003C30303008320830D),
    .INIT_70(256'h0D41110402814110005361F242008342812000C1010C0D011181010000404040),
    .INIT_71(256'h411100100001C10C0D411101C14101401001C10C0D4111414101C1C10001C10C),
    .INIT_72(256'h8696A65656B656565656C2020000000000C0418100811103510383000001C100),
    .INIT_73(256'hC101800111035103830030814140C11103510383003041814081110C02030676),
    .INIT_74(256'h40011103046151F01020418100811103510303001001C1C04111035103830030),
    .INIT_75(256'h038300104181C081110102418180811103046151021010C1018001118102C101),
    .INIT_76(256'h0383003001C1804111035103C30010C10180011103035100108141C0C1110351),
    .INIT_77(256'h03830030C101800111035103830030814180C11103035100104181C081110351),
    .INIT_78(256'h510020814140C111035103830030418100811103510383003001C1C041110351),
    .INIT_79(256'h03830030418180811103510383001001C18041110303510020C1010001110303),
    .INIT_7A(256'h83003001C1404111035103830030C1010001110351038300308141C0C1110351),
    .INIT_7B(256'h0000C1010001110351038300308141C0C1110351038300304181808111035103),
    .INIT_7C(256'h4181C081110C020303530153820200418180811161000201C140411103510383),
    .INIT_7D(256'h5181C0C101400111035103830030814100C11103510383000041810081115002),
    .INIT_7E(256'hC101C00111610002814180C1110451610484000073C153820201C10041110303),
    .INIT_7F(256'h41110303510010C1019001110C020304745404C2020484000040035381538202),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra[11:0],1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb[11:0],1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:8],\douta[23] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:8],\doutb[23] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:1],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ),
        .ENBWREN(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea,wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web,web,web}));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(addra[12]),
        .I1(addra[13]),
        .O(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(addrb[12]),
        .I1(addrb[13]),
        .O(\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1 ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
   (\douta[31] ,
    \doutb[31] ,
    clka,
    ena_array,
    enb_array,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [15:0]\douta[31] ;
  output [15:0]\doutb[31] ;
  input clka;
  input [0:0]ena_array;
  input [0:0]enb_array;
  input rsta;
  input rstb;
  input sleep;
  input [10:0]addra;
  input [10:0]addrb;
  input [15:0]dina;
  input [15:0]dinb;
  input [1:0]wea;
  input [1:0]web;

  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_142 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_146 ;
  wire \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 ;
  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [15:0]dina;
  wire [15:0]dinb;
  wire [15:0]\douta[31] ;
  wire [15:0]\doutb[31] ;
  wire [0:0]ena_array;
  wire [0:0]enb_array;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [1:0]wea;
  wire [1:0]web;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED ;
  wire [31:16]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* bmm_info_memory_device = "[31:16][12288:14335]" *) 
  (* box_type = "PRIMITIVE" *) 
  RAMB36E2 #(
    .CASCADE_ORDER_A("NONE"),
    .CASCADE_ORDER_B("NONE"),
    .CLOCK_DOMAINS("COMMON"),
    .DOA_REG(1),
    .DOB_REG(1),
    .ENADDRENA("FALSE"),
    .ENADDRENB("FALSE"),
    .EN_ECC_PIPE("FALSE"),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h00A306010093064100830681007300C1007318430000018200020901F6C17B10),
    .INIT_01(256'h00F7714700000082000200D5014100C5010100C53906000000C2000200B30081),
    .INIT_02(256'h01C1013928090000008200020118000100E80118D408000000C2000200F70041),
    .INIT_03(256'h00820002015B017B5B8B000000820002015A0281015A490A0000008200020139),
    .INIT_04(256'h00000082000200FC015C014C017C019C8E8C000001420002015B018B77CC0000),
    .INIT_05(256'h00B9DAC5000008B100820002015D012DC9C90000092100820002015C01ACAC8D),
    .INIT_06(256'h3F88000009010082000200F501550195012500E5E5C7000008E1014200020159),
    .INIT_07(256'h00F300E38E4700000AE10082000200F800685E4300000A610082000200F70107),
    .INIT_08(256'h00A708410087034100C700F70157019703A7029707C10097BBC4000002820002),
    .INIT_09(256'h039603A6029600C60906000002C20002013300E300D3EAC6000000C200020067),
    .INIT_0A(256'h02C3058102A3030100A35005000003020002013600A6008600F600E600760156),
    .INIT_0B(256'h01148E08000000C20002006301A30381008300E302C100F30153014303730363),
    .INIT_0C(256'h00980188015801480378036802C802A80058A94200000A510302000201340074),
    .INIT_0D(256'h00E200F2015201920322027205C102A2007214C3000002C20002013800F80078),
    .INIT_0E(256'h02A40144618A0000028200020133005300934644000000C20002006201A20082),
    .INIT_0F(256'h00B900A902990149BF0A000002420002013400F400540064015400B401940324),
    .INIT_10(256'h01020002008300B303C100B3EC05000000C20002013900590241005900690159),
    .INIT_11(256'h000002C20002015A0401015A0DCA000000820002006900E900B90149FE8A0000),
    .INIT_12(256'h0582000201AB00EB00BB005B018B08C1017B048100DB035B02AB029B017B568B),
    .INIT_13(256'h02BC02FC025C037C030C02DC02CC047C055C04AC051C056C054C018C828C0000),
    .INIT_14(256'h0246000003C20002011C0141006C01AC008C00EC018C0101016C0001031C0A81),
    .INIT_15(256'h00680441006801A8008800E8018800B802F8025802D8035802A80298034800C8),
    .INIT_16(256'h01A400840124018400B402F4025402D403540314034400A43685000003820002),
    .INIT_17(256'h00000242000200A40741009401640104007400A48C0500000182000200640134),
    .INIT_18(256'h017600D63206000000C20002006500A500950165017501050075031500C5BC86),
    .INIT_19(256'h00D400E4668700000102000200B600660176008600E64BC70000014200020066),
    .INIT_1A(256'h0109007901190139B2C900000202000201770127A28900000082000200B400C4),
    .INIT_1B(256'h02790581027903190399054900C10149EE0A000004420002006900A900990169),
    .INIT_1C(256'h0002006900A900990501009901690129010906C1037902790541027906010309),
    .INIT_1D(256'h0000020200020093010304C1013300730103064101030681010330C8000001C2),
    .INIT_1E(256'h008500E500C58BC600000202000200B800C800D801080178008800E8012838C9),
    .INIT_1F(256'h00D6210600000082000200A400C4F68600000082000200D50105006501750115),
    .INIT_20(256'h000001020002016600D6480600000082000200C400D435860000008200020086),
    .INIT_21(256'h0182000200E60A41016600F600E6AFC700000102000200C600A6016600E66DC7),
    .INIT_22(256'h00F9014908C101494BCA000001C2000200A900C900E9016900F90139E5C90000),
    .INIT_23(256'h00EB018B016B015B00FB014B019BAFCC000001C2000200E90189016901590A81),
    .INIT_24(256'h047D09C1047D0A0104BD047D051D053D077D074D07C1014DDD8A000006820002),
    .INIT_25(256'h00CD012D02ED038D025D0801036D02FD025D026D027D0901047D0941047D0981),
    .INIT_26(256'h3DCC000000000AC1F501000C000D0B010A1108000800008D00DD00AD009D010D),
    .INIT_27(256'h01B0A010004D400040C93F003F803D2A3AB33E2A3C08394D4049BF803FC93F49),
    .INIT_28(256'h000001B0A000000001B0A00100029EC20000000C000D101000029F0200000000),
    .INIT_29(256'h0001000D005D9F4200000082000200029EC20000FC9F0810FD1F102000029E82),
    .INIT_2A(256'h00029E420000101010001000F79F000120000041FF81000C000D008100112010),
    .INIT_2B(256'h00000810102000029DC200000010101100029E0200000801100200029E820000),
    .INIT_2C(256'h9D0200000020103100029D4200000820102200029D8200001011101110101000),
    .INIT_2D(256'hA00000029CC200000041FF81EF5F008100112010000120000000081010110002),
    .INIT_2E(256'h082000029CC200001011000100029C82000003800002000100020082000201B0),
    .INIT_2F(256'h0240001200020082000201B0A00100029C420000000200420012000200820002),
    .INIT_30(256'h03B0A020001100029C020000000200420012000200820002080100029CC20000),
    .INIT_31(256'h00410081FF41E91F00C1001101800081FF41E51F00C10011080100029C420000),
    .INIT_32(256'hA00000029CC200000041FF81DB5F008100110011200000029E42000000002010),
    .INIT_33(256'h00820002082000029CC2000000029C82000003000002000100020082000201B0),
    .INIT_34(256'h9C8200000340001200020082000201B0A00100029C4200000002004200120002),
    .INIT_35(256'h001100029C020000000200420012000200820002080100029CC2000010200002),
    .INIT_36(256'hFF41CF1F00C1001101800081FF41D61F00C10011080100029C42000003B0A020),
    .INIT_37(256'hBEAA3E4CBE123DE3BDB73F193EE0401C3F493F803FC93DCC0000201000410081),
    .INIT_38(256'h10310002DF820000002010230002DFC200001013101210121011101110101000),
    .INIT_39(256'h002010610002DEC20000002010510002DF020000002010410002DF4200000020),
    .INIT_3A(256'h008100112010000103B0A0110002DE42000020000000001010110002DE820000),
    .INIT_3B(256'hDD8200000002DDC2000007B0A0110002DE0200000000201000010041FF81F41F),
    .INIT_3C(256'h00410081FF41ED1F00C10011201000210001181100400002DD82000008300002),
    .INIT_3D(256'h0101001120100021000118110002DD8200000002DD4200000000201000010000),
    .INIT_3E(256'h00610001005100220000D210000000020000201000010800008100C1FF01E81F),
    .INIT_3F(256'h0012004D00000053001200320000FFB1004100010001005100220000FFB10041),
    .INIT_40(256'h01010141FE81FB9F018100110004007101A10081006100510014006200000064),
    .INIT_41(256'h006DFF83000000820002000C000D00C100810001000C000D00C1004100810053),
    .INIT_42(256'h00320041FF81FBDF008100110051000000620000000C000D100305F50000005D),
    .INIT_43(256'h030000620000EB1F030200410081FF41FBDF00C1001100614063000100730012),
    .INIT_44(256'h00A0F61F0040405000010041FF81E81F008100110003005102D002530000EA1F),
    .INIT_45(256'h008D0000008D0000008D0000000000000082000000820000008200000000000D),
    .INIT_46(256'h00000000000000000000000000000000000000000000000000000000F00D0000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RDADDRCHANGEA("FALSE"),
    .RDADDRCHANGEB("FALSE"),
    .READ_WIDTH_A(18),
    .READ_WIDTH_B(18),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SLEEP_ASYNC("FALSE"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(18),
    .WRITE_WIDTH_B(18)) 
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({addra,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({addrb,1'b0,1'b0,1'b0,1'b0}),
        .ADDRENA(1'b0),
        .ADDRENB(1'b0),
        .CASDIMUXA(1'b0),
        .CASDIMUXB(1'b0),
        .CASDINA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINB({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CASDINPA({1'b0,1'b0,1'b0,1'b0}),
        .CASDINPB({1'b0,1'b0,1'b0,1'b0}),
        .CASDOMUXA(1'b0),
        .CASDOMUXB(1'b0),
        .CASDOMUXEN_A(1'b0),
        .CASDOMUXEN_B(1'b0),
        .CASDOUTA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED [31:0]),
        .CASDOUTB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED [31:0]),
        .CASDOUTPA(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED [3:0]),
        .CASDOUTPB(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED [3:0]),
        .CASINDBITERR(1'b0),
        .CASINSBITERR(1'b0),
        .CASOREGIMUXA(1'b0),
        .CASOREGIMUXB(1'b0),
        .CASOREGIMUXEN_A(1'b0),
        .CASOREGIMUXEN_B(1'b0),
        .CASOUTDBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED ),
        .CASOUTSBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED ),
        .CLKARDCLK(clka),
        .CLKBWRCLK(clka),
        .DBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DINADIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina}),
        .DINBDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dinb}),
        .DINPADINP({1'b0,1'b0,1'b0,1'b0}),
        .DINPBDINP({1'b0,1'b0,1'b0,1'b0}),
        .DOUTADOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED [31:16],\douta[31] }),
        .DOUTBDOUT({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED [31:16],\doutb[31] }),
        .DOUTPADOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED [3:2],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_142 ,\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_143 }),
        .DOUTPBDOUTP({\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED [3:2],\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_146 ,\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_n_147 }),
        .ECCPARITY(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ECCPIPECE(1'b0),
        .ENARDEN(ena_array),
        .ENBWREN(enb_array),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b1),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(rsta),
        .RSTREGB(rstb),
        .SBITERR(\NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .SLEEP(sleep),
        .WEA({wea,wea}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,web,web}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (douta,
    doutb,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [31:0]douta;
  output [31:0]doutb;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [31:0]dina;
  input [31:0]dinb;
  input [3:0]wea;
  input [3:0]web;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [3:0]wea;
  wire [3:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

(* C_ADDRA_WIDTH = "32" *) (* C_ADDRB_WIDTH = "32" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "14" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "1" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "0" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     4.486493 mW" *) 
(* C_FAMILY = "kintexu" *) (* C_HAS_AXI_ID = "0" *) (* C_HAS_ENA = "0" *) 
(* C_HAS_ENB = "0" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "1" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "1" *) 
(* C_HAS_RSTB = "1" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "NONE" *) 
(* C_INIT_FILE_NAME = "design_1_blk_mem_gen_1_0.mif" *) (* C_INTERFACE_TYPE = "0" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "2" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "14336" *) (* C_READ_DEPTH_B = "14336" *) (* C_READ_WIDTH_A = "32" *) 
(* C_READ_WIDTH_B = "32" *) (* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) 
(* C_RST_PRIORITY_A = "CE" *) (* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) 
(* C_USE_BRAM_BLOCK = "0" *) (* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) 
(* C_USE_DEFAULT_DATA = "0" *) (* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) 
(* C_USE_URAM = "0" *) (* C_WEA_WIDTH = "4" *) (* C_WEB_WIDTH = "4" *) 
(* C_WRITE_DEPTH_A = "14336" *) (* C_WRITE_DEPTH_B = "14336" *) (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
(* C_WRITE_MODE_B = "WRITE_FIRST" *) (* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) 
(* C_XDEVICEFAMILY = "kintexu" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [3:0]wea;
  input [31:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [3:0]web;
  input [31:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [31:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [31:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [3:0]wea;
  wire [3:0]web;

  assign dbiterr = \<const0> ;
  assign rdaddrecc[31] = \<const0> ;
  assign rdaddrecc[30] = \<const0> ;
  assign rdaddrecc[29] = \<const0> ;
  assign rdaddrecc[28] = \<const0> ;
  assign rdaddrecc[27] = \<const0> ;
  assign rdaddrecc[26] = \<const0> ;
  assign rdaddrecc[25] = \<const0> ;
  assign rdaddrecc[24] = \<const0> ;
  assign rdaddrecc[23] = \<const0> ;
  assign rdaddrecc[22] = \<const0> ;
  assign rdaddrecc[21] = \<const0> ;
  assign rdaddrecc[20] = \<const0> ;
  assign rdaddrecc[19] = \<const0> ;
  assign rdaddrecc[18] = \<const0> ;
  assign rdaddrecc[17] = \<const0> ;
  assign rdaddrecc[16] = \<const0> ;
  assign rdaddrecc[15] = \<const0> ;
  assign rdaddrecc[14] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign rsta_busy = \<const0> ;
  assign rstb_busy = \<const0> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[3] = \<const0> ;
  assign s_axi_bid[2] = \<const0> ;
  assign s_axi_bid[1] = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[31] = \<const0> ;
  assign s_axi_rdaddrecc[30] = \<const0> ;
  assign s_axi_rdaddrecc[29] = \<const0> ;
  assign s_axi_rdaddrecc[28] = \<const0> ;
  assign s_axi_rdaddrecc[27] = \<const0> ;
  assign s_axi_rdaddrecc[26] = \<const0> ;
  assign s_axi_rdaddrecc[25] = \<const0> ;
  assign s_axi_rdaddrecc[24] = \<const0> ;
  assign s_axi_rdaddrecc[23] = \<const0> ;
  assign s_axi_rdaddrecc[22] = \<const0> ;
  assign s_axi_rdaddrecc[21] = \<const0> ;
  assign s_axi_rdaddrecc[20] = \<const0> ;
  assign s_axi_rdaddrecc[19] = \<const0> ;
  assign s_axi_rdaddrecc[18] = \<const0> ;
  assign s_axi_rdaddrecc[17] = \<const0> ;
  assign s_axi_rdaddrecc[16] = \<const0> ;
  assign s_axi_rdaddrecc[15] = \<const0> ;
  assign s_axi_rdaddrecc[14] = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[3] = \<const0> ;
  assign s_axi_rid[2] = \<const0> ;
  assign s_axi_rid[1] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth inst_blk_mem_gen
       (.addra(addra[15:2]),
        .addrb(addrb[15:2]),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
   (douta,
    doutb,
    clka,
    rsta,
    rstb,
    sleep,
    addra,
    addrb,
    dina,
    dinb,
    wea,
    web);
  output [31:0]douta;
  output [31:0]doutb;
  input clka;
  input rsta;
  input rstb;
  input sleep;
  input [13:0]addra;
  input [13:0]addrb;
  input [31:0]dina;
  input [31:0]dinb;
  input [3:0]wea;
  input [3:0]web;

  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire rsta;
  wire rstb;
  wire sleep;
  wire [3:0]wea;
  wire [3:0]web;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen 
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .rsta(rsta),
        .rstb(rstb),
        .sleep(sleep),
        .wea(wea),
        .web(web));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
