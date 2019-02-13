-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed Feb 13 14:40:04 2019
-- Host        : ispc2016 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tansei/Desktop/cpu_jikken/project_7/project_7.srcs/sources_1/bd/design_1/ip/design_1_nino_core_0_0/design_1_nino_core_0_0_stub.vhdl
-- Design      : design_1_nino_core_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_nino_core_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    memaddr_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    w_data_a : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wenable_a : out STD_LOGIC_VECTOR ( 3 downto 0 );
    r_data_a : in STD_LOGIC_VECTOR ( 31 downto 0 );
    en_ab : out STD_LOGIC;
    memaddr_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    w_data_b : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wenable_b : out STD_LOGIC_VECTOR ( 3 downto 0 );
    instoutwire : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_awaddr_wire : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_awready : in STD_LOGIC;
    io_awvalid_wire : out STD_LOGIC;
    io_wvalid_wire : out STD_LOGIC;
    io_wready : in STD_LOGIC;
    io_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_bvalid : in STD_LOGIC;
    io_bready_wire : out STD_LOGIC;
    io_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_arvalid_wire : out STD_LOGIC;
    io_arready : in STD_LOGIC;
    io_araddr : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_rvalid : in STD_LOGIC;
    io_rready : out STD_LOGIC;
    io_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    io_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rstmem : out STD_LOGIC
  );

end design_1_nino_core_0_0;

architecture stub of design_1_nino_core_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,memaddr_a[31:0],w_data_a[31:0],wenable_a[3:0],r_data_a[31:0],en_ab,memaddr_b[31:0],w_data_b[31:0],wenable_b[3:0],instoutwire[31:0],io_awaddr_wire[3:0],io_awready,io_awvalid_wire,io_wvalid_wire,io_wready,io_wdata[31:0],io_wstrb[3:0],io_bvalid,io_bready_wire,io_bresp[1:0],io_arvalid_wire,io_arready,io_araddr[3:0],io_rvalid,io_rready,io_rdata[31:0],io_rresp[1:0],rstmem";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nino_core,Vivado 2017.4";
begin
end;
