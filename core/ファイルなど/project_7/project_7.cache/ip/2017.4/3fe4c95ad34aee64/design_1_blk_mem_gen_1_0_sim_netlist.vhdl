-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Sun Feb 17 18:17:35 2019
-- Host        : ispc2016 running 64-bit Ubuntu 16.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_blk_mem_gen_1_0_sim_netlist.vhdl
-- Design      : design_1_blk_mem_gen_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xcku040-ffva1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
  port (
    ena_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec is
begin
\ENOUT_inferred__5/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addra(1),
      I1 => addra(2),
      I2 => addra(0),
      O => ena_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec_0 is
  port (
    enb_array : out STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec_0 : entity is "bindec";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec_0 is
begin
\ENOUT_inferred__5/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => addrb(1),
      I1 => addrb(2),
      I2 => addrb(0),
      O => enb_array(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  port (
    douta : out STD_LOGIC_VECTOR ( 26 downto 0 );
    addra : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clka : in STD_LOGIC;
    DOUTADOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_39_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPADOUTP : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_15_out : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux is
  signal \douta[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \douta[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal sel_pipe : STD_LOGIC_VECTOR ( 2 downto 0 );
begin
\douta[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[14]_INST_0_i_1_n_0\,
      I1 => \douta[14]_INST_0_i_2_n_0\,
      O => douta(9),
      S => sel_pipe(2)
    );
\douta[14]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0),
      O => \douta[14]_INST_0_i_1_n_0\
    );
\douta[14]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(0),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0),
      O => \douta[14]_INST_0_i_2_n_0\
    );
\douta[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[15]_INST_0_i_1_n_0\,
      I1 => \douta[15]_INST_0_i_2_n_0\,
      O => douta(10),
      S => sel_pipe(2)
    );
\douta[15]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(1),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(1),
      O => \douta[15]_INST_0_i_1_n_0\
    );
\douta[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(1),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1),
      O => \douta[15]_INST_0_i_2_n_0\
    );
\douta[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[16]_INST_0_i_1_n_0\,
      I1 => \douta[16]_INST_0_i_2_n_0\,
      O => douta(11),
      S => sel_pipe(2)
    );
\douta[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(2),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(2),
      O => \douta[16]_INST_0_i_1_n_0\
    );
\douta[16]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(2),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2),
      O => \douta[16]_INST_0_i_2_n_0\
    );
\douta[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[17]_INST_0_i_1_n_0\,
      I1 => \douta[17]_INST_0_i_2_n_0\,
      O => douta(12),
      S => sel_pipe(2)
    );
\douta[17]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(3),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(3),
      O => \douta[17]_INST_0_i_1_n_0\
    );
\douta[17]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(3),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3),
      O => \douta[17]_INST_0_i_2_n_0\
    );
\douta[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[18]_INST_0_i_1_n_0\,
      I1 => \douta[18]_INST_0_i_2_n_0\,
      O => douta(13),
      S => sel_pipe(2)
    );
\douta[18]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(4),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(4),
      O => \douta[18]_INST_0_i_1_n_0\
    );
\douta[18]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(4),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4),
      O => \douta[18]_INST_0_i_2_n_0\
    );
\douta[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[19]_INST_0_i_1_n_0\,
      I1 => \douta[19]_INST_0_i_2_n_0\,
      O => douta(14),
      S => sel_pipe(2)
    );
\douta[19]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(5),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(5),
      O => \douta[19]_INST_0_i_1_n_0\
    );
\douta[19]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(5),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5),
      O => \douta[19]_INST_0_i_2_n_0\
    );
\douta[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[1]_INST_0_i_1_n_0\,
      I1 => \douta[1]_INST_0_i_2_n_0\,
      O => douta(0),
      S => sel_pipe(2)
    );
\douta[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(0),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      O => \douta[1]_INST_0_i_1_n_0\
    );
\douta[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(0),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      O => \douta[1]_INST_0_i_2_n_0\
    );
\douta[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[20]_INST_0_i_1_n_0\,
      I1 => \douta[20]_INST_0_i_2_n_0\,
      O => douta(15),
      S => sel_pipe(2)
    );
\douta[20]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(6),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(6),
      O => \douta[20]_INST_0_i_1_n_0\
    );
\douta[20]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(6),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6),
      O => \douta[20]_INST_0_i_2_n_0\
    );
\douta[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[21]_INST_0_i_1_n_0\,
      I1 => \douta[21]_INST_0_i_2_n_0\,
      O => douta(16),
      S => sel_pipe(2)
    );
\douta[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(7),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(7),
      O => \douta[21]_INST_0_i_1_n_0\
    );
\douta[21]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(7),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7),
      O => \douta[21]_INST_0_i_2_n_0\
    );
\douta[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[22]_INST_0_i_1_n_0\,
      I1 => \douta[22]_INST_0_i_2_n_0\,
      O => douta(17),
      S => sel_pipe(2)
    );
\douta[22]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7\(0),
      O => \douta[22]_INST_0_i_1_n_0\
    );
\douta[22]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(8),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8\(0),
      O => \douta[22]_INST_0_i_2_n_0\
    );
\douta[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[23]_INST_0_i_1_n_0\,
      I1 => \douta[23]_INST_0_i_2_n_0\,
      O => douta(18),
      S => sel_pipe(2)
    );
\douta[23]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(0),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(0),
      O => \douta[23]_INST_0_i_1_n_0\
    );
\douta[23]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(9),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(0),
      O => \douta[23]_INST_0_i_2_n_0\
    );
\douta[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[24]_INST_0_i_1_n_0\,
      I1 => \douta[24]_INST_0_i_2_n_0\,
      O => douta(19),
      S => sel_pipe(2)
    );
\douta[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(1),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(1),
      O => \douta[24]_INST_0_i_1_n_0\
    );
\douta[24]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(10),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(1),
      O => \douta[24]_INST_0_i_2_n_0\
    );
\douta[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[25]_INST_0_i_1_n_0\,
      I1 => \douta[25]_INST_0_i_2_n_0\,
      O => douta(20),
      S => sel_pipe(2)
    );
\douta[25]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(2),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(2),
      O => \douta[25]_INST_0_i_1_n_0\
    );
\douta[25]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(11),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(2),
      O => \douta[25]_INST_0_i_2_n_0\
    );
\douta[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[26]_INST_0_i_1_n_0\,
      I1 => \douta[26]_INST_0_i_2_n_0\,
      O => douta(21),
      S => sel_pipe(2)
    );
\douta[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(3),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(3),
      O => \douta[26]_INST_0_i_1_n_0\
    );
\douta[26]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(12),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(3),
      O => \douta[26]_INST_0_i_2_n_0\
    );
\douta[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[27]_INST_0_i_1_n_0\,
      I1 => \douta[27]_INST_0_i_2_n_0\,
      O => douta(22),
      S => sel_pipe(2)
    );
\douta[27]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(4),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(4),
      O => \douta[27]_INST_0_i_1_n_0\
    );
\douta[27]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(13),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(4),
      O => \douta[27]_INST_0_i_2_n_0\
    );
\douta[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[28]_INST_0_i_1_n_0\,
      I1 => \douta[28]_INST_0_i_2_n_0\,
      O => douta(23),
      S => sel_pipe(2)
    );
\douta[28]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(5),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(5),
      O => \douta[28]_INST_0_i_1_n_0\
    );
\douta[28]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(14),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(5),
      O => \douta[28]_INST_0_i_2_n_0\
    );
\douta[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[29]_INST_0_i_1_n_0\,
      I1 => \douta[29]_INST_0_i_2_n_0\,
      O => douta(24),
      S => sel_pipe(2)
    );
\douta[29]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(6),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(6),
      O => \douta[29]_INST_0_i_1_n_0\
    );
\douta[29]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(15),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(6),
      O => \douta[29]_INST_0_i_2_n_0\
    );
\douta[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[2]_INST_0_i_1_n_0\,
      I1 => \douta[2]_INST_0_i_2_n_0\,
      O => douta(1),
      S => sel_pipe(2)
    );
\douta[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(1),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1),
      O => \douta[2]_INST_0_i_1_n_0\
    );
\douta[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(1),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(1),
      O => \douta[2]_INST_0_i_2_n_0\
    );
\douta[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[30]_INST_0_i_1_n_0\,
      I1 => \douta[30]_INST_0_i_2_n_0\,
      O => douta(25),
      S => sel_pipe(2)
    );
\douta[30]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(7),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(7),
      O => \douta[30]_INST_0_i_1_n_0\
    );
\douta[30]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(16),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(7),
      O => \douta[30]_INST_0_i_2_n_0\
    );
\douta[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[31]_INST_0_i_1_n_0\,
      I1 => \douta[31]_INST_0_i_2_n_0\,
      O => douta(26),
      S => sel_pipe(2)
    );
\douta[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12\(0),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13\(0),
      O => \douta[31]_INST_0_i_1_n_0\
    );
\douta[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_15_out(17),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14\(0),
      O => \douta[31]_INST_0_i_2_n_0\
    );
\douta[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[3]_INST_0_i_1_n_0\,
      I1 => \douta[3]_INST_0_i_2_n_0\,
      O => douta(2),
      S => sel_pipe(2)
    );
\douta[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(2),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2),
      O => \douta[3]_INST_0_i_1_n_0\
    );
\douta[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(2),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(2),
      O => \douta[3]_INST_0_i_2_n_0\
    );
\douta[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[4]_INST_0_i_1_n_0\,
      I1 => \douta[4]_INST_0_i_2_n_0\,
      O => douta(3),
      S => sel_pipe(2)
    );
\douta[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(3),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3),
      O => \douta[4]_INST_0_i_1_n_0\
    );
\douta[4]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(3),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(3),
      O => \douta[4]_INST_0_i_2_n_0\
    );
\douta[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[5]_INST_0_i_1_n_0\,
      I1 => \douta[5]_INST_0_i_2_n_0\,
      O => douta(4),
      S => sel_pipe(2)
    );
\douta[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(4),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4),
      O => \douta[5]_INST_0_i_1_n_0\
    );
\douta[5]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(4),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(4),
      O => \douta[5]_INST_0_i_2_n_0\
    );
\douta[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[6]_INST_0_i_1_n_0\,
      I1 => \douta[6]_INST_0_i_2_n_0\,
      O => douta(5),
      S => sel_pipe(2)
    );
\douta[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(5),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5),
      O => \douta[6]_INST_0_i_1_n_0\
    );
\douta[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(5),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(5),
      O => \douta[6]_INST_0_i_2_n_0\
    );
\douta[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[7]_INST_0_i_1_n_0\,
      I1 => \douta[7]_INST_0_i_2_n_0\,
      O => douta(6),
      S => sel_pipe(2)
    );
\douta[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(6),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6),
      O => \douta[7]_INST_0_i_1_n_0\
    );
\douta[7]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(6),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(6),
      O => \douta[7]_INST_0_i_2_n_0\
    );
\douta[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[8]_INST_0_i_1_n_0\,
      I1 => \douta[8]_INST_0_i_2_n_0\,
      O => douta(7),
      S => sel_pipe(2)
    );
\douta[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTADOUT(7),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7),
      O => \douta[8]_INST_0_i_1_n_0\
    );
\douta[8]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(7),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(7),
      O => \douta[8]_INST_0_i_2_n_0\
    );
\douta[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \douta[9]_INST_0_i_1_n_0\,
      I1 => \douta[9]_INST_0_i_2_n_0\,
      O => douta(8),
      S => sel_pipe(2)
    );
\douta[9]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTPADOUTP(0),
      I1 => sel_pipe(1),
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      O => \douta[9]_INST_0_i_1_n_0\
    );
\douta[9]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_39_out(8),
      I1 => sel_pipe(0),
      I2 => sel_pipe(1),
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0),
      O => \douta[9]_INST_0_i_2_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(0),
      Q => sel_pipe(0),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(1),
      Q => sel_pipe(1),
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addra(2),
      Q => sel_pipe(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0\ is
  port (
    doutb : out STD_LOGIC_VECTOR ( 26 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    clka : in STD_LOGIC;
    DOUTBDOUT : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_38_out : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPBDOUTP : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_14_out : in STD_LOGIC_VECTOR ( 17 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0\ : entity is "blk_mem_gen_mux";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0\ is
  signal \doutb[14]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[14]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[15]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[15]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[16]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[16]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[17]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[17]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[18]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[18]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[19]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[19]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[20]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[20]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[21]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[21]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[22]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[22]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[23]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[23]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[24]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[24]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[25]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[25]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[26]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[26]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[27]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[27]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[28]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[28]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[2]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[30]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[30]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[31]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[31]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[3]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[4]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[5]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[6]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[7]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[8]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[8]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \doutb[9]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \doutb[9]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\ : STD_LOGIC;
  signal \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\ : STD_LOGIC;
begin
\doutb[14]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[14]_INST_0_i_1_n_0\,
      I1 => \doutb[14]_INST_0_i_2_n_0\,
      O => doutb(9),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[14]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0),
      O => \doutb[14]_INST_0_i_1_n_0\
    );
\doutb[14]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0),
      O => \doutb[14]_INST_0_i_2_n_0\
    );
\doutb[15]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[15]_INST_0_i_1_n_0\,
      I1 => \doutb[15]_INST_0_i_2_n_0\,
      O => doutb(10),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[15]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(1),
      O => \doutb[15]_INST_0_i_1_n_0\
    );
\doutb[15]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1),
      O => \doutb[15]_INST_0_i_2_n_0\
    );
\doutb[16]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[16]_INST_0_i_1_n_0\,
      I1 => \doutb[16]_INST_0_i_2_n_0\,
      O => doutb(11),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[16]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(2),
      O => \doutb[16]_INST_0_i_1_n_0\
    );
\doutb[16]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2),
      O => \doutb[16]_INST_0_i_2_n_0\
    );
\doutb[17]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[17]_INST_0_i_1_n_0\,
      I1 => \doutb[17]_INST_0_i_2_n_0\,
      O => doutb(12),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[17]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(3),
      O => \doutb[17]_INST_0_i_1_n_0\
    );
\doutb[17]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3),
      O => \doutb[17]_INST_0_i_2_n_0\
    );
\doutb[18]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[18]_INST_0_i_1_n_0\,
      I1 => \doutb[18]_INST_0_i_2_n_0\,
      O => doutb(13),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[18]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(4),
      O => \doutb[18]_INST_0_i_1_n_0\
    );
\doutb[18]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4),
      O => \doutb[18]_INST_0_i_2_n_0\
    );
\doutb[19]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[19]_INST_0_i_1_n_0\,
      I1 => \doutb[19]_INST_0_i_2_n_0\,
      O => doutb(14),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[19]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(5),
      O => \doutb[19]_INST_0_i_1_n_0\
    );
\doutb[19]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5),
      O => \doutb[19]_INST_0_i_2_n_0\
    );
\doutb[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[1]_INST_0_i_1_n_0\,
      I1 => \doutb[1]_INST_0_i_2_n_0\,
      O => doutb(0),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[1]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0),
      O => \doutb[1]_INST_0_i_1_n_0\
    );
\doutb[1]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0),
      O => \doutb[1]_INST_0_i_2_n_0\
    );
\doutb[20]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[20]_INST_0_i_1_n_0\,
      I1 => \doutb[20]_INST_0_i_2_n_0\,
      O => doutb(15),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[20]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(6),
      O => \doutb[20]_INST_0_i_1_n_0\
    );
\doutb[20]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6),
      O => \doutb[20]_INST_0_i_2_n_0\
    );
\doutb[21]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[21]_INST_0_i_1_n_0\,
      I1 => \doutb[21]_INST_0_i_2_n_0\,
      O => doutb(16),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[21]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(7),
      O => \doutb[21]_INST_0_i_1_n_0\
    );
\doutb[21]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7),
      O => \doutb[21]_INST_0_i_2_n_0\
    );
\doutb[22]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[22]_INST_0_i_1_n_0\,
      I1 => \doutb[22]_INST_0_i_2_n_0\,
      O => doutb(17),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[22]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7\(0),
      O => \doutb[22]_INST_0_i_1_n_0\
    );
\doutb[22]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(8),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8\(0),
      O => \doutb[22]_INST_0_i_2_n_0\
    );
\doutb[23]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[23]_INST_0_i_1_n_0\,
      I1 => \doutb[23]_INST_0_i_2_n_0\,
      O => doutb(18),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[23]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(0),
      O => \doutb[23]_INST_0_i_1_n_0\
    );
\doutb[23]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(9),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(0),
      O => \doutb[23]_INST_0_i_2_n_0\
    );
\doutb[24]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[24]_INST_0_i_1_n_0\,
      I1 => \doutb[24]_INST_0_i_2_n_0\,
      O => doutb(19),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[24]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(1),
      O => \doutb[24]_INST_0_i_1_n_0\
    );
\doutb[24]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(10),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(1),
      O => \doutb[24]_INST_0_i_2_n_0\
    );
\doutb[25]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[25]_INST_0_i_1_n_0\,
      I1 => \doutb[25]_INST_0_i_2_n_0\,
      O => doutb(20),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[25]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(2),
      O => \doutb[25]_INST_0_i_1_n_0\
    );
\doutb[25]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(11),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(2),
      O => \doutb[25]_INST_0_i_2_n_0\
    );
\doutb[26]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[26]_INST_0_i_1_n_0\,
      I1 => \doutb[26]_INST_0_i_2_n_0\,
      O => doutb(21),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[26]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(3),
      O => \doutb[26]_INST_0_i_1_n_0\
    );
\doutb[26]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(12),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(3),
      O => \doutb[26]_INST_0_i_2_n_0\
    );
\doutb[27]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[27]_INST_0_i_1_n_0\,
      I1 => \doutb[27]_INST_0_i_2_n_0\,
      O => doutb(22),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[27]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(4),
      O => \doutb[27]_INST_0_i_1_n_0\
    );
\doutb[27]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(13),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(4),
      O => \doutb[27]_INST_0_i_2_n_0\
    );
\doutb[28]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[28]_INST_0_i_1_n_0\,
      I1 => \doutb[28]_INST_0_i_2_n_0\,
      O => doutb(23),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[28]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(5),
      O => \doutb[28]_INST_0_i_1_n_0\
    );
\doutb[28]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(14),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(5),
      O => \doutb[28]_INST_0_i_2_n_0\
    );
\doutb[29]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[29]_INST_0_i_1_n_0\,
      I1 => \doutb[29]_INST_0_i_2_n_0\,
      O => doutb(24),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[29]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(6),
      O => \doutb[29]_INST_0_i_1_n_0\
    );
\doutb[29]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(15),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(6),
      O => \doutb[29]_INST_0_i_2_n_0\
    );
\doutb[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[2]_INST_0_i_1_n_0\,
      I1 => \doutb[2]_INST_0_i_2_n_0\,
      O => doutb(1),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[2]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1),
      O => \doutb[2]_INST_0_i_1_n_0\
    );
\doutb[2]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(1),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(1),
      O => \doutb[2]_INST_0_i_2_n_0\
    );
\doutb[30]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[30]_INST_0_i_1_n_0\,
      I1 => \doutb[30]_INST_0_i_2_n_0\,
      O => doutb(25),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[30]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(7),
      O => \doutb[30]_INST_0_i_1_n_0\
    );
\doutb[30]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(16),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(7),
      O => \doutb[30]_INST_0_i_2_n_0\
    );
\doutb[31]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[31]_INST_0_i_1_n_0\,
      I1 => \doutb[31]_INST_0_i_2_n_0\,
      O => doutb(26),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[31]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12\(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13\(0),
      O => \doutb[31]_INST_0_i_1_n_0\
    );
\doutb[31]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_14_out(17),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14\(0),
      O => \doutb[31]_INST_0_i_2_n_0\
    );
\doutb[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[3]_INST_0_i_1_n_0\,
      I1 => \doutb[3]_INST_0_i_2_n_0\,
      O => doutb(2),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[3]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2),
      O => \doutb[3]_INST_0_i_1_n_0\
    );
\doutb[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(2),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(2),
      O => \doutb[3]_INST_0_i_2_n_0\
    );
\doutb[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[4]_INST_0_i_1_n_0\,
      I1 => \doutb[4]_INST_0_i_2_n_0\,
      O => doutb(3),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[4]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3),
      O => \doutb[4]_INST_0_i_1_n_0\
    );
\doutb[4]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(3),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(3),
      O => \doutb[4]_INST_0_i_2_n_0\
    );
\doutb[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[5]_INST_0_i_1_n_0\,
      I1 => \doutb[5]_INST_0_i_2_n_0\,
      O => doutb(4),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[5]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4),
      O => \doutb[5]_INST_0_i_1_n_0\
    );
\doutb[5]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(4),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(4),
      O => \doutb[5]_INST_0_i_2_n_0\
    );
\doutb[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[6]_INST_0_i_1_n_0\,
      I1 => \doutb[6]_INST_0_i_2_n_0\,
      O => doutb(5),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[6]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5),
      O => \doutb[6]_INST_0_i_1_n_0\
    );
\doutb[6]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(5),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(5),
      O => \doutb[6]_INST_0_i_2_n_0\
    );
\doutb[7]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[7]_INST_0_i_1_n_0\,
      I1 => \doutb[7]_INST_0_i_2_n_0\,
      O => doutb(6),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[7]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6),
      O => \doutb[7]_INST_0_i_1_n_0\
    );
\doutb[7]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(6),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(6),
      O => \doutb[7]_INST_0_i_2_n_0\
    );
\doutb[8]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[8]_INST_0_i_1_n_0\,
      I1 => \doutb[8]_INST_0_i_2_n_0\,
      O => doutb(7),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[8]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTBDOUT(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7),
      O => \doutb[8]_INST_0_i_1_n_0\
    );
\doutb[8]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(7),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(7),
      O => \doutb[8]_INST_0_i_2_n_0\
    );
\doutb[9]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \doutb[9]_INST_0_i_1_n_0\,
      I1 => \doutb[9]_INST_0_i_2_n_0\,
      O => doutb(8),
      S => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\
    );
\doutb[9]_INST_0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => DOUTPBDOUTP(0),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I2 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0),
      O => \doutb[9]_INST_0_i_1_n_0\
    );
\doutb[9]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F20"
    )
        port map (
      I0 => p_38_out(8),
      I1 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      I2 => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      I3 => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0),
      O => \doutb[9]_INST_0_i_2_n_0\
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addrb(0),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[0]\,
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addrb(1),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[1]\,
      R => '0'
    );
\no_softecc_sel_reg.ce_pri.sel_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clka,
      CE => '1',
      D => addrb(2),
      Q => \no_softecc_sel_reg.ce_pri.sel_pipe_reg_n_0_[2]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "[0:0][0:16383]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF885241127F",
      INIT_01 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_02 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_03 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_04 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_05 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_06 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_07 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_08 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_09 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_0F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_10 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_11 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_12 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_13 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_14 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_15 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_16 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_17 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_18 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_19 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_1F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_20 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_21 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_22 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_23 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_25 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_26 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_27 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_28 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_29 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2A => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE100BFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF641FFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"0000000000000000000000000000000000000007FFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 1,
      READ_WIDTH_B => 1,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 1,
      WRITE_WIDTH_B => 1
    )
        port map (
      ADDRARDADDR(13 downto 0) => addra(13 downto 0),
      ADDRBWRADDR(13 downto 0) => addrb(13 downto 0),
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(15 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DINADIN(15 downto 0) => B"0000000000000000",
      DINBDIN(15 downto 0) => B"0000000000000000",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED\(15 downto 1),
      DOUTADOUT(0) => douta(0),
      DOUTBDOUT(15 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED\(15 downto 1),
      DOUTBDOUT(0) => doutb(0),
      DOUTPADOUTP(1 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED\(1 downto 0),
      DOUTPBDOUTP(1 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED\(1 downto 0),
      ENARDEN => '1',
      ENBWREN => '1',
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => sleep,
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  port (
    \douta[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[9:1][0:4095]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"E08C00B0422257D7D1A601046084026143850A8E0200020631B300082A40010C",
      INITP_01 => X"385081B84084E0A001C0BDFFF7FFFDFEE80017C0440A11028441085024080230",
      INITP_02 => X"CC731866731CC8089DDD8285E98730A61182E8302086F85081BD813418104374",
      INITP_03 => X"9CE0F07A1707A1707A177C219E0873C08E7821CF014341981B51866731CD6199",
      INITP_04 => X"083E1466E8383E101E083E151CE1B03F70707C241A0B6EE8383E101E0A1D0873",
      INITP_05 => X"3C6601568620CDA7DEFC233CEF7B28053BBAD540263488CDDED5C40119B8681E",
      INITP_06 => X"8100A6FAF92014DF5F2028053BBACAB80C14060E0151240141543A601B806038",
      INITP_07 => X"AD008110819A0C26A84797EC00AA003CC01482A9093CC0370ABFC8A49EACD031",
      INITP_08 => X"50E7198046A59DD589843434418468862318802830AD18D110819AD008110819",
      INITP_09 => X"9C02ABDAB10C59243E361A0200340400420C61A186C186C37C61D0C3A861D280",
      INITP_0A => X"30F0A88D0C25AF6F77B38DC035844286D096002849551B00C2BDDECE37097BBD",
      INITP_0B => X"FC1896BF0325AFC16A060A3F008A00B6F801263BEFD9BA0B5001681B2A880000",
      INITP_0C => X"F812DF1FAF500F025BE812DFC096FCB701A800B405AD2008D5181E1551F0325A",
      INITP_0D => X"3504004E468F3BE0300F55C060A030702CACAAAB222A40F047EA01E05B7D025B",
      INITP_0E => X"C0C59C0C59C07002AA981E03C1C245E07122F07091780EA0001E364918145088",
      INITP_0F => X"17073670780060BC0B838B3838B383C006520B02F55C160A0B0706C54F222201",
      INIT_00 => X"0066856694108B0000EDCD00CD00006600000066000066330037C9DB091B899B",
      INIT_01 => X"2943899B372943899B31C931E943C9DB2929694329694329030000001A000000",
      INIT_02 => X"1329698343031329698343031329698343033313294313694313694303899B37",
      INIT_03 => X"13414189778911134141897789111341418977891111111111114101C1814133",
      INIT_04 => X"43495B41897789111341897789112913434189778911132943495B4189778911",
      INIT_05 => X"9B298313A9C383899B1341A9C3495BA943418977891129134341897789111329",
      INIT_06 => X"031329430313C12943038113292913291381292913291303C9DB138113294389",
      INIT_07 => X"111341294189778911132943495B418977891141897789111111814133132943",
      INIT_08 => X"7789110313412943418977891129134341897789112913432943495B41897789",
      INIT_09 => X"4141897789112913434141897789111111033313414189778911134129434189",
      INIT_0A => X"8911291343414189778911291343414189778911291343414189778911291343",
      INIT_0B => X"C34341A92969296929E9A9E9A9A96929692929A929C3A9A94303E98343418977",
      INIT_0C => X"6903495B132969692969692929132969692969692929132969692969692929C3",
      INIT_0D => X"69A9E9E9A9A903899B132929A929292969296903899B13412969A9A969A9A969",
      INIT_0E => X"8911114189778911114189778911113349318941897789111111813313296969",
      INIT_0F => X"7789111341418977891113414189778911114189778911491103C9DB89418977",
      INIT_10 => X"77891113414189778911134141897789111141897789114903C9DB8913414189",
      INIT_11 => X"11114189778911491103C9DB8949374931E94341897789111303899B13414189",
      INIT_12 => X"11134141897789111141897789114903C9DB8913414189778911134141897789",
      INIT_13 => X"89778911113731C18941897789114903C9DB8913414189778911134141897789",
      INIT_14 => X"31C18913412943495B418977891113412943495B418977891113412943495B41",
      INIT_15 => X"110111C111C111C111C111C11141110989418977891149111103495B09813789",
      INIT_16 => X"43899B31E943899B31E943899B31E943899B03318911D9C18981118111411141",
      INIT_17 => X"9B31E943899B31E943899B31E943899B031303899B37292943899B3743899B37",
      INIT_18 => X"E943899B31E943899B31E943899B031303899B37292943899B3743899B374389",
      INIT_19 => X"778911498937893141893189371303899B37292943899B3743899B3743899B31",
      INIT_1A => X"4189734189118911111111333109C18133494189778911814137318149374189",
      INIT_1B => X"1181333189494133118141318941897341891111813331894941331181413189",
      INIT_1C => X"4133118141318941897341891111813331894941331181413189418973418911",
      INIT_1D => X"8911894941318941897789111111C98137894941318941897789111133418149",
      INIT_1E => X"897789111111C981374189778911894941318941897789111111C98137418977",
      INIT_1F => X"8111D9C1898111D9C1898141897789114911C981374189778911894941318941",
      INIT_20 => X"897789111137894189778911894931894189778911113311D9C1898111D9C189",
      INIT_21 => X"8911491189374189778911894931894189778911113741897789118949318941",
      INIT_22 => X"7789118949318941897789111111C94137494131C94189118111811181418977",
      INIT_23 => X"1181118141897789114911893741897789118949318941897789111137894189",
      INIT_24 => X"3311D9C1898111D9C1898141897789114911C941374189778911494131C94189",
      INIT_25 => X"7789118949318941897789111137418977891189493189418977891111111181",
      INIT_26 => X"8111811181418977891149118937418977891189493189418977891111374189",
      INIT_27 => X"8977891111374189778911894931894189778911114911D901C9813331C98111",
      INIT_28 => X"11D901C9813331C9811181118141897789114911893741897789118949318941",
      INIT_29 => X"31493749314909370931E903D909C3091B41C131E903C9DBC3D9C98133418149",
      INIT_2A => X"C3D94943D94931E969692903D949C3D94929C3D9492937E93109C3D909493749",
      INIT_2B => X"31E903899BE9294303E9294303E903C341C133493349334933491331E9A9A9E9",
      INIT_2C => X"31C981E929438129E929438129E90381E9334933491329292969432969032903",
      INIT_2D => X"A9E90381E9A9E90381E9A9C381A9332929434129A9A90381A9E9294381293329",
      INIT_2E => X"C133292943495B29294341296929A9A94381A9A969E90381E929E9332931C981",
      INIT_2F => X"291341834303C383434131E943495B41897789112969A91111131313114303C3",
      INIT_30 => X"372943899B31C981414189778911A969291341C3834341897789116929E9A969",
      INIT_31 => X"D949C18141013349334933491341292937293189412931E983899B2929C3A943",
      INIT_32 => X"897341891149891111111313138909C931C9C1A9C3C1836983C1432943C10341",
      INIT_33 => X"4189118181418343034909C931894189734189118181418343034909C9318941",
      INIT_34 => X"31E903899BE9294303E9294303E903C341314933493349334933493189418973",
      INIT_35 => X"4131E9696969430341E903E9C301334189334933491329292969432969032903",
      INIT_36 => X"696969430341E903E9C331894937493749374931E943495B0331E96969694303",
      INIT_37 => X"03C341A9C3A9C331894937493749374931E943495B0331E969696943034131E9",
      INIT_38 => X"4913334931894937493749374931E943495B0331E96969E9C3034131E9292929",
      INIT_39 => X"41897789111113131111296943296943290331E903091BC3C133491333491333",
      INIT_3A => X"2929371341294341292931894131E983899B2929C3A943372943899B31C98141",
      INIT_3B => X"C9DB6969A943296943296903290331E903495BC3013349334933491341294341",
      INIT_3C => X"03C181D9C9814101C1334933493349132943296937132943296931C94131E983",
      INIT_3D => X"89334933491329430331E94303899B318933414989C98131490141D949018343",
      INIT_3E => X"31E94303495B01C131E943C9DB0381418977891149111103091BC9334149C989",
      INIT_3F => X"DB031303C9DB3713294303091B13372931490341093709310937093189493749",
      INIT_40 => X"1B1337293149034109370931093709318949374931E94303495B01C131E943C9",
      INIT_41 => X"093709318949374931E94303495B01C131E943C9DB031303C9DB371329430309",
      INIT_42 => X"891149111103091BC9331303899B3713294303C9DB13372931C903C109370931",
      INIT_43 => X"694381136943899B31E943899B29698381432969830143294301C10381418977",
      INIT_44 => X"0381418977891149111103091BC9331303899B37132929438113696943811369",
      INIT_45 => X"31490113C1E9E903C1C3A9A9C3C183696983C181434141897789114911C18343",
      INIT_46 => X"6903091B69294301036903014313692943091B29698301432943010337131313",
      INIT_47 => X"09C1334937132943495B31E943495B13696983495B69A9034183698301431369",
      INIT_48 => X"89111131093711D901C9814189778911498911113111111109C1814101D90931",
      INIT_49 => X"D9C18931894911D901C9814189778911498911113711D901C981418977891149",
      INIT_4A => X"81418977891149111131C93711D901C981418977891149111131C9814101C181",
      INIT_4B => X"01C1D9093109C13333334181418911D901C98141897789114911113711D901C9",
      INIT_4C => X"69432969C329C3834303C1311111118913294381031329438103132943810341",
      INIT_4D => X"41814189411341372943495B3181494189778911491111834303373189371329",
      INIT_4E => X"89378931E969038131E969038131E929C38131C981A9C38169C38129C3813333",
      INIT_4F => X"31E943899B412969432969C329C38131C933413349334931894131C989378937",
      INIT_50 => X"2943899B31C981414189778911113349334931894937493149374931C9893789",
      INIT_51 => X"49314901D909C13349334931894937493149374931C989378931E943899B4137",
      INIT_52 => X"E929C34131E9E9834131111111131313118941694341290341E9C34101D90933",
      INIT_53 => X"2983E9834131893749013749374931490131894937493749374931E929C34131",
      INIT_54 => X"69A9491137493749314909370931093709318949374931E903495B01E92903E9",
      INIT_55 => X"37493149374931C989378931E943899B41372943899B31C98141418977891129",
      INIT_56 => X"4189778911491183430381D901893349310981D9C18949413189493749318949",
      INIT_57 => X"093349314901D909C1814101C1814101C1334933493341818183430349413189",
      INIT_58 => X"31111111111111111111C98181D989A9C38183698381432943810341D94901D9",
      INIT_59 => X"37493749132969432969C329C331E903C3C9DB31C937418973418911C9894989",
      INIT_5A => X"894141D9814941318949374931E943495B374931890381418973418911894989",
      INIT_5B => X"4931C9418129C329C3A9C3A9836983816943412943495B334181814941334931",
      INIT_5C => X"37418973418911818183430349318941897789116929A9A913131341D9C14937",
      INIT_5D => X"89498911111111118941D9493349318941D94901C13349334181814941318949",
      INIT_5E => X"4189734189114911814981D901893349310981D9C18949413189418973418911",
      INIT_5F => X"C189494131894189734189114911814981D901893349310981D9C18949413189",
      INIT_60 => X"3349334933418181494131894189734189114911810981D901893349310981D9",
      INIT_61 => X"493111111111111111C9334931C98141D94901C1814101C1814101C133493349",
      INIT_62 => X"8973418911C9894989311189C181D989A9C381836983C1432943C10341D9C937",
      INIT_63 => X"41897341891189498937493749132969432969C329C331E903C3C9DB31C93741",
      INIT_64 => X"318941897341891149810981D9C189374931C9814131E9434103495B37493189",
      INIT_65 => X"0981D9C189374931C98141318941897341891149810981D9C189374931C98141",
      INIT_66 => X"4937493749318949374937493741897341891181814931894189734189114981",
      INIT_67 => X"C98141318941897341891149810981D9C189374931C981413341818149413189",
      INIT_68 => X"114981C981D9C189374931C98141318941897341891149810981D9C189374931",
      INIT_69 => X"3349334181814941318949374937493741897341891181814931894189734189",
      INIT_6A => X"A9C34183698341432943410301D909333109C1D9C9814101C1814101C1814101",
      INIT_6B => X"8911C98949890949111113131349C98931111111111111111111111111118941",
      INIT_6C => X"8181418343034909C931894189734189118181418343034909C9318941897341",
      INIT_6D => X"1189498937418973418911894989310937493749374937493189418973418911",
      INIT_6E => X"438131E943899B0381334181C18149413331894141D981494131894189734189",
      INIT_6F => X"493749311313131311894101E903E9C3A9C3A9836983016943C12943C9DB31E9",
      INIT_70 => X"03373189493741897341891181818343034931894189778911A969294941D981",
      INIT_71 => X"3331C981D9894101334181C18149413737118141118141130313031341031341",
      INIT_72 => X"81D9018933310981D9C1894941418973418911894989111111111111C981D989",
      INIT_73 => X"1149C91181814981D9018933310981D9C189494141897341891149C911818149",
      INIT_74 => X"494141897341891149C91181410981D9018933310981D9C18949414189734189",
      INIT_75 => X"11111111111111114933314901C1D9C9814101C1814101C1814101334181C181",
      INIT_76 => X"0981D9C1893731C9814141897341891189498911C981D9893731C98131111111",
      INIT_77 => X"814941897341891149C981410981D9C1893731C9814141897341891149C98141",
      INIT_78 => X"1309C98931114901A9C30183698301432943010341D9093741897341891181C1",
      INIT_79 => X"89734189118181418343034909C93189418973418911C9894989094911111313",
      INIT_7A => X"49893109374937493749374931894189734189118181418343034909C9318941",
      INIT_7B => X"0937314901C131E9438103413731894189734189118949893741897341891189",
      INIT_7C => X"41891149C981410981D9C1893731C981414189734189114989C981C18901D941",
      INIT_7D => X"897341891181C1814941897341891149C981410981D9C1893731C98141418973",
      INIT_7E => X"89114989C91181C18901D94109373149013111493331490181D9C18949413741",
      INIT_7F => X"7341891181C18149418973418911C9498101C981D9C1893731C9814141897341",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[8]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[8]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[9]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[9]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \addra[15]\,
      ENBWREN => \addrb[15]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPADOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    DOUTPBDOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    \addrb[14]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[9:1][4096:8191]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"3028A1106A28009C8D1E77C07508200ED554D8D20780F02E0E6CE0E2CE290780",
      INITP_01 => X"0BAC4201707167071670580155003C0783848BC0E245E0E122F01D40003C6C92",
      INITP_02 => X"31E05C1CD9C1C59C520E00B839B383C00305E05C1C59C1C59C1E0032905D4208",
      INITP_03 => X"85A1898CC9FFCAFE4803566341702E0E6CE0F12394835401C0CD9C0BA005073C",
      INITP_04 => X"002A80000106798230604123698234B3CCFEC6619080000040819144CCE63321",
      INITP_05 => X"041018563B33BAC2003A0DDFE6B31A0DAAAA0107844CCE618360CC20E4C4D066",
      INITP_06 => X"31FC149418100800020025005013820909800A476B31A0DAAAAAB984C3C3C026",
      INITP_07 => X"318DB1CC301380E4A082030AC766221000540EE2080000164244008444840121",
      INITP_08 => X"53001BE1E0040298C3001501C0600329C4CCE63320F7BCD66341D55559878600",
      INITP_09 => X"000DB8100A630C0054170582779017551D0100A630C0054070181779055551D9",
      INITP_0A => X"07847039C97301C07020CC17038083301C07020CC1702D912AB00740828082CB",
      INITP_0B => X"40419801703810660B8182060CC00B838083301C04101066005C07080AAA0B91",
      INITP_0C => X"05080A451DEEF47701C04101066005C0EE4B982E06081833002E0E020CC07010",
      INITP_0D => X"0E0A2DE6D2AB000040404D85B80700528DC3B706D5A1078A90D0BBA101420284",
      INITP_0E => X"02553C556FB70A1A5A1874B430D4B401D064848B0024020910800014F00A2B76",
      INITP_0F => X"5583AAAAA8FBBAF0F001909C1703040C1980170750200488329A5C84E0B816A1",
      INIT_00 => X"C1893731C9814131E9434103413731894189734189114989C911818141374189",
      INIT_01 => X"8973418911C9498101C981D9C1893731C9814141897341891149C981410981D9",
      INIT_02 => X"D9C9814101C1814101C1814101334181C18149413741897341891181C1814941",
      INIT_03 => X"31111111111111111111111111111109C181D9C9818343034101D909333109C1",
      INIT_04 => X"894989C9374937491329430331E94303899B31C937418973418911894989C981",
      INIT_05 => X"8131E943899B0381334181C18149413331894141D98149413189418973418911",
      INIT_06 => X"37493113131313114901C1E903E9C3A9C3A9836983016943C12943C9DB31E943",
      INIT_07 => X"373189493741897341891181818343034931894189778911A969294901D94109",
      INIT_08 => X"31C981D9894101334181C1814941373711814111814113031303134103134103",
      INIT_09 => X"D9018933310981D9C1894941418973418911894989111111111111C981D98933",
      INIT_0A => X"49C91181814981D9018933310981D9C189494141897341891149C91181814981",
      INIT_0B => X"4141897341891149C91181410981D9018933310981D9C1894941418973418911",
      INIT_0C => X"111111111111111111C93331C98141D94901C1814101C1814101334181C18149",
      INIT_0D => X"81410981D9C1893731C98141418973418911894989118941D949373189413111",
      INIT_0E => X"81C1814941897341891149C981410981D9C1893731C9814141897341891149C9",
      INIT_0F => X"8973418911894989C9413111490181D98901834303C1C1D9C937418973418911",
      INIT_10 => X"41373189418973418911894989C9374937491329430331E94303495B31893741",
      INIT_11 => X"893731C981414189734189114989C981C18901D9410937314901C131E9438103",
      INIT_12 => X"7341891149C981410981D9C1893731C9814141897341891149C981410981D9C1",
      INIT_13 => X"4109373149013111493331490181D9C18949413741897341891181C181494189",
      INIT_14 => X"418911C9498101C981D9C1893731C981414189734189114989C91181C18901D9",
      INIT_15 => X"4341034137318941897341891149891181413741897341891181C18149418973",
      INIT_16 => X"C981D9C1893731C9814141897341891149C981410981D9C1893731C9814131E9",
      INIT_17 => X"4101C181334181C18149413741897341891181C18149418973418911C9498101",
      INIT_18 => X"111111114901D90937314901311111110937311109C181011303899B4101C181",
      INIT_19 => X"8149418973418911C9498101C981D9C1893731C98141418973418911498989C9",
      INIT_1A => X"31E94341034137318941897341891149898911111111113741897341891181C1",
      INIT_1B => X"01C981D9C1893731C98141418973418911C94989818149C1D901C9373109C181",
      INIT_1C => X"034141897341891181C181493741897341891181C18149418973418911C94981",
      INIT_1D => X"C3C1A9C3C1836983014329430103C18133493349334931E943495B31E943495B",
      INIT_1E => X"83C1E9C3C113E9A9C3C9DBA9E9C3C1A983C1371313133109C16943C12903C1E9",
      INIT_1F => X"3189418101C1374989494113292943C9DB296983C12983C113A9A9C3C9DBA9A9",
      INIT_20 => X"495B3703495B3703495B31E943495B31E943495B03D949490913131303091B41",
      INIT_21 => X"4113034113034101C133413313290341132903811329038131893313D9492903",
      INIT_22 => X"5B2943410309370931E92983091B6983091B69E96943091B2943010331491303",
      INIT_23 => X"31893703495B3703495B3189318949374931E92983495B6983495B69E9694349",
      INIT_24 => X"43899B13416943495B294189778911112943495B033149331303495B3703495B",
      INIT_25 => X"2943495B2969E92943495B29296929698341432943010331493313292983899B",
      INIT_26 => X"69430129430103314933132943899B2943899B13416943495B29418977891111",
      INIT_27 => X"8977891129293703091B31E91111131129C3091BA9E9A969A983016983014329",
      INIT_28 => X"495B31E91329C383495B69A983416983814143412969E92943495B2943495B41",
      INIT_29 => X"5B69A9A9C383495B43495B2969E92943495B2943495B41897789112969693703",
      INIT_2A => X"01C1814101C1333313412943495B2943495B3703495B31E943495B2929298349",
      INIT_2B => X"89111111111111111113111111131111C1891383899B4101D949314901C18141",
      INIT_2C => X"494141373189493749374931E943495B31E943495B0341418973418911C98949",
      INIT_2D => X"69834329698343294303C1814131894189734189118981C1C14931C181598181",
      INIT_2E => X"13E92903C1C34131E9C3495B69E9294303E9294303E903C3814129E983438129",
      INIT_2F => X"37371329C313E9C313E9C3412943292931E903495B3713292903C313E92903C3",
      INIT_30 => X"411141114101C1814101C1814101C1814101C181410133334181814303494137",
      INIT_31 => X"1111131111111111111111111111111111134111891383899B11013109118111",
      INIT_32 => X"31C9893789378931E943899B31E943899B0341418973418911898949C9111111",
      INIT_33 => X"2943296931E943495B292969834329698343294381034133314911D901C98149",
      INIT_34 => X"1111131189412943034101C1D901C98181333313294313694313694341294341",
      INIT_35 => X"899B3783899B31E9C3899B31E9C3899B83D941898909131313C183C9DB814131",
      INIT_36 => X"7341891149813713A9838113A983811341A9834131893713D989A983899B3783",
      INIT_37 => X"D949C14111D901C9815981814941418973418911814113031303134103814189",
      INIT_38 => X"0301C1D9C9C111D909C93711D909C931E943C18103899BC113031303130341C1",
      INIT_39 => X"0313031303C1C1D9C9C113298313A98313A983294303C9DBC1D9C91303130313",
      INIT_3A => X"292983431369A983431369A983432969A9C38369A9C3836983C143C103C9DB13",
      INIT_3B => X"6983432969834329438103413189418973418911498913814141092943030113",
      INIT_3C => X"2903C313E92903C1C38131E9C3899BA9A9E903C3A9E903C3A9C3834129432929",
      INIT_3D => X"81034137371329C313E9C313E9C3812983292931E903899B3713292903C313E9",
      INIT_3E => X"4303495B41897341891181814303494141418973418911818981811303130313",
      INIT_3F => X"1181C1816983438149292983414103495B31C14911D90149C9493731814931E9",
      INIT_40 => X"13111141091343091BC1814101C1814101C1814101C181333333374189734189",
      INIT_41 => X"43495B31E943495B034141897341891149C98989111111111111111111111111",
      INIT_42 => X"491313130103091BC1C1311109C1818141D981494141333189493749374931E9",
      INIT_43 => X"31893713D9892903899B3703899B3703899B31E943899B31E943899B03D9C9C9",
      INIT_44 => X"81494189734189118181414189734189118137132903C1132903C11381290381",
      INIT_45 => X"495B3731E943495B292969834329698343294381034131894189734189118181",
      INIT_46 => X"814101C18141333313292983431369A983431369A98381434129434141294303",
      INIT_47 => X"111111111143899B29698343296983432943038181D98931894101C1814101C1",
      INIT_48 => X"4189734189118949111111111111111111111311112943C9DB81D9898931E911",
      INIT_49 => X"818181494189734189118181414189734189111181818141D981494141373189",
      INIT_4A => X"4303495B3731E943495B29296983432969834329438103413189418973418911",
      INIT_4B => X"112943C9DB81D989373713292983431369A983431369A9838143412943414129",
      INIT_4C => X"81818141D9814941413731894189734189118949111111111111111111111311",
      INIT_4D => X"4381034131894189734189118181814941897341891181814141897341891111",
      INIT_4E => X"1369A98381434129434141294303495B3731E943495B29296983432969834329",
      INIT_4F => X"2969834329698343294301038181D9C189318949413713292983431369A98343",
      INIT_50 => X"49812943495B81D9893741897341891149812943495B81D9898931E91143899B",
      INIT_51 => X"373111111111111111114901C18141013333334181C181410941418973418911",
      INIT_52 => X"814941897341891181C181410941897341891189498911898113031303130341",
      INIT_53 => X"891181C181410941897341891149891181C9C1811303130313410301C1413731",
      INIT_54 => X"0941897341891149891181C9C1811303130313410301C1413731814941897341",
      INIT_55 => X"1149891181C9C1811303130313410301C1413731814941897341891181C18141",
      INIT_56 => X"C1C11303130313C1038141413331814941897341891181C18141094189734189",
      INIT_57 => X"D9C9814101C1814101C1814101C1334181C181410941897341891189491181C9",
      INIT_58 => X"413731111111111111111111111111114901D909C1D9C94141130313031303C1",
      INIT_59 => X"698343296983432943C10381814141897341891189498911C9C1130313031303",
      INIT_5A => X"897341891149812943091B813741897341891149812943091B8131E943899B29",
      INIT_5B => X"891181C9C1811303130313410301C1413731814941897341891181C181410941",
      INIT_5C => X"2943091B8131E943899B29698343296983432943C10381814141897341891149",
      INIT_5D => X"897341891181C181410941897341891149812943091B81374189734189114981",
      INIT_5E => X"0381814141897341891149891181C9C1811303130313410301C1413731814941",
      INIT_5F => X"1B813741897341891149812943091B8131E943899B29698343296983432943C1",
      INIT_60 => X"13410301C1413731814941897341891181C18141094189734189114981294309",
      INIT_61 => X"29698343296983432943C10381814141897341891149891181C9C18113031303",
      INIT_62 => X"41897341891149812943091B813741897341891149812943091B8131E943899B",
      INIT_63 => X"89491181C9C1C11303130313C1038141413731814941897341891181C1814109",
      INIT_64 => X"812943091B8131E943899B29698343296983432943C103818141418973418911",
      INIT_65 => X"41897341891181C181410941897341891149812943091B813741897341891149",
      INIT_66 => X"0101D9C98181D989894141D9490101D909098181D909C18137C14181D9814941",
      INIT_67 => X"031329430381D98913294303132943031329430381D98913031303130381D9C9",
      INIT_68 => X"2943031329430381D98913294303132943031329430381D98913294303132943",
      INIT_69 => X"09C1D909C131C1D94909C131C9814101C13749C981D9894141D9491329430313",
      INIT_6A => X"498911111141D9C901D9C9C1C1130313031303C1D9C9814101C1373111111111",
      INIT_6B => X"C1D94909C141314989414189778911C94901C181D9C18941418973418911C989",
      INIT_6C => X"81D9894101C1333333333341814189414189734189118137311109C1D909C131",
      INIT_6D => X"093101D9490101D9093101D9490101D909C1D909C1C1D9C93101D94901C931C9",
      INIT_6E => X"8941D9493109C937C937C937C937C93101D9490101D909093101D9490101D909",
      INIT_6F => X"3333418141894141897341891189893731111111C981D9C9813181D909C98131",
      INIT_70 => X"C94189414189734189114909C9898937311111111111111111118941D9894133",
      INIT_71 => X"8181D901893181D9098181D9C18941D9894141D9493181D9C981493149C1D901",
      INIT_72 => X"894937493749374937493181D9498181D989893181D9498181D989893181D949",
      INIT_73 => X"81418941418973418911C90949894981C137311149C1D949C133418141D94931",
      INIT_74 => X"77891149418977891149118937893731C931C9A90341333333333341814101C1",
      INIT_75 => X"318931896903414189778911494189778911498937893731C931C9A903414189",
      INIT_76 => X"11C981D9C98131C981D9C98131894101C1814101C13749418977891149374937",
      INIT_77 => X"03130301D949C1D94981D98901C113131303C9DB818137311111111111111111",
      INIT_78 => X"C1814141897341891181C1814109418973418911894989111111114941130313",
      INIT_79 => X"091BC1C137311109C1D909C13109C1D909C131C989811303130313030181D909",
      INIT_7A => X"1111111181C9C1C11303130313C10381D9C941D9C9C1D9C1C981411313130103",
      INIT_7B => X"43091B8131E943899B29698343296983432943C1038181414189734189114989",
      INIT_7C => X"7341891181C181410941897341891149812943091B8137418973418911498129",
      INIT_7D => X"C1814101C18141013333333333418189811303130313030181D909C181414189",
      INIT_7E => X"111313138913E9E9031329290313292903E929D9C1C33109C1814101C1814101",
      INIT_7F => X"03811313134103495B4189778911498911111111111111111111111111111111",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => DOUTADOUT(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => DOUTBDOUT(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => DOUTPADOUTP(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => DOUTPBDOUTP(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \addra[14]\,
      ENBWREN => \addrb[14]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  port (
    \douta[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[31:23][0:4095]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0401080000000000000020200820200810204000000000000008002250002800",
      INITP_01 => X"0204100208202800000000000000000000000002010080402010020100404004",
      INITP_02 => X"2108000008420000000020000020040080200204082002041000480102041001",
      INITP_03 => X"000C022280222802228045000080001000020000400018018000000084200000",
      INITP_04 => X"811280040301128112811280000C020406022501128008030112811280894000",
      INITP_05 => X"0010C00000000000000000000000000040000008010000000020080001030112",
      INITP_06 => X"0000410100000820200000004000000200010000800000000000010000300180",
      INITP_07 => X"0000000040408000002000000000000200010000000200006000100000020808",
      INITP_08 => X"0010000000000000000001801000000000400002000000000040400000000404",
      INITP_09 => X"40000000084200001000C0000000000000040C0030003000040C0018000C0000",
      INITP_0A => X"0800000060004000000800180000010000000010840000002000002000600000",
      INITP_0B => X"0100010040004010000100002000C00020000000000400800002010000000000",
      INITP_0C => X"8200040000020040008200041000220040000100800000000004000000040004",
      INITP_0D => X"0040000110000008020000100008000400000000000040000000400800104000",
      INITP_0E => X"1000110001100020001000001000080800040400020200002000000001000600",
      INITP_0F => X"0040004400010200802000220002200011008020000100008000400000000040",
      INIT_00 => X"7E7C787B9C99718283807C867D827D7A8377807B86867C7E861B000000000000",
      INIT_01 => X"30001200023000120000000740001300B00020010020002000007F7F79868680",
      INIT_02 => X"0000200101010000200000000000200000000000200100200000200000120002",
      INIT_03 => X"000202FDEF0300000202FDF30300000202FDF603000100010000000101020200",
      INIT_04 => X"00110004FBE004040003FC20040040000203FC4B0300002000110002FDEC0300",
      INIT_05 => X"002004002003001000000120001100200305FA14050440040404FB3F05040420",
      INIT_06 => X"0100100000000010000002002040004000002040004000001300000100200011",
      INIT_07 => X"0000004001FEED0200002000110001FEB5010001FEB401000000000100001001",
      INIT_08 => X"010300010000200202FDDF030040000102FD0A02004000012000110001FEAC02",
      INIT_09 => X"0001FECC02004000000001FEF7010000000000000002FD9903000000200202FD",
      INIT_0A => X"04004000010003FCE503004000010002FDC303004000000002FDEE0200400000",
      INIT_0B => X"000000202040102020200120202020012020201120012020010220020303FCBA",
      INIT_0C => X"2000100001012120012120212101012120012121212001012120012121212001",
      INIT_0D => X"2000212120200010000020002020002021212000100001002101202001202121",
      INIT_0E => X"03000002FD3C02000001FE3F020000000000FF01FE4401000000000000200020",
      INIT_0F => X"2D0400000303FC310400000303FC3404000003FC04030000000013000002FD39",
      INIT_10 => X"1D0404000304FB210404000304FB2404040003FCF404000000130000000303FC",
      INIT_11 => X"040405FADC050400040013000000010003400404FB18050404001300000304FB",
      INIT_12 => X"04000506F90006040405FACF06040000130000000505FA090604000505FA0C06",
      INIT_13 => X"F9EE0704041100020006F9BF06040000130000000506F9F90604000506F9FC06",
      INIT_14 => X"00010000062000110006F9E3070400062000110006F9E8070400062000110006",
      INIT_15 => X"010200030003000600050405040604050007F8A3070400040400130000040100",
      INIT_16 => X"001200034000130007400013000F400013000034000001000000010101010102",
      INIT_17 => X"00034000130007400013000F4000130000000013000230200013000200120002",
      INIT_18 => X"4000130007400013000F40001300010000130002302000130002001200020012",
      INIT_19 => X"7407040000010000040004000800001300023020001300020012000200120003",
      INIT_1A => X"02FD0000020000000000030001070001000007F8F107040603040002000007F8",
      INIT_1B => X"0000000007000200000102000002FD0000030000000000070001000001010000",
      INIT_1C => X"0300000103000003FC000004000000000007000200000102000003FC00000300",
      INIT_1D => X"0200FF000104FF01FE4E0200000000001EFF000000FF00FF5501000000000000",
      INIT_1E => X"FC3A0400000000021402FD0C0300FF000204FF02FD440300000000012001FE16",
      INIT_1F => X"010000020002000003000304FBD90404000000030703FC020400FF000304FF03",
      INIT_20 => X"FE1A010000180000FFEB0100FF0004FF00FF2201000000000000000000000100",
      INIT_21 => X"02000000000501FEDA0200FF0004FF01FE120200000E01FEE20100FF0004FF01",
      INIT_22 => X"C60300FF0004FF03FCFE030000000000CE000000FF000000000001000102FDB2",
      INIT_23 => X"0003000304FB9504040000000503FCBE0400FF0004FF03FCF50400000F0003FC",
      INIT_24 => X"000000020000000004000204FBBC0504000400020704FBB20404000204FF0000",
      INIT_25 => X"960200FF0004FF02FDCE0200001701FE9E0200FF0004FF01FED6020000000300",
      INIT_26 => X"010002000203FC6603000000000502FD8E0300FF0004FF02FDC60300000E02FD",
      INIT_27 => X"FBAA0404000E03FC7A0400FF0004FF03FCB20400000000000000010000FF0000",
      INIT_28 => X"00000000030000FF000003000404FB4A05040004000504FB720404FF0004FF04",
      INIT_29 => X"0000030001000001000340000100001300030223400013000001000000000000",
      INIT_2A => X"0000000000000B40400020000000000000300000001000400100000100000100",
      INIT_2B => X"0740001300002001010020000020000002000000000000000000000340400020",
      INIT_2C => X"0000010020010220002000022020000220000000000030400020010020002000",
      INIT_2D => X"0021010220002100022020000220000020010420002000042000200004200040",
      INIT_2E => X"00000020000F0000200104002020002000040020202100040120200040000001",
      INIT_2F => X"40000200010101000002234000130003FCD00300404040000000000000010000",
      INIT_30 => X"00100012000000000204FBBD0404404040000200010103FCD504004040404040",
      INIT_31 => X"000000010102000000000000000030100040000003B007400013001020032003",
      INIT_32 => X"FC0000030000000100000000000000001D000010010201100002001000020000",
      INIT_33 => X"000300020102010000000000080003FC00000300020102000001000000140003",
      INIT_34 => X"074000130000200101002000002000000211000000000000000000000003FC00",
      INIT_35 => X"020B404000200000022000100000000000000000000030400020010020002000",
      INIT_36 => X"4000200000022001100125000001000100010003400013000007404000200101",
      INIT_37 => X"0000022002100215000001000100010003400013000107404000200101020B40",
      INIT_38 => X"0000000000000001000100010003400013000207404000200000020B40400020",
      INIT_39 => X"02FD290300000000000000200100200120001F40001300000000000000000000",
      INIT_3A => X"00B004000020020010B00400030B400013001020012001001000120000000002",
      INIT_3B => X"1300102020010020010020012000134000130000000000000000000000200200",
      INIT_3C => X"00050001000001010200000000000000200200B00300200210B00000030B4000",
      INIT_3D => X"0000000000002001000340000013000400000000000000010000000000000100",
      INIT_3E => X"03400000130003001340001300000001FE120100000000001300000000000000",
      INIT_3F => X"0000000013000200300000120000004001000002000100010003000100000100",
      INIT_40 => X"0000004001000002000100010003000100000100034000001300030013400013",
      INIT_41 => X"0003000100000100034001001300030013400013000100001300020030000012",
      INIT_42 => X"0100000000001300000000001300020030010012000000400000010200010001",
      INIT_43 => X"30000200300012000B400013000020010201002000020020000200000001FEC9",
      INIT_44 => X"000001FEAC010000000000130000000000130002004030010200403000020040",
      INIT_45 => X"0100010001402001020140200002004020000200000001FE7402000000000100",
      INIT_46 => X"20000F00002001040020000401001020000F0000200104002000040117000000",
      INIT_47 => X"000000000000300012000340001300001020000F000020000400200004000010",
      INIT_48 => X"000001090010000001000202FD5903000000000109000003000000000001003D",
      INIT_49 => X"0001001C00FF000001000202FDB003000000000107000001000202FD9A030000",
      INIT_4A => X"0303FC7D040000000105000F000002000303FC3C040000000105000000000000",
      INIT_4B => X"05000100210000000000000000FF000002000303FC9404000000010700000200",
      INIT_4C => X"2001002000200001000002050003000000100102010010000200001000020000",
      INIT_4D => X"000000FF010001001000120000020002FDF003000001010100000B01000C0000",
      INIT_4E => X"000100034040010207404000020B404000021000001001021000021000020000",
      INIT_4F => X"0340001300030020010020002000021000000300000000000003040000010001",
      INIT_50 => X"100012000000000000FFBD010000000000000000000100000003000000000100",
      INIT_51 => X"0001FF0001000000000000000000010000000300000000010003400013000300",
      INIT_52 => X"404000020B404000021100000000000003000010010210000210000200010000",
      INIT_53 => X"2000200002110027000301000100010003050000010001000100034040010207",
      INIT_54 => X"4040000115000100010000010001000300010000010003400013000300200100",
      INIT_55 => X"010000000300000000010003400013000300100012000000000304FB76040440",
      INIT_56 => X"04FB720504000400010100000200000001FF0000020000031000000100000000",
      INIT_57 => X"00000002FF000200000101020203030404000000000000000200010100040400",
      INIT_58 => X"0605020100030001010100000002001001020110000200100002000002000002",
      INIT_59 => X"0500010000002001002001200007400000130008000F04FB0000050400000000",
      INIT_5A => X"0003000003000308000001000340000F0004000000000404FB00000504000000",
      INIT_5B => X"0000FF0001000120010000200000000020000100000E00000002010002000000",
      INIT_5C => X"0106F900000604000104050500040006F91A0604434040400404040000030010",
      INIT_5D => X"000000000001000300000100000001FF00010000010000000002010002000000",
      INIT_5E => X"03FC000003000000000000000100000001FF0000010000022C0002FD00000300",
      INIT_5F => X"01000003100003FC000004000000000000000100000001FF0000010000021C00",
      INIT_60 => X"00000000000000010003000004FB000004040000000000000100000001FF0000",
      INIT_61 => X"0002000300020201010C000002FF000002000001010202030304040500000000",
      INIT_62 => X"FB00000404000000000601000000010010010201100002001000020000020050",
      INIT_63 => X"04FB000004040000000500010000002001002001200007400000130008000F04",
      INIT_64 => X"1C0004FB0000040400000000000100240000FF00012B400003000E002E000000",
      INIT_65 => X"00000001000D0000FF0101100004FB0000040400000000000100190000FF0101",
      INIT_66 => X"0001000100000000010001000104FB00000404000100040004FB000004040000",
      INIT_67 => X"FF01011C0004FB0000040400000000000100240000FF00010000020200030000",
      INIT_68 => X"04000000000001000D0000FF0101100004FB0000040400000000000100190000",
      INIT_69 => X"0000000002020003000000010001000104FB00000404000100040004FB000004",
      INIT_6A => X"1001020110000200100002000002000002FF0002000001010202030304040505",
      INIT_6B => X"0908000000000000090A04040400000022060504070400010101020202010000",
      INIT_6C => X"080308070607000000080009F600000908080308060707000000140009F60000",
      INIT_6D => X"080000000509F60000090800000005000B00010001000100000009F600000908",
      INIT_6E => X"00022B40001300000300000403040005000000030000050006080009F6000009",
      INIT_6F => X"000F00010808080808FF0004000120010000200000000220000300000E002740",
      INIT_70 => X"0B08000000010BF400000C080104090A0A0004000BF4DC0C0840404000000105",
      INIT_71 => X"0001FF00010000010000040304000500000000090000060009000A00010A0002",
      INIT_72 => X"000001000001FF00000200000203FC0000030000000000000101000300000100",
      INIT_73 => X"04000000010000000001000001FF00000200000303FC00000400000000010000",
      INIT_74 => X"000404FB00000504000004010000000001000001FF00000200000304FB000004",
      INIT_75 => X"02000101010101030C0002FF0000020000010102020303040405050000000002",
      INIT_76 => X"00000004001700FF010506F90000060400000006000001002001FF0022040406",
      INIT_77 => X"050006F9000006040000030300000004000D00FF010506F90000060400000303",
      INIT_78 => X"04000000220600001001020110000200100002000002005D06F9000006040203",
      INIT_79 => X"F700000908080307060607000000140008F70000090800000000000009060404",
      INIT_7A => X"000005000B00010001000100000008F700000908080307070606000000080008",
      INIT_7B => X"002101FF000527400000000127000008F7000009080000000508F70000090800",
      INIT_7C => X"0009080000030300000004001700FF010508F700000908000000030300000104",
      INIT_7D => X"F7000009080203050008F7000009080000030300000004000D00FF010508F700",
      INIT_7E => X"0A0800000008030300000104001801FF0019080C0001FF000000040000050008",
      INIT_7F => X"00000A080203090009F600000A080000030300000004000D00FF010909F60000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[30]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[30]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[31]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[31]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \addra[15]\,
      ENBWREN => \addrb[15]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  port (
    \douta[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    \addrb[14]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[31:23][4096:8191]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"02000C0000800002200000100004020000000002000002008000880008804001",
      INITP_01 => X"8000001004000440004400080008000020001010000808000404000040000000",
      INITP_02 => X"0004010001100011008008020002200008100401000110001100008804000100",
      INITP_03 => X"0200000000000000000001081002008000880004402000401000110000200800",
      INITP_04 => X"8010000000000010060000000010000000002018004030000000000000108180",
      INITP_05 => X"000040000080000000008000000840800000000000000100000C010010000600",
      INITP_06 => X"000100010000000001080C000000000004000001008408000000000000000004",
      INITP_07 => X"0000008104022080000008000010000000010000000000000000000000008000",
      INITP_08 => X"0000000000000000080000401008000000001081800000010810000000000008",
      INITP_09 => X"0000100000002000010040200004000000000000020000100402000040000002",
      INITP_0A => X"0000020100004008040001002010000400804000100201000000009000100010",
      INITP_0B => X"0800400004020000801000400200002010000400800200100001008000000000",
      INITP_0C => X"0000000000004080400800200100001008000200400100080000804000100200",
      INITP_0D => X"0080000000000000800000000000400000180040000000000000400000000000",
      INITP_0E => X"0000000000000080088200110400100004000000000000100000000004000000",
      INITP_0F => X"0030000000002000000000010020008004000040040000000000000008010010",
      INIT_00 => X"04001700FF00091B40000000011D000009F600000A08000000080201032509F6",
      INIT_01 => X"F600000A080000030300000004000D00FF010909F600000A0800000303000000",
      INIT_02 => X"02000000010102020303040405000000030400080009F600000A080203090009",
      INIT_03 => X"070605040704040101020102010201000000020000010000050002000002FF00",
      INIT_04 => X"00000000050001000020010003400000130005000D07F8000007040000000000",
      INIT_05 => X"032B40001300000300000504040005000000030000060006080007F800000704",
      INIT_06 => X"0F00010808080404FF0004000120010000200000000220000200000E00274000",
      INIT_07 => X"080000000109F600000A08010407080800040009F66C0A084040400000010600",
      INIT_08 => X"01FF000100000100000504040005000000000700000600070008000108000309",
      INIT_09 => X"0001000001FF00000200000203FC000003000000000000010100030000010000",
      INIT_0A => X"000000010000000001000001FF00000200000303FC0000040000000001000000",
      INIT_0B => X"0404FB00000504000004010000000001000001FF00000200000304FB00000404",
      INIT_0C => X"0402010001010101030C0002FF00000200000101020203030404000000000200",
      INIT_0D => X"030200000003001700FF010505FA0000060400000006000001002001FF002204",
      INIT_0E => X"0202050005FA000006040000030200000003000D00FF010505FA000006040000",
      INIT_0F => X"FA0000060400000000000606000000020000010000050002004305FA00000604",
      INIT_10 => X"0127000005FA0000060400000000050001000020010003400000130005000D05",
      INIT_11 => X"001700FF010505FA00000604000000030200000103002101FF00052740000000",
      INIT_12 => X"000006040000030200000003000D00FF010505FA000006040000030200000003",
      INIT_13 => X"03001801FF0019040C0001FF000000040000040005FA000006040202050005FA",
      INIT_14 => X"0007040000030200000003000D00FF010606F900000704000000040302000001",
      INIT_15 => X"000000011D000006F90000070400000401022406F9000007040202060006F900",
      INIT_16 => X"00000003000D00FF010606F9000007040000030200000003001700FF00061B40",
      INIT_17 => X"02030304000000020400050006F9000007040202060006F90000070400000302",
      INIT_18 => X"01010101000001001801FF001A0001000C480200FF00000000000D0000010102",
      INIT_19 => X"030004FB000004040000020000000003000D00FF010304FB0000040400000000",
      INIT_1A => X"1B40000000041D000004FB0000050400000005010101012604FB000004040200",
      INIT_1B => X"0000000003000D00FF010304FB00000504000000020000000003001701FF0003",
      INIT_1C => X"000004FB00000504010001000004FB000005040200030004FB00000504000002",
      INIT_1D => X"000210010201100002001000020000010000000000000340000D000740000E00",
      INIT_1E => X"0004200104000020000F00002000042001041400000001000120010220000220",
      INIT_1F => X"1100000001011700000003000020000F0000200004200004000020000F000020",
      INIT_20 => X"1300020012000200120003400013000740001300000000FFFF00000000130000",
      INIT_21 => X"0400000400000400000000000040010200400002004000020400000000004000",
      INIT_22 => X"001001020100010003401000090020000700A080200008001000020021000001",
      INIT_23 => X"00000500130002000A000000040000010003401000090020000700A080200008",
      INIT_24 => X"000A00000020000A002000FF2001000020000800000D000000000A0002001300",
      INIT_25 => X"20000B0010A08030000900B00020201001020110000200150000002010001200",
      INIT_26 => X"B00002100002004100000020000A0010001200000020000A002000FF2F010000",
      INIT_27 => X"FD540200403008000C0003400000000040000C0000202020B001021001020120",
      INIT_28 => X"0C000340004000000C0020B0000210000201000110A08030000B0020000B0002",
      INIT_29 => X"0010201002000F00000A0010A08030000B0020000B0002FD3F03004040300800",
      INIT_2A => X"020303040405000000003000090020000A00000013000340001300102010000F",
      INIT_2B => X"00050605050505060100000101000003000000000D0000000200520000010102",
      INIT_2C => X"00000632000000010001000340000D000740000E00000707F800000804000000",
      INIT_2D => X"20010100200000200000030004240007F80000080400040005002C0005000006",
      INIT_2E => X"000020000100020B400013002000200101002000002000000200202003010500",
      INIT_2F => X"000000000100000000000002200120200B400013000000002001010000200000",
      INIT_30 => X"01020101020203030404050506060707080809090A0A00000000020103FF0000",
      INIT_31 => X"080A080B0A090A0B0606070505040506010000010000000D000201F000020003",
      INIT_32 => X"180000010001000340000D000740000E00000D0DF200000E0C000000000D0C0E",
      INIT_33 => X"200A20200B4000130040002001010020000020000B000B00000000000C000CFF",
      INIT_34 => X"0C0C0C0D0000200A00030100000800000900000000010000000000000920000A",
      INIT_35 => X"1200020012000340001300074000130000010B00FFFF00000007001300000815",
      INIT_36 => X"0000100C0007040040010200400002000740000205000C000100400013000200",
      INIT_37 => X"0100000500000C000C000008000E0FF00000100C050F00010000000600060FF0",
      INIT_38 => X"000400010002010100001601010000034000030F000F00010001000000000600",
      INIT_39 => X"01000000000700010003002001002000002000200E0007000001000001000000",
      INIT_3A => X"0020010100002000000000200000200020010100200000200007000B00060000",
      INIT_3B => X"2001010020000020000B0007240010EF0000101000000C03000400200A000300",
      INIT_3C => X"200000000020000400090B400013004000200101002000002000000B200E4000",
      INIT_3D => X"020006000000000100000000000009200F20200B400013000000002001010000",
      INIT_3E => X"0A00060010EF00001010000B0F0EFF000010EF0000101001FF00020001000000",
      INIT_3F => X"1001050B0003000D00201000030F0012000C0D0000000C00FF0003000C001340",
      INIT_40 => X"000201000000000D0000010102020303040405050606070000000010EF000010",
      INIT_41 => X"000D000740000E00000707F80000080400000000050605040505060002010101",
      INIT_42 => X"FF00000004001300000515040000000500000600000600000000010001000340",
      INIT_43 => X"04000C00000040001300020012000200120003400013000740001300000000FF",
      INIT_44 => X"020008F70000080803030708F700000808040400400102004000020004400002",
      INIT_45 => X"13000203400013004000200101002000002000010004180008F7000008080200",
      INIT_46 => X"0404050506060000000020010100002000000000200000000020000307200100",
      INIT_47 => X"0000010300001300002001010020000020000000000200A20000010102020303",
      INIT_48 => X"09F600000A0800000A090A0605060505050604020130000500000200003B4001",
      INIT_49 => X"050006000AF500000A080706090AF500000A08080700080000080000092A0000",
      INIT_4A => X"04001300020340001300400020010100200000200004000518000AF500000A08",
      INIT_4B => X"01300005000002003A0000002001010000200000000020000300032000030920",
      INIT_4C => X"07000A0000080000092A00000BF400000B0800000A090A060506050505060802",
      INIT_4D => X"0004000518000BF400000C08050006000BF400000C0807060B0BF400000C0808",
      INIT_4E => X"000020000300032000030B200A00130002034000130040002001010020000020",
      INIT_4F => X"00200101002000002000010000000002002000FF020000002001010000200000",
      INIT_50 => X"000130000500000000080CF300000C0C000130000500000000000B4008001300",
      INIT_51 => X"0F0100010001010101000000010102020000000000000102FF0B0CF300000C0C",
      INIT_52 => X"030004FB00000504000200040E04FB0000050400000005FF0000010000000000",
      INIT_53 => X"0504000200040E05FA0000050400000401FF0001000100000002000200031100",
      INIT_54 => X"0E05FA0000060400000401FF0001000100000002000201031100030005FA0000",
      INIT_55 => X"0400000401FF0001000100000002000201031100030005FA0000060400020005",
      INIT_56 => X"0001000100000002000202030000030006F900000604000200050E06F9000006",
      INIT_57 => X"02000200030200010102020303040000000200060E06F90000070400000401FF",
      INIT_58 => X"0027020405060505010100010002010100000200000100000300010000000000",
      INIT_59 => X"2001010020000020000300003B0607F80000070400000006FF00000100000000",
      INIT_5A => X"F8000007040002300005003B0707F8000007040002300005003B074000130000",
      INIT_5B => X"000403FF0004000100000004000500052900060007F800000704020503060E07",
      INIT_5C => X"300005003B0740001300002001010020000020000300003B0707F80000080400",
      INIT_5D => X"F800000804020503070E07F8000008040002300005003B0707F8000008040002",
      INIT_5E => X"00003B0708F70000080800000403FF0004000100000004000501052900060007",
      INIT_5F => X"003B0708F7000008080002300005003B07400013000020010100200000200003",
      INIT_60 => X"0004000501052900060008F700000808020503070E08F7000008080002300005",
      INIT_61 => X"002001010020000020000300003B0808F70000090800000803FF000400010000",
      INIT_62 => X"08F7000009080002300005003B0708F7000009080002300005003B0740001300",
      INIT_63 => X"00000803FF0004000100000004000502052900060008F700000908020503080E",
      INIT_64 => X"02300005003B0740001300002001010020000020000300003B0809F600000908",
      INIT_65 => X"09F600000908020503080E09F6000009080002300005003B0709F60000090800",
      INIT_66 => X"0200010002000100000200010002000100FF020001000001C300000000010001",
      INIT_67 => X"0000000000000000000001010000000000000000000000000100000000000100",
      INIT_68 => X"0000000000000000000000000101000000000000000000000000000101000000",
      INIT_69 => X"00000100012D0001000001300000010102900000000000020000000000010100",
      INIT_6A => X"0000010101000100000100000300010000000000010002000302180100000103",
      INIT_6B => X"0001000001010C00000103FC6D040000000202000003000103FC000004000000",
      INIT_6C => X"0001000001010000000000000001000304FB0000040400040100000001000109",
      INIT_6D => X"FF0D000200010002001100020001000200000200010001007100020001007500",
      INIT_6E => X"0000000012000001000100010001000100020001000200000500020001000200",
      INIT_6F => X"0000000000000101FE000002000000040001010000000000010C000100000111",
      INIT_70 => X"0004000105FA0000050400000000000601010405000101010300000001000100",
      INIT_71 => X"0100010300110001000100010300000100010001002D00010001003000000004",
      INIT_72 => X"000001000100010001000100010001000100000500010001000100FF0D000100",
      INIT_73 => X"0104000505FA0000060400000000000203070104000001000100000000000001",
      INIT_74 => X"A401000400FFD2010000001F0100010000001F80000000000000000002030403",
      INIT_75 => X"0000001F80010000FF9901000400FFC60100001F0100010000001F80000000FF",
      INIT_76 => X"0300000100016D00000100017000000101020203038F0100FFBB01001F010001",
      INIT_77 => X"0000000002000002000001000003000000001300000320010401010101010001",
      INIT_78 => X"04020406F900000704000505060E06F90000070400000005050604FF00000100",
      INIT_79 => X"130000033A010400000100014100000100014400000400010000000003000100",
      INIT_7A => X"0805050401FF0002000100000002000001000001000000030000030000000300",
      INIT_7B => X"0005003B0740001300002001010020000020000700003B0808F7000009080000",
      INIT_7C => X"00000908000707080E08F7000009080001300005003B0708F700000908000130",
      INIT_7D => X"04050506060707080000000000000000060001000000000300010006020408F7",
      INIT_7E => X"030000000000002001000020000000200020A08100007F000001010202030304",
      INIT_7F => X"0009000000090013000AF5190A0800000A090908040506040606050601010202",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[30]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[30]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[31]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[31]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \addra[14]\,
      ENBWREN => \addrb[14]\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  port (
    \douta[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_ena : out STD_LOGIC;
    ram_enb : out STD_LOGIC;
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\ is
  signal \^ram_ena\ : STD_LOGIC;
  signal \^ram_enb\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[31:23][8192:12287]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  ram_ena <= \^ram_ena\;
  ram_enb <= \^ram_enb\;
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000008001000010880001002000800400004008000000000000008000000",
      INITP_01 => X"0000000002080044100088200108004000200000000400000020100000000000",
      INITP_02 => X"0080102008010100100040404004080040000000000800000400001020008000",
      INITP_03 => X"00000000005000000C200C3080200C2002000001840186100401840001002004",
      INITP_04 => X"1042400002004240000004800000008000202020000010101000000000000000",
      INITP_05 => X"2008000100200800000040020100100080200200100400400200800000848000",
      INITP_06 => X"00C0000402400100024000080400020080001002008002400008020001004000",
      INITP_07 => X"080810206000C000600000080000440818003000180000804804022040C00180",
      INITP_08 => X"0300060003000008024010206000C00060000410040120081030006000300002",
      INITP_09 => X"0000800100400000002040C0018000C000200040100000000000009000120081",
      INITP_0A => X"0000000000000000000004081800300018000400080200000000810300060003",
      INITP_0B => X"0006100618401006100000004000000000000004081800300018000400080200",
      INITP_0C => X"0004020406220000061006184010061000622000006100618401006100062200",
      INITP_0D => X"2008020004404004040100408180030001800008100404104101040410406101",
      INITP_0E => X"0400802004008020040800810110020040080100000010020200200200100800",
      INITP_0F => X"0080000040400020080100204000808010020040080100200400802008010020",
      INIT_00 => X"0700080AF500000A080000000706001300000107000800120000000100000008",
      INIT_01 => X"0000033601080000013D00000100000001060300000000010000000009000000",
      INIT_02 => X"0C0C000009090903FF0004000100000004000000000105000003000000050013",
      INIT_03 => X"0C0003300005003B0740001300002001010020000020000B00003B0B0CF30000",
      INIT_04 => X"020A0CF300000C0C020A0B0B0E0CF300000C0C0003300005003B070CF300000C",
      INIT_05 => X"01070000010001FF00000006FF08000CF300000C0C020A000001000000000500",
      INIT_06 => X"40404000FF0000012001000020000000200020A0810000000101020203000000",
      INIT_07 => X"0500000007000200000001000000000000020000020000010102020303000043",
      INIT_08 => X"010E000001000001001205040501000101000101030000010000000300020000",
      INIT_09 => X"000100000200002F0006F90000060402050006F9000006040000000502050000",
      INIT_0A => X"02000100020000060001000200FF0A00010002000E000100020000010002002A",
      INIT_0B => X"00000006020000010F06F9000006040000000001000600000100010001000100",
      INIT_0C => X"0100010000001F8000050006F9000006040201030103040006F9000006040000",
      INIT_0D => X"040406F9410604001F0100010000001F80000506F91F06040406F94C0604001F",
      INIT_0E => X"000004000406F90806040106F9350604001F0100010000001F80010506F91306",
      INIT_0F => X"0100000003000000000500010007000000030000010000000500000000030000",
      INIT_10 => X"0006F900000704000000020101000706F9000007040000020000000004040000",
      INIT_11 => X"0101010103FF000002000001010202030300000001030103000606F900000704",
      INIT_12 => X"000500000005230000060006F900000704000000000006020504050406010001",
      INIT_13 => X"06F9000007040004000005000001000000000300010005000000040000010000",
      INIT_14 => X"06F90000070401020503040006F9000007040206F90000070400000302030006",
      INIT_15 => X"070007F800000804000000030006000404FF00180100060001FF000000010004",
      INIT_16 => X"00000007F800000804000503020001FF00000006000707F80000080401030205",
      INIT_17 => X"0000130000000000FF7E010000000013000000FF800000000000FF8700000013",
      INIT_18 => X"5C000000000000FF6E010000130000000000FF73010000130000000000FF7901",
      INIT_19 => X"0000000002FD590200000000000001FED702000001FE65010000000000130000",
      INIT_1A => X"BF05040404FB490404000000000003FCC704000003FCCA03000002FD54030000",
      INIT_1B => X"001300002C00FF000000000000000100010002000200030003000400040004FB",
      INIT_1C => X"F9270704000004000006F92C0604000004000005FAAA06040405FA3705040004",
      INIT_1D => X"00040008F79209080808F71C0808000004000007F89A08040407F89D07040406",
      INIT_1E => X"002020250000000000A400FF0000000004000005000500060006000700070008",
      INIT_1F => X"000A00000040000000000500000000000000000000300012003030B000001200",
      INIT_20 => X"00000A0000004040000000000500000040404000000000000000004040000000",
      INIT_21 => X"200303FCB50400400000000003000030001200B0000006002000000000400000",
      INIT_22 => X"040430001200B0000006002000022002300404FB6B050440040304FB48040400",
      INIT_23 => X"00050103042005300607F857070440040606F934070404200106F9A106044004",
      INIT_24 => X"400000000001000003001300001300001000040020000400A025000000000100",
      INIT_25 => X"000101000002001300001300000000060020000400A00203FC00000300434040",
      INIT_26 => X"040020000400A021000000000000020000FF00000001FF0203FC000003000000",
      INIT_27 => X"000400A01100000100FF00000001FF0202FD0000030000000000000103001000",
      INIT_28 => X"0000000000000200FF00000003FF0304FB000004040000000000001000040020",
      INIT_29 => X"000200010002FD5A0300000000010002FD620200000000000300130000490000",
      INIT_2A => X"010003FC480400000000010003FC5103000000001300003400FF000000000100",
      INIT_2B => X"FB370504000400010004FB3F04040000001300002400FF000000000200000300",
      INIT_2C => X"06040400010005FA2E05040004001300001000FF000000000300000400010004",
      INIT_2D => X"1300000F81000001010000000000000000FF000000000400000500010005FA26",
      INIT_2E => X"06040002000300010003FC0C0400000000020003FC1403000000010000010300",
      INIT_2F => X"0004FBF80504000400020004FB000404000000130000000000000001000103FC",
      INIT_30 => X"00000400010005FAEA0504000400020004FBF305040013000038030000040001",
      INIT_31 => X"00000E380300000500010005FADD0604000400020005FAE50504001300003803",
      INIT_32 => X"0704000400020006F9CE0704000404001300000F3800FF0105FA000006040000",
      INIT_33 => X"F8BA0804000400130000000000000001000507F8C0070406000600010007F8C6",
      INIT_34 => X"0800020008F7AD080800130000380700000700010008F7B20808000400020007",
      INIT_35 => X"010000000000FF0508F700000908000000000E380700000800010008F7A50908",
      INIT_36 => X"000002005C00FF0203FC00000300000000000001000103FF0000010069000001",
      INIT_37 => X"0010000004000405FA6705040000050509000000000000010100210000FF0001",
      INIT_38 => X"03FF000004000405FABE05040000050507000004000405FAA805040000050509",
      INIT_39 => X"00FF0505FA0000060400000400FF0001000002003400FF030005FA0000050400",
      INIT_3A => X"000707F83508040000050509040000000000010100210400FF00010000020028",
      INIT_3B => X"000707F88B08040000050507000006000707F875080400000505090010000006",
      INIT_3C => X"0100C90000010102020000000000000002FF050007F8000008040006FF000006",
      INIT_3D => X"05FA040604000005050A050000000000010021010001000100010300FF003B00",
      INIT_3E => X"05FA5A06040000050507000004000505FA440604000005050A00100000040005",
      INIT_3F => X"033A0305FA00000604000002FF00033B030005FA000006040204FF0000040005",
      INIT_40 => X"05090010000006000607F8D8070400000505090400000000000102002100FF00",
      INIT_41 => X"040205FF000006000607F82F07040000050507000006000607F8190704000005",
      INIT_42 => X"0000040402FF00033B000000006C00FF0107F80000070401030E0007F8000007",
      INIT_43 => X"09F6A40A0800000909090800000000000102002100FF00033B0708F700000808",
      INIT_44 => X"09F6FA0A080000090907000008000909F6E40A08000009090900100000080009",
      INIT_45 => X"000000003800FF0709F600000A0801070E0009F600000A080208FF0000080009",
      INIT_46 => X"00000B000B0CF3760C0C000009090909000000000001020021080800FF00033B",
      INIT_47 => X"00000B000B0CF3CD0C0C000009090700000B000B0CF3B70C0C00000909090010",
      INIT_48 => X"00000C010E000000000800FF090CF300000C0C010A0E000CF300000C0C020AFF",
      INIT_49 => X"004000100003001200000000010102020300000000000000FF0C0CF300000D0C",
      INIT_4A => X"060007F84C070440000504040405050000010000010001001300000000400140",
      INIT_4B => X"09000000010400210400FF0006000500050006000700010007F8430804000400",
      INIT_4C => X"07000008000809F660090800000908090010000008000809F61F090800000908",
      INIT_4D => X"00030007000301000009F6000009080407FF000008000809F676090800000908",
      INIT_4E => X"060B0800080006000AF50F0B0840000809080013000000010001000000020002",
      INIT_4F => X"0D0C00000D0809000000010400210800FF00060005000A0000000A0001000BF4",
      INIT_50 => X"0D0C00000D080700000B000C0CF3230D0C00000D0809001000000B000C0CF3E2",
      INIT_51 => X"0200000200090009000B00030100000CF300000D0C040BFF00000B000C0CF339",
      INIT_52 => X"0001000EF1C90F0C000C0006000EF1D10E0C40000C0D0C001300000101000100",
      INIT_53 => X"000F10EFA5101000000D0C09000000010400210C00FF0006000D00050000000E",
      INIT_54 => X"000F10EFFB101000000D0C0700000F000F10EFE5101000000D0C09001000000F",
      INIT_55 => X"030000000002000002000C000D000E000301000010EF00001010040EFF00000F",
      INIT_56 => X"2000020010000020010100200000200000021000030012000000000001010202",
      INIT_57 => X"0101000001000100130000100120200102001000100020200002001000100020",
      INIT_58 => X"000300040004000500010006F96D0604000400050005FA750604400005040400",
      INIT_59 => X"0504090010000006000707F84908040000050409000000010300210400FF0005",
      INIT_5A => X"08040206FF000006000707F89F08040000050407000006000707F88908040000",
      INIT_5B => X"080809090A0A0B0B0C0C00000000000000000100010006000201000007F80000",
      INIT_5C => X"30A0000300000002000200000001010101020202010301030404050506060707",
      INIT_5D => X"0C0C0CF31C0C0C000809090A090A090A06050705060705070200001300000000",
      INIT_5E => X"0C0C0EF1810E0C0C0DF20B0E0C00000C00000DF2100D0C00000C00000CF38E0D",
      INIT_5F => X"0D000D000E000E000F0004000FF076100C0C0FF0000F0C00000C00000EF17E0F",
      INIT_60 => X"EA111000100C00130000000B0FF086100C00FF000B0FF0F2100C0B000C000C00",
      INIT_61 => X"4F13101012EDD91210000010000011EEDE1210000010000011EE5C11101010EF",
      INIT_62 => X"120013001300040014EB4414141013ECCE1410000010000013EC4C13101012ED",
      INIT_63 => X"141400130000000B14EB54141400FF000B14EBC0141410001000110011001200",
      INIT_64 => X"16E9A71714000014000016E9AC1614000014000015EA2A16141415EAB8151400",
      INIT_65 => X"1800040018E71219181818E79C1818000014000017E81A18141417E81D171414",
      INIT_66 => X"1918180A18E722191800FF000B18E78E19181400150015001600160017001700",
      INIT_67 => X"00001A18080004000919000019E600001A1818090019E6000019180A19E60000",
      INIT_68 => X"180119E6661A180619E6691A180A000719E67E1A180019E600001A18080019E6",
      INIT_69 => X"19E6551A180419E6831A1800000B19E65C1A180419E68A1A1800000B19E6631A",
      INIT_6A => X"020619E600001A180600000119E600001A18070019E64F1A180119E67D1A181F",
      INIT_6B => X"1000001A001B1BE4271C180000191909180000000000010500211800FF00093B",
      INIT_6C => X"FF00001A001B1BE47D1C18000019190700001A001B1BE4671C18000019190900",
      INIT_6D => X"1C1804001BE400001C18040E01061BE400001C1804190E001BE400001C18051A",
      INIT_6E => X"0005001000FF00091BE400001C18000502FF000900010000000300031BE40000",
      INIT_6F => X"001BE400001C18010500051BE400001C18020500000B4000030012000D000100",
      INIT_70 => X"001C1C0000011800060018FF000001000B00001BE400001C1801140000000000",
      INIT_71 => X"00000000001CE300001C1C000F181400001CE300001C1C0018140F1B001CE300",
      INIT_72 => X"01010100000100040404050000000000000700FFD4010000000013000000FFD6",
      INIT_73 => X"01FEBB020000000013000001FEC0010000000013000000FFC201000000000000",
      INIT_74 => X"A6040000000000FF000602FDB003000000000A000002FDB50200000000130000",
      INIT_75 => X"0013000004FB990504040004FB9D05040000040000000003FCA30400030003FC",
      INIT_76 => X"0013000006F98D06040004000D000005FA8F0604000004000005FA9705040004",
      INIT_77 => X"0013000007F87D080400040013000007F87F0704000004000006F98707040004",
      INIT_78 => X"08000009F66C090800080013000008F772090800080013000008F77708080004",
      INIT_79 => X"001300000AF55D0B080008001300000AF55F0A08000008000009F6640A080000",
      INIT_7A => X"1300000CF34C0C0C0008001300000BF4520C080008001300000BF4570B080008",
      INIT_7B => X"00000DF23C0E0C000C001300000DF2410D0C000C001300000CF3470D0C000C00",
      INIT_7C => X"0EF1270F0C00000000000E000100000EF12F0F0C0C00000EF1360E0C000C0013",
      INIT_7D => X"0C0F070FF01C100C000C001300000FF0220F0C000C001300000EF1240F0C0000",
      INIT_7E => X"11EE07121010000011EE0F111000101000130000000F00010010EF1410100000",
      INIT_7F => X"1210000010000011EEFB12100000000000000001000013000016000011000100",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[30]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[30]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[31]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[31]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \^ram_ena\,
      ENBWREN => \^ram_enb\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addra(12),
      I1 => addra(13),
      O => \^ram_ena\
    );
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addrb(12),
      I1 => addrb(13),
      O => \^ram_enb\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  port (
    \douta[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ram_enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[9:1][8192:12287]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"221001E00C00098045FC0323C0701040419801703AE4A29000053486E07005C9",
      INITP_01 => X"77BB24327820D2D041A5A0834B400E00A000E800800208000000C06402D55044",
      INITP_02 => X"BE19C181C098FC11C1C8E37F047040A406CB5D9218E0B855501E03C103180EDB",
      INITP_03 => X"D36B698310B1DDDDE103E1021D83E103763BBBBC207C2043B07C2061542F85D0",
      INITP_04 => X"0B7F055001027F0385B99A0035000041C00104014C6C0201025400136ADADB56",
      INITP_05 => X"86E0C68C3786E0D4098147785C1BF1DE1B837E3BC3706FC7786E0D0106FE0680",
      INITP_06 => X"860E7C20B701D40883073DE1703B783E1868C1783E1A37072DE1B81FBC1F0BB7",
      INITP_07 => X"E0E381630E861D030E83555E2180E058C3A18750C3A60617E0E0BF00C60E0C1C",
      INITP_08 => X"183830721839E0A0BF0581630E861D430E9C11C0E05F80C03183830721839E08",
      INITP_09 => X"7580043C1F0A98637300C60E0C1C860E60810F0DC0D555F805F080C1CDF80C03",
      INITP_0A => X"552BF4D82C004BF09CEE6018C1C18380C1C01021E1B81A019DCC0B187430EA18",
      INITP_0B => X"EEF081F0810EC1F081AAAA861EE08C78784C6E6058C3A18740C3A00021E0F855",
      INITP_0C => X"14F0480020F86EEEF081F0810EC1F081830782EEEF043B04207C3B043430F86E",
      INITP_0D => X"0280ACBB7F06F250505C16058C3A18750C3A7861C17050C30C3C30F0C30D0C14",
      INITP_0E => X"70CE0F86706E1D8370E1D61C3AC338370CE0DC3AAAB0C338300680381938E0B8",
      INITP_0F => X"3E1D50EF0B060783E19C1B870EBE160DC338370CE0DC338370CE0F8760DC3383",
      INIT_00 => X"C189414189734189118949C9818143899B01D94109C103C9DB891303130313C1",
      INIT_01 => X"9B41413731118941413189414181D98911018181D989130313031303018181D9",
      INIT_02 => X"89114989111111814941411303130313410301C141D9414901C1131313810389",
      INIT_03 => X"1149812943091B8131E943899B29698343296983432943C10381814141897341",
      INIT_04 => X"814141897341891181C181410941897341891149812943091B81374189734189",
      INIT_05 => X"8141834303C937C931C94941894137418973418911814189130313031303C181",
      INIT_06 => X"29A9A989898129C329C3A9C3A9836983694329699981034101C1814101333341",
      INIT_07 => X"3749314937493189411303130313034141D94933314101C1814101C181334169",
      INIT_08 => X"813181C98149C1D9C93111111111111111111111118949374931493749318941",
      INIT_09 => X"C1C18941D949093737418973418911814189418973418911894989373111C981",
      INIT_0A => X"31C1C1C1D9C9C931C1C1C1D9C9C931C1C1C1D9C931C1C1C1D9C9818181D98931",
      INIT_0B => X"C98989373189414137418973418911894989C1D9C931C9893789378937893789",
      INIT_0C => X"37893731C931C9A9034137418973418911814101C18141894189734189114909",
      INIT_0D => X"11494189778911498937893731C931C9A9034141897789114941897789114989",
      INIT_0E => X"31C18149414189778911494189778911498937893731C931C9A9034141897789",
      INIT_0F => X"37893189378931C981378931C93789318941C113031303134103C1C1D901C933",
      INIT_10 => X"814189734189118949498181C18937418973418911894981C981D9893111C989",
      INIT_11 => X"1111111111494133314101C1814101C1813341814101C1814941418973418911",
      INIT_12 => X"134103C1C1013731C18149418973418911894989C94937311111111111111111",
      INIT_13 => X"4189734189118981C9413189C937C93189C137C931C937C9318941C113031303",
      INIT_14 => X"418973418911814101C1814941897341891181418973418911498981C1C18937",
      INIT_15 => X"8149418973418911498981014937311111494137310141C937C931C949418941",
      INIT_16 => X"9B49334189734189118101C18149374931C989814941418973418911814101C1",
      INIT_17 => X"1103C9DB4911814189778911491103C9DB894189778911498941897789110389",
      INIT_18 => X"31C933491181418977891103C9DB491181418977891103C9DB49118141897789",
      INIT_19 => X"4911C9894189778911894911C989418977891111418977891149111103091BC9",
      INIT_1A => X"778911114189778911894911C989418977891111418977891111418977891189",
      INIT_1B => X"03C9DB8931894911D901C9814911411141114111411141114111411109894189",
      INIT_1C => X"89778911894911C9894189778911894911C98941897789111141897789114911",
      INIT_1D => X"1109894189778911114189778911894911C98941897789111141897789111141",
      INIT_1E => X"A9E9A931490133334937498911D901C981491141114111411141114111411141",
      INIT_1F => X"8989131313E98181D989891313138181D98941D949A9C3495B6929A9A9C3495B",
      INIT_20 => X"D9898913131329E98181D989891313136929E98181D9898913131329E98181D9",
      INIT_21 => X"2943418977891129131311131111116943091B292943091B2933131313A94141",
      INIT_22 => X"1113A983899B696983899B694941294329434189778911291343418977891113",
      INIT_23 => X"8141C38303694329434189778911291343418977891113294341897789112913",
      INIT_24 => X"A98949111111111311C3899B43899B49A983495B6983495B69314901334181C1",
      INIT_25 => X"C98141C309C143C9DB03C9DB89A943899B2943899B29414189734189116929E9",
      INIT_26 => X"495B2943495B2931490133334181C103378931C9898149414189734189118949",
      INIT_27 => X"43091B293109C9C1378931C98981494141897341891189491111111111492943",
      INIT_28 => X"3333334181C9C1378931C9898149414189734189114911111181092943091B29",
      INIT_29 => X"114111098941897789114911C141894189778911491111111103495B093109C1",
      INIT_2A => X"098941897789114911C141894189778911491103C9DB8931894911D901C98149",
      INIT_2B => X"897789114911C141894189778911491103C9DB8931894911D901C98149114111",
      INIT_2C => X"8911114141894189778911491103C9DB8931894911D901C98149114111098941",
      INIT_2D => X"C9DB8949314901C18133333333334149818911D901C981491141110989418977",
      INIT_2E => X"77891141114111098941897789114911C1418941897789114911111111111103",
      INIT_2F => X"8941897789114911C141894189778911491103495BC941D94911D901C9814189",
      INIT_30 => X"49114111098941897789114911C14189418977891103C9DB4911814911411109",
      INIT_31 => X"498149118149114111098941897789114911C14189418977891103C9DB491181",
      INIT_32 => X"89114911C14189418977891149111103091BC989318949414189734189114989",
      INIT_33 => X"89778911491103091BC941D94911D901C9814189778911411141110989418977",
      INIT_34 => X"11414189418977891103C9DB49118149114111098941897789114911C1418941",
      INIT_35 => X"C133333341814941418973418911498949814911814911411109894189778911",
      INIT_36 => X"81D9C18931894941418973418911894989111111111111C9C181D98931894101",
      INIT_37 => X"C93711D901C9814189778911498911113111C981410181D9C189311189494101",
      INIT_38 => X"418911D901C9814189778911498911113711D901C98141897789114989111131",
      INIT_39 => X"8949414189734189118949118149410181D9C189318949413741897341891181",
      INIT_3A => X"C98141897789114989111131114901C18141D9814931114909010181D9C18931",
      INIT_3B => X"C9814189778911498911113711D901C98141897789114989111131493711D901",
      INIT_3C => X"D9C931C9814101C181333333333341814189413741897341891181418911D901",
      INIT_3D => X"4189778911498911113111894101C181D98931111111111111111189494101C1",
      INIT_3E => X"4189778911498911113711D901C98141897789114989111131893711D901C981",
      INIT_3F => X"C181414189734189118949810901C181413741897341891181418911D901C981",
      INIT_40 => X"1131893711D901C9814189778911498911113111894101C141D9814931490901",
      INIT_41 => X"1181418911D901C9814189778911498911113711D901C9814189778911498911",
      INIT_42 => X"49891111818981410181D9C18931894941418973418911814189374189734189",
      INIT_43 => X"4189778911498911113111894101C141D9814931490901C18141418973418911",
      INIT_44 => X"4189778911498911113711D901C98141897789114989111131893711D901C981",
      INIT_45 => X"81D9C189318949414189734189118141893741897341891181418911D901C981",
      INIT_46 => X"11D901C9814189778911498911113111894101C181D9C1893111118949414101",
      INIT_47 => X"11D901C9814189778911498911113711D901C981418977891149891111318937",
      INIT_48 => X"89491181C981D9C1893189494141897341891181418937418973418911814189",
      INIT_49 => X"83694329438103899B414901C1814101C1333333333341814941418973418911",
      INIT_4A => X"418941897789112949111313131111131111111111131143C9DB890389E9C3A9",
      INIT_4B => X"31490181D9C18931118949410113431303130311C111098941897789114911C1",
      INIT_4C => X"3711D901C98141897789114989111131493711D901C981418977891149891111",
      INIT_4D => X"11811181130309493741897341891181418911D901C981418977891149891111",
      INIT_4E => X"7789114911C141894189778911294913111183091BC9438149C14911D901C981",
      INIT_4F => X"89114989111131490181D9C18931118949410113431343130311C11109894189",
      INIT_50 => X"8911498911113711D901C98141897789114989111131493711D901C981418977",
      INIT_51 => X"4111D9C1898111811181130309493741897341891181418911D901C981418977",
      INIT_52 => X"11098941897789114911C141894189778911294913111183899B494341090189",
      INIT_53 => X"C98141897789114989111131C98141D9814931114909010113031303130311C1",
      INIT_54 => X"C9814189778911498911113711D901C98141897789114989111131C93711D901",
      INIT_55 => X"C1331181494111D9C1898111811181130309493741897341891181418911D901",
      INIT_56 => X"A9C38183899B69A9C38369A9C3836983438129438103899B41494901C1814101",
      INIT_57 => X"1111131111111103C9DB8969036929438103899BE903E9E90381C3899BA9C3A9",
      INIT_58 => X"13031303130311C111098941897789114911C141894189778911294911131313",
      INIT_59 => X"111131C93711D901C98141897789114989111131C98141D98149311149090101",
      INIT_5A => X"891181418911D901C9814189778911498911113711D901C98141897789114989",
      INIT_5B => X"01C1814101C1814101C13311814911D901C98111811181130309493741897341",
      INIT_5C => X"296903899B1189118911111181411101118111811101114101C1814101C18141",
      INIT_5D => X"111141897789114911111111111111111111111111111111111103C9DB894113",
      INIT_5E => X"11114189778911114189778911894911C9894189778911894911C98941897789",
      INIT_5F => X"4111411141114111411109894189778911114189778911894911C98941897789",
      INIT_60 => X"77891149111103495B09C181418977891189C9C1814189778911411141114111",
      INIT_61 => X"778911114189778911894911C9894189778911894911C9894189778911114189",
      INIT_62 => X"41114111411109894189778911114189778911894911C9894189778911114189",
      INIT_63 => X"111103495B09C181418977891189C9C181418977891141114111411141114111",
      INIT_64 => X"4189778911894911C9894189778911894911C989418977891111418977891149",
      INIT_65 => X"411109894189778911114189778911894911C989418977891111418977891111",
      INIT_66 => X"89111181418977891189C9C18141897789114111411141114111411141114111",
      INIT_67 => X"7341891181493711814131894189734189111181494189734189118141897341",
      INIT_68 => X"1149418977891149418977891149118141897789114941897341891181494189",
      INIT_69 => X"4189778911494189778911498141418977891149418977891149814141897789",
      INIT_6A => X"814141897341891181C989494189734189118149418977891149418977891149",
      INIT_6B => X"3711D901C9814189778911498911113111C981410181D9C189311189494101C1",
      INIT_6C => X"8911D901C9814189778911498911113711D901C98141897789114989111131C9",
      INIT_6D => X"8911814941897341891181894141418973418911814189374189734189118141",
      INIT_6E => X"D9C18931894941414189734189114981C1898141130313031381034141897341",
      INIT_6F => X"3741897341891181310937418973418911813109C131E943C103C9DB3109C181",
      INIT_70 => X"4189114989810149373111494133310141C9894189734189118141C989373737",
      INIT_71 => X"89118949334189734189118101C1814949418973418911814101C18149418973",
      INIT_72 => X"111111111111111111110909C9894909C9894189778911491103C9DB89418977",
      INIT_73 => X"4189778911491103C9DB894189778911491103C9DB8941897789114989494911",
      INIT_74 => X"7789114989111109C9894189778911491103C9DB894189778911491103C9DB89",
      INIT_75 => X"03C9DB894189778911418941897789114989111101C989418977891141894189",
      INIT_76 => X"03C9DB894189778911491103C9DB894189778911894911C98941897789114911",
      INIT_77 => X"03C9DB894189778911491103C9DB894189778911894911C98941897789114911",
      INIT_78 => X"11C9894189778911491103C9DB894189778911491103C9DB8941897789114911",
      INIT_79 => X"03C9DB894189778911491103C9DB894189778911894911C98941897789118949",
      INIT_7A => X"C9DB894189778911491103C9DB894189778911491103C9DB8941897789114911",
      INIT_7B => X"DB894189778911491103C9DB894189778911491103C9DB894189778911491103",
      INIT_7C => X"41897789114989494911411109C98941897789111149894189778911491103C9",
      INIT_7D => X"11C1894189778911491103C9DB894189778911491103C9DB8941897789114989",
      INIT_7E => X"4189778911114989418977891149111103495B0911C111098941897789118949",
      INIT_7F => X"8911894911C989418977891149894949111113090903091BC989491141110989",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[8]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[8]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[9]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[9]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ram_ena,
      ENBWREN => ram_enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_38_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 15 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 to 1 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "[9:1][12288:14335]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram\: unisim.vcomponents.RAMB18E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      INITP_00 => X"4EAABA1D567D556A14B561D54F9F2543BF6A3D351A145428EFDF0A0B7EBA2378",
      INITP_01 => X"7DD55D545281D29B6AEAA28EBA9F3EA9D28AAAA2D554E94CAAA8AA69FBEBA0ED",
      INITP_02 => X"38C7318F3080C6700C6760025CC18186096B00F556B7756EA875AEA8B5F5F7DD",
      INITP_03 => X"5C28500041B0011CD8C0498318C633B898A0000EB1CCCE31CD8F308C0003AC73",
      INITP_04 => X"000000000000000000000000000000000000000001FC186AEC1F844F70C686A0",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"11C9DB09891141110111091B09C911C111811141110111C111C9DB0989418977",
      INIT_01 => X"09C91111C9DB0989114111495B090911C111C9DB098911411111495B090911C1",
      INIT_02 => X"11C9DB1109891111899B1109891111899B09491111111111495B09091111091B",
      INIT_03 => X"1111899B1109891111899B1109091111091B1109891111111111899B1109C911",
      INIT_04 => X"11111111091B0949111111495B09C911118111011111111111114111495B0989",
      INIT_05 => X"11495B094911118111118111111111111101118111899B09C911111111111111",
      INIT_06 => X"111111111111C11111C9DB0949111111111111111111111111495B1109491111",
      INIT_07 => X"11111111091B098911111111111111111111091B0949111111495B0989111111",
      INIT_08 => X"DB0989114111495B090911111111091B09C91111C111C9DB0989111141111111",
      INIT_09 => X"1111111111111111111111111111091B094911111111110111C11111111111C9",
      INIT_0A => X"11811111111111111111111111111111091B0949114111111111110111811141",
      INIT_0B => X"1B09C911811111111111899B09091111111111111111111111111111899B0949",
      INIT_0C => X"1111899B09091111111111899B0949111111495B090911111111111111111109",
      INIT_0D => X"11C1111111110111091B09C91111111111111111C9DB09891111899B09891111",
      INIT_0E => X"9B094911110111111101110111091B09891111114111111111011111C111C111",
      INIT_0F => X"11495B09091111091B09091111111111111111091B09C9111111111111111189",
      INIT_10 => X"09891181111111899B090911111111899B09491111495B09091111495B090911",
      INIT_11 => X"11111111111111495B09C9111111114111110111091B09C9111111111111C9DB",
      INIT_12 => X"1111111111411111111111C111C111C111C111C11111111111110111091B0989",
      INIT_13 => X"31E94300ED0000C48356335BED00EDED66000941897341891189491111111111",
      INIT_14 => X"131311495B098943495B3729376983495B31E93331E983495B33412943495B33",
      INIT_15 => X"33296943495B2969C3495B292903495BC3495BA9692937036941897341891129",
      INIT_16 => X"E943495B418977891129136933296983495B29A983495B29A903495B69E9A969",
      INIT_17 => X"371313094931E983495B4303131309492983495B698343495B37130313094931",
      INIT_18 => X"4341897789113741897789112983495B31E91383495B4303131309492983495B",
      INIT_19 => X"09492983495B43495B37130313094931E943495B4189778911132943495B3329",
      INIT_1A => X"1383495B4303131309492983495B6983495B371313094931E983495B43031313",
      INIT_1B => X"5566921C376D0000ED00ED6633294341897789113741897789112983495B31E9",
      INIT_1C => X"29A983495B29A983495B29A983495B29A983495B29A9C3495B69A96929E9A969",
      INIT_1D => X"495B83495B31E983495B3329434189778911291331E983495B6933296983495B",
      INIT_1E => X"891129131369C3495B83495B33294329434189778911291313696903495BE9C3",
      INIT_1F => X"09C1335949893371C91349D9493371C91149D949332933053329432943418977",
      INIT_20 => X"11899B0989334181814133418181413181418977891149111111111109193331",
      INIT_21 => X"49318937494141897789111199C199C9894189778911113331893341899B4911",
      INIT_22 => X"C9C5C9C5C9C533454945494549453305C9373759414189778911491189318937",
      INIT_23 => X"00000000000000000000000000000000000000000000000000000000003329C5",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => B"00" & X"0000",
      INIT_B => B"00" & X"0000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => B"00" & X"0000",
      SRVAL_B => B"00" & X"0000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(13 downto 3) => addra(10 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(13 downto 3) => addrb(10 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(15 downto 0) => B"0000000000000000",
      CASDINB(15 downto 0) => B"0000000000000000",
      CASDINPA(1 downto 0) => B"00",
      CASDINPB(1 downto 0) => B"00",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(15 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTA_UNCONNECTED\(15 downto 0),
      CASDOUTB(15 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTB_UNCONNECTED\(15 downto 0),
      CASDOUTPA(1 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPA_UNCONNECTED\(1 downto 0),
      CASDOUTPB(1 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_CASDOUTPB_UNCONNECTED\(1 downto 0),
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DINADIN(15 downto 0) => B"0000000000000000",
      DINBDIN(15 downto 0) => B"0000000000000000",
      DINPADINP(1 downto 0) => B"00",
      DINPBDINP(1 downto 0) => B"00",
      DOUTADOUT(15 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTADOUT_UNCONNECTED\(15 downto 8),
      DOUTADOUT(7 downto 0) => p_39_out(7 downto 0),
      DOUTBDOUT(15 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTBDOUT_UNCONNECTED\(15 downto 8),
      DOUTBDOUT(7 downto 0) => p_38_out(7 downto 0),
      DOUTPADOUTP(1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPADOUTP_UNCONNECTED\(1),
      DOUTPADOUTP(0) => p_39_out(8),
      DOUTPBDOUTP(1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM18.ram_DOUTPBDOUTP_UNCONNECTED\(1),
      DOUTPBDOUTP(0) => p_38_out(8),
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SLEEP => sleep,
      WEA(1 downto 0) => B"00",
      WEBWE(3 downto 0) => B"0000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 1 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[11:10][0:16383]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"4008002000A505004000000001000000000032C00000008037B43883030D0000",
      INIT_01 => X"4000500004010010000001000040004000000000001000000000C03300380002",
      INIT_02 => X"000015555440000033000C800220008400110004000024000800008800840000",
      INIT_03 => X"0C003000F00C8000280240141001004000000010550055555055554555515555",
      INIT_04 => X"02840020010020008002401000001000500400007000004000000000300C0040",
      INIT_05 => X"2C0F00C00000000002C0F00C000D5115588CC004003285404100002000008000",
      INIT_06 => X"B1000200CAC40008032D4050000C04000C014C1000000002C0F00C0000000000",
      INIT_07 => X"0C0300003000301003E0002010029000101001400080003C00200CFC40008033",
      INIT_08 => X"00000C0030000F000C1003A0020001002100040001400400010000040000C030",
      INIT_09 => X"00C00C0003C34040010032000800028008000240040001400C03000000000000",
      INIT_0A => X"F0000000000002C030C300C30300534040545CD144C5353C3404000000000000",
      INIT_0B => X"3000070003029400000000000004101004010000000000004000000000000000",
      INIT_0C => X"CF0014C033C005000CDE9414D0001010C5500000040B00000030000030000C00",
      INIT_0D => X"040051117147001B00100D4445C51C006C004013C0000000F000000004000100",
      INIT_0E => X"0000000B144000000000002C000000C000A500000B1400000040001C01C002C0",
      INIT_0F => X"000001405145455170547000010050C300003C030CC353101755000000000C0C",
      INIT_10 => X"0000F00000101000100508020020404545517054700401015051454551705470",
      INIT_11 => X"40200F0100000044050101001404041494000000000004400004014000401000",
      INIT_12 => X"4DD00F03400338340033B4340033B550C1034002090D00082443400209105574",
      INIT_13 => X"700000010001000001C0700C04000000F01000C0022401440000034141004011",
      INIT_14 => X"0054100545111705C1305E941410417415D0010040401C0000C0000004010100",
      INIT_15 => X"81AE5555000F0004000003405300C010040401C0000C00000300545455171500",
      INIT_16 => X"100000000000F0010300007001000C300000002C020030308FA50A78202022EB",
      INIT_17 => X"0040333D3405300C0332D34053004032C2505D057500F03000CB0030020350C0",
      INIT_18 => X"030C0000000B00800C0C2E5D040808781E94206AE9555400003C0C0303D34053",
      INIT_19 => X"0000C0D300403C0C00100000C30403034C010100C0D30040003034C0102C0004",
      INIT_1A => X"13050FA5250FA50A080808B86BAA555503C0C000030C100C0C30040403034C01",
      INIT_1B => X"41E955000004000F0B000F001030000C7000C70500004031C005300C70014003",
      INIT_1C => X"03D4D053000330F53414C000CF0A505D15D53C0000010000040033C00C00C01D",
      INIT_1D => X"00320D4C0400320D4C040032C15D15D0FA5086AEA95554F000300353414C000C",
      INIT_1E => X"454300100C3000C30500004030C005300C3001400303053EA51A080808B8032C",
      INIT_1F => X"31C00310D0C04003101D5D45611530000C3000C035301000C035301000C00D5D",
      INIT_20 => X"A943E943AE80AE1AEA95554F0000C7000C434301000C43530102C00403101D40",
      INIT_21 => X"1000C70030010075050F50000010003C2C003C0040C00033C00000F05D00CF01",
      INIT_22 => X"00C00D4D053000300F53414C000CC3D4D05300033C2941745754F00000040000",
      INIT_23 => X"0C7019ABA0278031C00310D4C0400310D4C040031C15D15C3E9421ABA55553C0",
      INIT_24 => X"5159454C00031C00310D4C0400310D4C04003103575150C004031C00000F05D0",
      INIT_25 => X"503C00032C00320D0C0400320D4C040B00100C82D00CB000C834301000C80B57",
      INIT_26 => X"4301000C00D4D050B00100C0C3E8030C00300D0C04003030FA5D15D484950555",
      INIT_27 => X"D740310000000000000000000109000000004040000701C00030C000C3000C03",
      INIT_28 => X"800008401C0000C000117050530504D441050C400000C0C000000B03C0305014",
      INIT_29 => X"02005B50050004100410440000000000000C0000001340000000000000240000",
      INIT_2A => X"3A50FA50A0A9EA9555404000000B000000000030000008000B800000000C0000",
      INIT_2B => X"04000000300400000001C00000000000000000300CCC0800004001C070000CCC",
      INIT_2C => X"00700000000043400001C070000C4C10FA50FA50F682AA9D84FAAAA55550F000",
      INIT_2D => X"D034000033C400003331040441D0D050505B17C535541155E95014D001000000",
      INIT_2E => X"00000040300F540500000000000010010013440000053500174350D7C5144004",
      INIT_2F => X"300000000034010F00030C0000C301000010000000C010000000070000000000",
      INIT_30 => X"C0C000000B03C030504503403001000701C000330CE943E94282AA955540000C",
      INIT_31 => X"940A000002BBAAA9555040000000000001C000000000030C0030C00C31000000",
      INIT_32 => X"C2AE040000000000001C000000000032C0032C00C9C0C004031C43E943C2AEBE",
      INIT_33 => X"0000040C00040000000000001C000000000033C0033C00CFC0C004033C4BE94B",
      INIT_34 => X"1C040C40D54011010030C040C30150011FA5055503C0403030530030305307C0",
      INIT_35 => X"EA955543C040C82C04000010032C040C81D54011010031C040C41D5401101003",
      INIT_36 => X"3D54011010033C040CCC1400CCC14F000000000033C2A4008650FA50AE741001",
      INIT_37 => X"400C0C14F0000000000300F5500440400CF0103330500333053C0000000000CC",
      INIT_38 => X"030100000400C30103030500303053C0000000000C00D54011010030C040C0C1",
      INIT_39 => X"000C40000031000D5D5D575750D500C0031C040C4C1400C4C14F000000000031",
      INIT_3A => X"350C000C10C003330E9D755001D551505D775655003031000000C40000031000",
      INIT_3B => X"0F000C70500C03400CE44445BABAEEAE8BAB9BAB9E5D2E91755003C0030C74D3",
      INIT_3C => X"040311C7054D0F33511115D5D775751D5D6757575767554D0003153050F295D4",
      INIT_3D => X"02E79D9405513E9417597595550000004C0000000001300000000001300003D4",
      INIT_3E => X"14F00000000003003CD54011D74D1504501934134004004D000CB01032C25290",
      INIT_3F => X"0400002050FA50FA505000000143AAAA5555003C1001340030C040C0C1400C0C",
      INIT_40 => X"0C14F0000000000300FB5500457554115465654C10C40043000C80D15D400400",
      INIT_41 => X"26269002B869554C0F00000000115543C00040000C3040000030C040C0C1400C",
      INIT_42 => X"306A00CB077A22226AEAABAAAEAAEABBAAE800CB0032C05A9AA7543E9428989A",
      INIT_43 => X"04040101510040D040002002001300008008004C000200200130000CB5010325",
      INIT_44 => X"03230901404054401011000CB021943E942869554F500032C0C87C100C830CE0",
      INIT_45 => X"0000000000000000000CF411400033D400330D0780500400032D40032C0C9344",
      INIT_46 => X"0080D00011223300000003000F00E00820008100050040144080000100000400",
      INIT_47 => X"0400C100C3000000015000340004488CC0000000C003C0380208002040014010",
      INIT_48 => X"00000032002800214000000000000003000CE94014050400C1000C1000304003",
      INIT_49 => X"14500400032C9410505350F0040003303440000000000CC0F29405150505353C",
      INIT_4A => X"000000030000D000000CC000C8020340000022000214056403C010000C0FB414",
      INIT_4B => X"0000000031430D000C000033000329405554000CC34000001400040020340000",
      INIT_4C => X"0331430D000C00003200022450400310F2000001100010080000040000003000",
      INIT_4D => X"43400100355757553040033C29415D5500F00300F20000000000003000000300",
      INIT_4E => X"000C38340030E10D000C38955D5554C1000C41D5300000C7034001000D000400",
      INIT_4F => X"000C43500031C0D000410340010420D0004102A5D7E94155D154000F00033C0D",
      INIT_50 => X"00410155D55400300FD54C1000CF000CF0340030A0D000C284340030A1557555",
      INIT_51 => X"340000F0D00003C4340000F2557565553000031C0031C0D000410340010410D0",
      INIT_52 => X"15D4D550000000CC000C2943E940540000015155000F0030030C2000C3000C30",
      INIT_53 => X"00315D4D550000000C800082515140D0004000C7034001000D00040043400100",
      INIT_54 => X"00003C575255400000022000205054540C0004000C3034000030D00000C43400",
      INIT_55 => X"E94050000500114004500000104541550003000100030C0D00003C340000F10D",
      INIT_56 => X"95554003400100033C0D000C38340030E10D000C385752554000000210001043",
      INIT_57 => X"12233000F00C2000A0090041000400000000FA50FA50F1400000A0D96513EAAA",
      INIT_58 => X"0150000000000112233000300C3000E00A0081000410004000315000C0003001",
      INIT_59 => X"31C008031700C7031300000000011223300000003000F00E0082000810005004",
      INIT_5A => X"0D000C38955D55540031C0031C004004004004000400400040040040004031C0",
      INIT_5B => X"00CF100CF13C00D0C3000333004000033C033C0033C0033C0D000C38340030E1",
      INIT_5C => X"004400010000003016BC1155000000000000C34100C35000C0341C05000CF000",
      INIT_5D => X"0000CC0003080022000084000104001000000000034003000C39000880002100",
      INIT_5E => X"0004400010000000000030000CC0003200008800020400104001000000000003",
      INIT_5F => X"2040010C044500000050004015000000C00330000C8000200083000002800210",
      INIT_60 => X"05000020AC4585C41620A8C3CC58F30F20A222888A224A211445451155980000",
      INIT_61 => X"F0A216BC0A111405AF010005AF050121284766F0551405AF0451114055AF0451",
      INIT_62 => X"445685116BC1685105AF05AC5225AFE216BC168F316BEC12888A214A2145011A",
      INIT_63 => X"1441445AF1445AF28866AE28056BE0118BC8A216BCA20A114511614445116BC1",
      INIT_64 => X"70C125CFC00C405AF046BC0044AF08A316B3C85AB8A2168A2151445144144144",
      INIT_65 => X"003C000000000003C00000000000000000000000000000C0000C00003C700C00",
      INIT_66 => X"BB40CF0001001007000000000003C00000000003C00000000010010070000000",
      INIT_67 => X"4003030C0C0000001100000000100000001C0000007000000000000000000000",
      INIT_68 => X"0000000000000003FFF00000C0000020100004000000430000CF03C300225051",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(14 downto 1) => addra(13 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(14 downto 1) => addrb(13 downto 0),
      ADDRBWRADDR(0) => '0',
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 2) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 2),
      DOUTADOUT(1 downto 0) => douta(1 downto 0),
      DOUTBDOUT(31 downto 2) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 2),
      DOUTBDOUT(1 downto 0) => doutb(1 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 1 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 2 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[13:12][0:16383]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"A80AA02A80AAAAA882A82A82A228A280200811A0020880C004BC044000023021",
      INIT_01 => X"A980A2080A02AA22A2A8AA19A19A0A880A282880A022A0288202A022A0288202",
      INIT_02 => X"A81000000020A2A022A808AA022A808AA022A80AA2A02A280AA2808A808A2080",
      INIT_03 => X"0AA02A80A808A0202A02A0281202A88000082000020A00002080002000080002",
      INIT_04 => X"0286202202A02A80AA02A02202A02A80A808A0005A02A0A80AA02A80A80880A8",
      INIT_05 => X"160681A0A80080808160681A09226AAAAAAAAAA82022A0206288202A2080A882",
      INIT_06 => X"A008A9208A8022A48222A80A08CA8608C80184280080808160681A0A80080808",
      INIT_07 => X"A2689A322220209202A220209202A220209202A202480A288A9208A8022A4822",
      INIT_08 => X"AA8C88232048CA08C81232A2C922AAA32208C8120288C8120282320480A22689",
      INIT_09 => X"3288C8123288984AAAA32208C8123288C8123288C81232AA22689A3222232248",
      INIT_0A => X"5802828AA000096086158218484148404040161829A086288984AAA32208C812",
      INIT_0B => X"2AAAA6823202AAAA80802800A00A00120A028280280A028048280A0A00210822",
      INIT_0C => X"8AAA804822AAA0120882AA8048A8A8AA1AA000A0148580220812A3202AA8C800",
      INIT_0D => X"A8890000682582A582A2240001A0960A960A88A2002108225802828A90000120",
      INIT_0E => X"002082268280028A028A04960088204A8CAAA082268282082040001A0960A960",
      INIT_0F => X"2A0228214A0101005A0A682A322A0080002296810809286AA86A800220220496",
      INIT_10 => X"2A205802A0A8AAA222A00A0228214A0101005A0A682A0228214A0101005A0A68",
      INIT_11 => X"202206820802A2A8200A8AA0802A2A2A4A92A4A92AA8C8AAA888A8028092A4A9",
      INIT_12 => X"A1080A889A322889A3229089A32292AA24089A320A2268C829089A320A6A2A84",
      INIT_13 => X"5820822908012400016A5A96A48A28A0A8A82062222AA008208AA9A88AA2A8AA",
      INIT_14 => X"22902004900005A96A5A9AAA88A28A841218010040401608204A88A004010100",
      INIT_15 => X"4121AAAA800AAA248C8AA89048924010040401608204A8880200401010058208",
      INIT_16 => X"1288888A2880A88128990058012A088000820896810822006AAAA284A8A8AA18",
      INIT_17 => X"9248222889048924822288904892482202AA21048680A890208AAA123200AA24",
      INIT_18 => X"822000208225A042088018A12A2A2A841AAA804A1AAAAA00002A248222889048",
      INIT_19 => X"29208888904A2A24001000208A848222224129208888904A482222241296A004",
      INIT_1A => X"2000AA806AAAAAA22A2A2A84486AAAAA02A24000822A1208888904A482222241",
      INIT_1B => X"41AA8A222228A205A5828AA2128992088020880400004822AAA01208AAA80482",
      INIT_1C => X"82A22448928220A8891224A0880AAA21121A2A882AAAAAAA840822AA84888022",
      INIT_1D => X"88220A2244A8220A2244A8220221126AAAAA04A1AAAAA8AA28220A8891224A08",
      INIT_1E => X"44A5AA12088020880400004822AAA01208AAA804822000AA80622A2A2A84822A",
      INIT_1F => X"22A88220A2244A82202A22449812892208AA2088288912A088288912A0880A22",
      INIT_20 => X"6AAAAAA8A1AAA1121AAAAA8AA2208AA2088288912A08828891296A8482202A88",
      INIT_21 => X"10208AAA1222008906AA288888A28816960A2A884A26482200008A5A04208802",
      INIT_22 => X"A0882A22448928220A8891224A0882A224489282202AA8844868AA20AAAAAAAA",
      INIT_23 => X"088026286AA84822A88220A2244A8220A2244A8220221126AAAA81286AAAA2A8",
      INIT_24 => X"912604A248822A88220A2244A8220A2244A822028891296A8482200008A5A042",
      INIT_25 => X"AA2A88822A88220A2244A8220A2244A5AA120882A208AA2088288912A0880A88",
      INIT_26 => X"88912A0880A2244A5AA120880AA8822A88220A2244A82200AA21126A062AA0AA",
      INIT_27 => X"4AAC0A08028A8200A2A08028A2A48A28A2A2A2AA00058160A822A8208AA20882",
      INIT_28 => X"42020440148080880A80520202202A4AAAAA889A9A9A421602020581A0842A82",
      INIT_29 => X"328205AAA00028A828A90880828808CA20088000A8A90820828808CA2090A020",
      INIT_2A => X"2AAAAAAA8A0A10AAAAA0A2020205800800A080220208C88205AA00A2AA088082",
      INIT_2B => X"08A28A2058082A0A82A96002828AA0A82828AA92088A868A68400160582A0880",
      INIT_2C => X"205810A0A2A84898400160582A08802AAAAAAAAAAA28282AAAAAAAAAAAA0AA88",
      INIT_2D => X"1A898A6822AAAAA822226A6A9A421602020581A0890AA829AA22AA268228A28A",
      INIT_2E => X"2828AA48220AA0AA0A82A0A02828AA82AAA868A288A086AAA86842116A82AAAA",
      INIT_2F => X"AA2A02A818890085A0822AA2A08A2AAAA8228A28816020A82A0AA5810A0A2A24",
      INIT_30 => X"421602020581A0842AA0A62A89A100058160A82200AAAAAAAA282AAAAAA80208",
      INIT_31 => X"AAA00A0A2A842AAAAAA082A0A82A8A8A016042828AA4822A8822AA08A26A6A9A",
      INIT_32 => X"8821082A0A82A8A8A016042828AA4822A8822AA08AAA26848220AAAAAA882116",
      INIT_33 => X"0A0A2AA240882A0A82A8A8A016042828AA4822A8822AA08AAA26848220AAAAAA",
      INIT_34 => X"2AA208828AAAAAA18822AA208808AAAA1AAAA2AA02AA282222084822220845A0",
      INIT_35 => X"1AAAAAA2AA208828AAAAAA18822AA208828AAAAAA18822AA208828AAAAAA1882",
      INIT_36 => X"28AAAAAA18822AA208888220888825802828AAA822022AAA86AAAAAA2186AAAA",
      INIT_37 => X"220888825802828AAA8220A2AAAAA86208AA882222088222209600A0A2AAA088",
      INIT_38 => X"0A2AAAAA86208AA882222088222209600A0A2AAA08828AAAAAA18822AA208888",
      INIT_39 => X"A2A18A8A8A86AAA1A1A128684A1A2A26822AA208888220888825802828AAA822",
      INIT_3A => X"84A028082A2682200AA186AAAA1AA1AA2188482A8086862A2A2A18A8A8A862A2",
      INIT_3B => X"0A8A08806A21884821400001868461A11868586861A1218086A002A282286218",
      INIT_3C => X"A282200286218A850000061A11868461A258689868486022628220006AAAA218",
      INIT_3D => X"AA1861AAA0A1AAAA8860860AAA921200006A1221200001A84884880001A002AA",
      INIT_3E => X"825802828AAA8220AA8AAAAA18626AAA0A188608602AAAA1AA08AA882202A8AA",
      INIT_3F => X"AAA82020AAAAAAAAAA20A0A080A0AAAAAAAA0028AAAA86A822AA208888220888",
      INIT_40 => X"88825802828AAA8220AA2AAAAA89AAA8286282A1AA1AAAA89A0880A822680AAA",
      INIT_41 => X"0000AAAA842AAA8800222222202AAA82AA80022208A8AAAAA822AA2088882208",
      INIT_42 => X"004A2088085000006A11A846A16A1A84A210208A8822006288885AAAAA800002",
      INIT_43 => X"000080002AAAAA2428A0220200001A80880800006A0220200001A208AAA88220",
      INIT_44 => X"8222240020000AAAAAA0A2088000AAAAAA882AAA8AAA2822A0880A8208822160",
      INIT_45 => X"A02A0228080820280208AA80022822AA88220A0288280022822AA8822A0882A0",
      INIT_46 => X"8002262AAAAAAA08CA808208CA8CA80820808208CA808A8000A80A02A0280A80",
      INIT_47 => X"4A9A12AA18480020002030898AAAAAAA8232A0208232A32A020820208232A022",
      INIT_48 => X"AA88A322A328A322A200802228C8A8CA28C8AAA880200A9A12A5A12A5684A968",
      INIT_49 => X"800200228220AA82020020AA002282202A282008080A088002AAA0802020022A",
      INIT_4A => X"322A23228002262A08C8A88C8A000898A82322A2322AA0020288008A088AA080",
      INIT_4B => X"2322A23228086268CAA82322A2322AAA000A80088898A8232A88C8A000898A82",
      INIT_4C => X"3228086268CAA82322A2322A00028220228A82322A23280A2A08C8A88CA028A8",
      INIT_4D => X"089A020A62A8920A890282202AA8A10A80A28220228A8232A88CA028A82322A2",
      INIT_4E => X"68082889A020A4226808298AA2482A240A08828A8902208A889A020A22680829",
      INIT_4F => X"AA08822A8822A2268082889A020A4226808298AA12AAA82A10AA800A88822A22",
      INIT_50 => X"8C8298AA240AA8220A8AA240A08A8208A889A020A22680829089A320A62A8902",
      INIT_51 => X"89A320A2268C829089A320A62A89282A8902822A0822A2268C82889A320A4226",
      INIT_52 => X"4A2482AAAAA0888A88882AAAAAAA021998A826AA800A28220A2240A08A8208A8",
      INIT_53 => X"20A4A2482AAAAA0888A88882A80A2226AAA0208A889A320A2268C829089A320A",
      INIT_54 => X"68C82928920AAAAA82222A2220AA0288A26AAA0208A889A320A2268C829089A3",
      INIT_55 => X"AAAA0082A020A8082A00A0A2A2A086AA8A289AAA80822A2268C82889A320A422",
      INIT_56 => X"AAAAA2889AAA80822A2268C82889A320A42268C82928920AAAAA82222A2220AA",
      INIT_57 => X"AAAAA084A8882084A84A888208882084A888AAAAAAAAA80A08266AAAAAAAAAAA",
      INIT_58 => X"A80A8482A12AAAAAAAA084A8482084A84A848208482084A848A80A8482A12AAA",
      INIT_59 => X"2282A4822A208A822A8482A12AAAAAAAA084A8482084A84A848208482084A848",
      INIT_5A => X"226888298AA2482AA822808228848848848848A848848A848848848A84882288",
      INIT_5B => X"208A4208A496A04A240A82228AAAAA82288228A822A0822A2268882889A220A4",
      INIT_5C => X"848A021228084802AAAAA0000848A02120208AA8208AAA20882808828208A800",
      INIT_5D => X"80848A021208212280848A02120821228084A2120A82128848280848A0212280",
      INIT_5E => X"0848A0212280848A0212280848A0212280848A02120821208212280848A02122",
      INIT_5F => X"20820200A82002A084A0848A80A82120A212280848A0212084802A0212821228",
      INIT_60 => X"A3828A0A282AA2828A0A282882AA20A10A10A842A10AA10A802AA00AAAAA8020",
      INIT_61 => X"AA10AAAAA00A802AAAAA802AAAAA820A802AAAAAAA8C2AAAAA30A8C2AAAAAA30",
      INIT_62 => X"C2AAA30AAAAAAA20AAAAAAAA20AAAAAAAAAAAAA20AAAAAA842A10AA10AA10AAA",
      INIT_63 => X"842842AAA842AAA802AAAA802AAAAAAAAAAA00AAAA00A00AA30AA8C2A30AAAA8",
      INIT_64 => X"58022200020882AAAAAAAAAAAAAAAA30AAA8C2AAAA20AAA20AA882A842842842",
      INIT_65 => X"28161AA021284A81618C8A021084210002108421840E2088A8421CC854584884",
      INIT_66 => X"8070000A32232215A1AA0212128161AA02184A81618CAA10A32232215A1AA021",
      INIT_67 => X"20502040810108A322886108A3228212185610A3225860210842108421084000",
      INIT_68 => X"00000000000000004440444130A322031328CA2163284222840AA2A8A322AA41",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 2,
      READ_WIDTH_B => 2,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 2,
      WRITE_WIDTH_B => 2
    )
        port map (
      ADDRARDADDR(14 downto 1) => addra(13 downto 0),
      ADDRARDADDR(0) => '0',
      ADDRBWRADDR(14 downto 1) => addrb(13 downto 0),
      ADDRBWRADDR(0) => '0',
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 2) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 2),
      DOUTADOUT(1 downto 0) => douta(1 downto 0),
      DOUTBDOUT(31 downto 2) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 2),
      DOUTBDOUT(1 downto 0) => doutb(1 downto 0),
      DOUTPADOUTP(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 0),
      DOUTPBDOUTP(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => '1',
      ENBWREN => '1',
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  port (
    \douta[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\ is
  signal \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[22:14][0:4095]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ <= \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\;
  \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ <= \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\;
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"2A09CAE018004A0C252028404A40A8502840A2EA00700080284002065BD11300",
      INITP_01 => X"840A54842AC26AE1080003D88ED7EFB4844421C405C30371C05D841294A1702A",
      INITP_02 => X"00008004000014446FBB398CC1402A050F380A972AD0040A54801005CA976002",
      INITP_03 => X"738A4C270C4270CC270CCE903506D792D8D41B1A49C61C3541A0004000000010",
      INITP_04 => X"AE970B8DDA96970DD6AE970D63305A9CB72C2E91D6AC99DA96970DD6A90BA5CE",
      INITP_05 => X"1540E78A8425C96D8D602768B8E40004467C40004829129088280810E37415D6",
      INITP_06 => X"080045A1A30008B437640004467C001258892C8490C024E4A800A0018538169C",
      INITP_07 => X"420200000002E6200101015505000020048508010120030A86EC5080080020C1",
      INITP_08 => X"4800138CAD535BE0220A060954C4100802000A0B988202800000002422000200",
      INITP_09 => X"001101200010296453094084088A11C5020F904E510E511697902F2053942E50",
      INITP_0A => X"08AA80D2A3505884220042D4C800000DC0200018E0383790221088010A842110",
      INITP_0B => X"8A064166499058A01A01102C24D4A0096829042913005100010A16000BD04E40",
      INITP_0C => X"B2492F2204024E4925F2490D9249788A4800850A900A272029042AA001649905",
      INITP_0D => X"00C850484018464902420092D8496A2480C0B7052724C555088049C924BE4921",
      INITP_0E => X"D2223D22235200BE7430AAA220298A2914C5080A628A43202231CC85620AAA01",
      INITP_0F => X"088088C80601A26305C0447C0446C0205C4D0040200A0245014280080927244A",
      INIT_00 => X"00338F33B9FA46C0C02466FC6680003380000033585833990042064B080C0406",
      INIT_01 => X"020C0C0000020C0C00CC00C0400E0E000040420A40420A000A0000003B202000",
      INIT_02 => X"0A40820E0C0A0A40820E0C0A0A40820E0C0A020A020A4A020A4A020A0C0C0000",
      INIT_03 => X"0A0404044304440A0404044304440A040404430444448404C444343434343402",
      INIT_04 => X"0A0A000404430444040404430444420404040443044404400A0A000404430444",
      INIT_05 => X"0082048A86040C0C008A04C40A0A000204040443044442040404044304440440",
      INIT_06 => X"0C0E400A0C0E04400A0C040C80C60C420C0408C60C000C0E0E008C040A480C0C",
      INIT_07 => X"440A0400040403044404400A0A000404430444040443044444843434020E400A",
      INIT_08 => X"430444040A04020404040304444204040404430444420404400A0A0004044304",
      INIT_09 => X"04040403044442040A04040403044484440C020A0404044304440A0402040404",
      INIT_0A => X"044442040A04040403044442040A04040403044442040A04040403044442040A",
      INIT_0B => X"0A0A048E8A08404A160ED44E140A04500A500E0C0E044C0A0404440404040403",
      INIT_0C => X"8A0A0A000A585684584E000A100A585608584E940A8C0A585642584E520AC60A",
      INIT_0D => X"56C4864E84CA0C0C000A18809056101A4E1ACA0C0C000A04589A9C169A1C8E1A",
      INIT_0E => X"04444404044304444404044304444402008AC00404430444448434020A404402",
      INIT_0F => X"4304440A0404044304440A0404044304444404044304440C440E0E00C0040443",
      INIT_10 => X"4304440A0404044304440A0404044304444404040304440C0E0E00C00A040404",
      INIT_11 => X"444404040304440C440E0E0080000040C002040404430444040C0C000A040404",
      INIT_12 => X"440A0404044304444404040304440C0E0E00C00A0404044304440A0404044304",
      INIT_13 => X"0403044444008E040004040304440C0E0E00C00A0404040304440A0404040304",
      INIT_14 => X"8E04800A04400A0A0004040304440A04400A0A0004040304440A04400A0A0004",
      INIT_15 => X"0C04CC04CC04CC04CC04CC044C044C0808040403044410448412120000040040",
      INIT_16 => X"0C0C00C0400C0C00C0400C0C00C0400C0C000E92C0B6960494048C044C044C04",
      INIT_17 => X"00C0400C0C00C0400C0C00C0400C0C000E0E0C0C000002000C0C00000C0C0000",
      INIT_18 => X"400C0C00C0400C0C00C0400C0C000E0E0C0C000002000C0C00000C0C00000C0C",
      INIT_19 => X"3F04440E0000409204009280000E0C0C000002000C0C00000C0C00000C0C00C0",
      INIT_1A => X"0404323404440CC4448484020B003434024004043F04440404004C0400000404",
      INIT_1B => X"4404028B004A04024C04048A000404323404444404028B004A04024C04048A00",
      INIT_1C => X"04024C04048A000404323404444404028B004A04024C04048A00040432340444",
      INIT_1D => X"0444C04A048AC00404030444C4444C0403C04A048AC00404030444443234044A",
      INIT_1E => X"04030444C4444C04000404030444C04A048AC00404030444C4444C0400040403",
      INIT_1F => X"04F68A048C04F68A048C0404047F04440E444C04000404030444C04A048AC004",
      INIT_20 => X"0403044444000A0404420444C0408AC004040304444402F68A048C04F68A048C",
      INIT_21 => X"04440C44C0000404420444C0C08AC0040403044444000404420444C0808AC004",
      INIT_22 => X"420444C0408AC00404420444C4844A04424A04CAC00C0A8A048A048A0404047F",
      INIT_23 => X"8A048A0404047F04440C4480000404420444C0808AC0040442044444000A0404",
      INIT_24 => X"02F68A048C04F68A048C0404047F04440E844A040004044204444A04CAC00C0A",
      INIT_25 => X"420444C0808AC0040442044444000404420444C0408AC0040442044444848434",
      INIT_26 => X"048A048A0404047F04440C44C0000404420444C0C08AC0040442044444000404",
      INIT_27 => X"0442044444000404420444C0408AC00404420444444C76D0048C0402CCC00A8A",
      INIT_28 => X"76D0048C0402CCC00A8A048A0404047F04440C4480000404420444C0808AC004",
      INIT_29 => X"580000184A00000040C006360C8E1818000A0AC00616160036CC8E343234044C",
      INIT_2A => X"364C92365692C046424800364C90365690C0364C8E0600C60A0036168E000040",
      INIT_2B => X"C0060C0C0006480A0C06480A0C060A0C0A34020002000200024014C0828486C0",
      INIT_2C => X"CC000A06480C0A8406480C0A42060C0A00020002400EC00040820A40480A080A",
      INIT_2D => X"CC0E0C0A44CC0E0C0A02CC0C0AC00204400A0A4086040C0A0406480C0A8202C6",
      INIT_2E => X"34020C400A0A0004400A0A40C2008E440C0A8AC4400E0C0A0E4204028CCC000A",
      INIT_2F => X"4204040404040A0A0A04C0400A0A0004047F0444C6084A8444044484C40C0C0C",
      INIT_30 => X"00400C0C00CCC00A0404047F0444C68442040404040404047F04448C4A08C684",
      INIT_31 => X"568A343434340200020002400A04C04000008A000A00C0800C0C000406044204",
      INIT_32 => X"04323404441412444484448404804000CE400AC40E0A0E82160A0E40160A0E36",
      INIT_33 => X"3404440404040404044000808A000404323404440404040404040080408A0004",
      INIT_34 => X"C0060C0C0006480A0C06480A0C060A0C0A4E800240028002C002008A00040432",
      INIT_35 => X"0AC0484A4A460C120A060E060E343234100200024014C00040820A40480A080A",
      INIT_36 => X"4A0A460C120A060E460E920000000000000040C0481212000EC0484A8A460C12",
      INIT_37 => X"0C120AC40E860E920000000000000040C0481212000EC0484A8A460C120AC048",
      INIT_38 => X"C09002008A0000000000000040C0400A0A000EC0404246C40C0A0AC006000804",
      INIT_39 => X"04047F04444404C484C4488A0C484A0C080CC0061010000C340240D00280D002",
      INIT_3A => X"0200000A04400A0402008A000AC0800C0C00040604420400400C0C00CCC00A04",
      INIT_3B => X"0E004446000E40820C40480C080CC0061212000C340200020002400A04400A04",
      INIT_3C => X"161436D48A3434343402000200024010400C40020010400C4002CA000AC0820E",
      INIT_3D => X"0A020002401240160AC0400A0C0C009880323414100A0C58401436588A0C1616",
      INIT_3E => X"C0400C1212000E04C0400E0E000C0404040204440E448410100080323414160E",
      INIT_3F => X"000C0A0E0E00000A400C1010000A00005000120E000040120000129000000040",
      INIT_40 => X"000A00005000120E000040120000129000000040C0400C1212000E04C0400E0E",
      INIT_41 => X"0000129000000040C0400C1212000E04C0400E0E000C0A0E0E00000A400C1010",
      INIT_42 => X"04440E448410100000020A0C0C00000A400C0E0E000A0000D0000E0E00004012",
      INIT_43 => X"020C0E4A020C0C00C0400C0C0040820C0E0C4082100E0C40100E040C04040442",
      INIT_44 => X"0C0404044204440E448410100040020A0C0C00000A00020C0E4A42020C0E4A42",
      INIT_45 => X"50000C0E04C6060E0C0A84C40E0C0A42820E0C040A0404043F04440E44040C0C",
      INIT_46 => X"021010000248100C0A02100C0A4E0248101000488A100C0A48100C0A00CE8E4E",
      INIT_47 => X"0034020E000E020A0A00C0400A0A004E46820A0A0082040A0C0A82100C0A4E44",
      INIT_48 => X"10844416800076D0048C0404047F04441410844416C4448440100A0A360E8C0D",
      INIT_49 => X"8E048A8B00CC76D0048C0404047F0444141084440076D0048C0404047F044414",
      INIT_4A => X"0404047F0444124404D4800076D0048C0404047F0444124404D4400C0E0E0436",
      INIT_4B => X"0E360E8C0D0034020232340404CC76D0048C0404047F04441244040076D0048C",
      INIT_4C => X"820E40460E060E1010100E92848444801040140E0A1040140E0A1040140E0A0E",
      INIT_4D => X"340404CA040A0400400A0A004C04C004047F04440E4404101010005580001040",
      INIT_4E => X"000040C040840C0AC040420C0AC006000C0ACC400AC40C0AC20C0AC00C0A0232",
      INIT_4F => X"C0020C0C000A40820C40460C060C0ACC80020A020002408A000ACC0000000000",
      INIT_50 => X"400C0C00CCC00A0404047F044444020002408A000000404C00000CCA00000040",
      INIT_51 => X"4050C0360C8A34020002408A000000404C00000CCA00000040C0020C0C000A00",
      INIT_52 => X"06081210C0CCC61210924484C4044484844010441210021210C01210360E9002",
      INIT_53 => X"0C12CC1210928000101000000040500010920000000000000040C0064A1210C0",
      INIT_54 => X"084A1004000000405000000040120000129000000040C0C81212001006481206",
      INIT_55 => X"00404C00000CCA00000040C0020C0C000A00400C0C00CCC00A0404047F0444C6",
      INIT_56 => X"04047F04440C440404043690048C02400CC0368E048A4A048A000000408A0000",
      INIT_57 => X"8A020060C0360C8A34343434343434343402000200323404040404044A048A00",
      INIT_58 => X"E48404C44484840444C44022369CA0C424221A8224221A4024221A3656A0360C",
      INIT_59 => X"000000401440821C40461C061CC0061C0E0E00E480000404323404441C12220E",
      INIT_5A => X"000A364C048A048A00000040C0020A0A0000008A000C0404043234044410221C",
      INIT_5B => X"40CAC00C04C00C060AC40C040A820C04020A04400A0A00323404044A0402008A",
      INIT_5C => X"000404323404440404040404408A0004047F0444B4420084448404364E048A00",
      INIT_5D => X"0E1412448404C48400365092020092C0364C8A34340240323404044A048A0000",
      INIT_5E => X"040432340444124404003690048C02000CC0368E048A4A048A00040432340444",
      INIT_5F => X"048A4A048A00040432340444124404003690048C02000CC0368E048A4A048A00",
      INIT_60 => X"02400240323404044A048A00040432340444104404003690048C02000CC0368E",
      INIT_61 => X"40E4448484440404C4C00200E4C022364C8A3434343434343434343402400240",
      INIT_62 => X"04323404441C121A0E9E84401A369EA4C41C1A1C82261A1C40261A1C36DAA400",
      INIT_63 => X"040432340444101A1C000000401440821C40461C061CC0061C0E0E00DE800004",
      INIT_64 => X"8A00040432340444100400368E048C0000CCC00A04C0400A040A0A0000008A00",
      INIT_65 => X"00368E048C0000CCC00A048A00040432340444100400368E048C0000CCC00A04",
      INIT_66 => X"00004000008A004000400040000404323404440404008A000404323404441004",
      INIT_67 => X"C00A048A00040432340444100400368E048C0000CCC00A04323404044A048A00",
      INIT_68 => X"440E0400368E048C0000CCC00A048A00040432340444100400368E048C0000CC",
      INIT_69 => X"0240323404044A048A004000400040000404323404440404008A000404323404",
      INIT_6A => X"C42A2812822A2812402A2812361CA60226C036CC8A3434343434343434343434",
      INIT_6B => X"04441418280E162A0404448404804000AAC484448484C4440444840444C44028",
      INIT_6C => X"0404040404044000808A000404323404440404040404040080408A0004043234",
      INIT_6D => X"4416280E0004043234044414280E2A800040008000C000008A00040432340444",
      INIT_6E => X"0C04C0400C0C000C0432340404044A04028A000A364C048A048A000404323404",
      INIT_6F => X"92004092044484C444C010040610060EC410040E821004020E04400E0E00C002",
      INIT_70 => X"04008A0000000404323404440404040404408A0004047F0444C6844212365404",
      INIT_71 => X"02D4C0368C8A343432340404044A0400004C04044C04040A040A040A04040A04",
      INIT_72 => X"3690048C020CC0368E048A4A0404043234044410161444844404C48400369294",
      INIT_73 => X"441214440404003690048C020CC0368E048A4A04040432340444121444040400",
      INIT_74 => X"4A040404323404441012440404003690048C020CC0368E048A4A040404323404",
      INIT_75 => X"04C4C48444440484C00268C02636CC8A34343434343434343434343234040404",
      INIT_76 => X"00368E048C00CCC00A04040432340444201614C40036A49400D4C02668448484",
      INIT_77 => X"04000404323404441012040400368E048C00CCC00A0404043234044410120404",
      INIT_78 => X"0480400068C44022C428221282282212402822123622A8000404323404440404",
      INIT_79 => X"04323404440404040404040080408A000404323404441418220E162804444484",
      INIT_7A => X"220E28800040008000C000008A000404323404440404040404044000808A0004",
      INIT_7B => X"900050C00E04C0020C040A04008A0004043234044416220E0004043234044414",
      INIT_7C => X"3404441012040400368E048C00CCC00A04040432340444141016040400361204",
      INIT_7D => X"0432340444040404000404323404441012040400368E048C00CCC00A04040432",
      INIT_7E => X"044414101684040400361204900050C00C5044C00250C00C368E048A4A040004",
      INIT_7F => X"32340444040404C0040432340444100E040400368E048C00CCC00A0404043234",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[21]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[21]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[22]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[22]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\,
      ENBWREN => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addra(12),
      I1 => addra(13),
      O => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\
    );
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => addrb(12),
      I1 => addrb(13),
      O => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  port (
    \douta[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\ is
  signal \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\ : STD_LOGIC;
  signal \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[22:14][4096:8191]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
  \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ <= \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\;
  \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ <= \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\;
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"C41D500001B0A090010A899208200A40370AAA2615505C11011190111C228052",
      INITP_01 => X"002450605804CE804CC8002DBA08554440531452298A1014C514864044179D08",
      INITP_02 => X"A1381201332013384501D024026640288D1238160133A01332008AC268020803",
      INITP_03 => X"34010B094B5F58CC09CA000020CC0D0191B00C970340184992323520C0B7182A",
      INITP_04 => X"A01D200404800029000044000029280080280040100080202080208808000580",
      INITP_05 => X"C100048F68067C820625022C380001001CA20A0AA808200102400A821289B004",
      INITP_06 => X"2CC608460204820080002C40C54C00884000C2B380001002C0D6915A65555427",
      INITP_07 => X"10086CBC849AA582B8228091ED4047100619210E018006542441000241082512",
      INITP_08 => X"C80305555400C0980001964892A900488808000588154500002003D101555429",
      INITP_09 => X"03225C03024000064A088141AC6487390240302600006492849A58C680739120",
      INITP_0A => X"1EA8CC0544474B691511BA0CC05444E4B691511BA0CC0308F8550AD201120908",
      INITP_0B => X"09250018148E0A29006040812800C04070534486920249400605208418790408",
      INITP_0C => X"82030422AA556AA948692024940060523828AC01810204A0030101C14D121A48",
      INITP_0D => X"110192C0A0010080C040028154014A4203682980224089FC2D1D04406080C101",
      INITP_0E => X"802C03E2164EA948B105116A88316401C8011094000804120108001A4480A94A",
      INITP_0F => X"043839CA015D50AAAA00891E0AC00100500190809C14026202103048705601B0",
      INIT_00 => X"048C00CCC00A04C0020A040A04008A0004043234044410121484040404000404",
      INIT_01 => X"0432340444100E040400368E048C00CCC00A040404323404441012040400368E",
      INIT_02 => X"CC8A0E3434343434343434343432340404044A0400040432340444040404C004",
      INIT_03 => X"2EC444448484C40404844444C40484402836ECA60E2A2A2A28361AA60226C036",
      INIT_04 => X"14282C2A0000004018402A2CC0402C141400EE80000404323404441628142C0E",
      INIT_05 => X"04C0400C0C000C0432340404044A04028A000A364C048A048A00040432340444",
      INIT_06 => X"004050044484C444C00E040610060EC410040E821004020E04400E0E00C0020C",
      INIT_07 => X"008A0000000404323404440404040404408A0004043F0444C684421036120490",
      INIT_08 => X"D4C0368C8A343432340404044A0400004C04044C04040A040A040A04040A0404",
      INIT_09 => X"90048C020CC0368E048A4A0404043234044410161444844404C4840036929402",
      INIT_0A => X"1214440404003690048C020CC0368E048A4A0404043234044412144404040036",
      INIT_0B => X"040404323404441012440404003690048C020CC0368E048A4A04040432340444",
      INIT_0C => X"840484C444C4040484C002E4C022364C8A34343434343434343432340404044A",
      INIT_0D => X"040400368E048C00CCC00A040404323404441C141244003660920092C022E444",
      INIT_0E => X"040404000404323404441012040400368E048C00CCC00A040404323404441012",
      INIT_0F => X"0432340444141E12240E6844401E36A8A40E2626261E36DEA400040432340444",
      INIT_10 => X"04008A00040432340444121E24260000004018402624C04024121200A8800004",
      INIT_11 => X"8C00CCC00A04040432340444141016040400361204900050C00E04C0020C040A",
      INIT_12 => X"323404441012040400368E048C00CCC00A040404323404441012040400368E04",
      INIT_13 => X"04900050C00C5044C00250C00C368E048A4A0400040432340444040404000404",
      INIT_14 => X"340444100E040400368E048C00CCC00A04040432340444141016840404003612",
      INIT_15 => X"0A040A04008A00040432340444101284040400040432340444040404C0040432",
      INIT_16 => X"00368E048C00CCC00A040404323404441012040400368E048C00CCC00A04C002",
      INIT_17 => X"3434343432340404044A0400040432340444040404C0040432340444100E0404",
      INIT_18 => X"8444C48400361A900050C01C1E840444C0001EC4C01C18180E1C1C0034343434",
      INIT_19 => X"04C0040432340444100E040400368E048C00CCC00A040404323404441216100A",
      INIT_1A => X"C0020A040A04008A000404323404441E100A448444C484000404323404440404",
      INIT_1B => X"0400368E048C00CCC00A0404043234044414120E04040036D0048E000EC00C04",
      INIT_1C => X"0A040404323404440404044000040432340444040404C0040432340444100E04",
      INIT_1D => X"0E0AC40E0A0E82100A0E40100A0E3434020002000240C0020A0A00C0400A0A00",
      INIT_1E => X"0E0AC00E0ACC86CC0E0E00CCC40E0A820E0A004C0CCC0E000A440E0A020E0AC0",
      INIT_1F => X"92400A3434343E320A0C0A0C0A400E0E0040820E0A800E0A8C88C40E0E008684",
      INIT_20 => X"0A00000A0A00000A0A00C0400A0A00C0400A0A00364C8ACACA0E0E0E10100010",
      INIT_21 => X"0A0E120A0E120A0A343234020E000A0A0E000C0A0E000C0A928002364E90000A",
      INIT_22 => X"00400A0A0C000040C004401010008210100036024010100040100A0C50400E12",
      INIT_23 => X"8A00000A0A00000A0A008A009000000040C004400A0A00820A0A003602400A0A",
      INIT_24 => X"0C0C004A04020A0A00000404410444C4400A0A000C5080020E0A0A00000A0A00",
      INIT_25 => X"400A0A00403600400A0A0000404200820A0A0C40100A0C50C0020A02040C0C00",
      INIT_26 => X"02100A40100A0C5000020A400C0C00020C0C004A04400A0A00000404410444C4",
      INIT_27 => X"04410444000200101000C006844484C400101000C442008204100A82100A0C40",
      INIT_28 => X"0A00C00404C6040A0A0082040A0A820C0A040A04403600400A0A00400A0A0004",
      INIT_29 => X"008284C4040A0A000A0A00403600400A0A00400A0A0004044104444242C2000A",
      INIT_2A => X"34343434343402020A04400A0A00020A0A00000A0A00C0020A0A000200040A0A",
      INIT_2B => X"260404C404448444840484C4444444841A00902424001836588A4B0034343434",
      INIT_2C => X"8A0A04008A000000000040C0020A0A00C0400A0A000A04040432340444220E24",
      INIT_2D => X"820C0E40820C0E400C0E040A048A000404323404440E040E0400CA0C048A0C04",
      INIT_2E => X"CA06000E040A04C0C00A0A00C206480A0C06480A0C060A0C040A0682040C0440",
      INIT_2F => X"00000A060ACA060ACA060A0440040042C0020A0A00000A06000E0ACA06000E0A",
      INIT_30 => X"3444344434343434343434343434343434343434343402323404040404CA0400",
      INIT_31 => X"84C404844444C4040444448404C40484C444244400962C2C00840E6100043484",
      INIT_32 => X"CC000000000040C0020C0C00C0400C0C000A040404323404441A142C0CC44404",
      INIT_33 => X"40040200C0400A0A000040820C0A40820C0A400C040A04024C0076D0048C04C0",
      INIT_34 => X"C4840404400E4004120E0E36D0048C0C0402020A020A4A020A4A020A04400A04",
      INIT_35 => X"140000141400C0C4141400C0C4141400369A0494D4D496969604161600120492",
      INIT_36 => X"323404440E04009284140E9284140E920484120E928000B69698841414000014",
      INIT_37 => X"4E8C0A0476D0048C048A0C048A0404043234044404040A0C0A0C0A040C040404",
      INIT_38 => X"180436CE8C0AF60E8C4000F60E8C00C0401614041414000A0E120E120E120436",
      INIT_39 => X"160E160E160436CE8C0A0E040E8E040E8E040E400416160036CE8C1618161816",
      INIT_3A => X"0280160E4E8280160E4E8280160E4082C4160E82C4160E8216040E040E0E000E",
      INIT_3B => X"820C0A40820C0A400C040A048A00040432340444181A04041A0400020418140E",
      INIT_3C => X"000E0CCC06000E040C04C0C00C0C0084C4060C0AC4060C0AC40C0A0440040040",
      INIT_3D => X"040A0400000C060CCC060CCC060C0480040084C0040C0C00000C06000E0CCC06",
      INIT_3E => X"040A0A0004043234044404040404CA0A0404043234044404CC0C040C0A0C0A0C",
      INIT_3F => X"4404040444040C044C02800A0A040A0A004E0480F650048AC04C004D0400C002",
      INIT_40 => X"04C4441600502828003434343434343434343434343434020202000404323404",
      INIT_41 => X"0A0A00C0400A0A000A04040432340444280A0E2A04440444C444848404C48484",
      INIT_42 => X"CE101010041010000E040E44400A0C04364C048A0A04028A000000000040C002",
      INIT_43 => X"8E8000369092000C0C00000C0C00000C0C00C0400C0C00C0400C0C0036CC8ECE",
      INIT_44 => X"040004043234044404040404043234044404000C000E0A0C000E0A0C04000C0A",
      INIT_45 => X"0A0000C0400A0A000040820C0A40820C0A400C040A048A00040432340444040C",
      INIT_46 => X"34343434343402020A02800C0A4A82800C0A4A82800C040A04400A0A0402040A",
      INIT_47 => X"44848484C42C2C0040820C2C40820C2C400C2C2C368A90910034343434343434",
      INIT_48 => X"040432340444222CC484840444844404C4040444C4402E2E00368AAC50C00204",
      INIT_49 => X"040C040004043234044404040404043234044444040C04364C048A0A04008A00",
      INIT_4A => X"040A0A0000C0400A0A000040820C0A40820C0A400C040A048A00040432340444",
      INIT_4B => X"C4402E2E00368A9000000A02800C0A4A82800C0A4A82800C040A04400A0A0402",
      INIT_4C => X"040C04364C048A0A04008A00040432340444222CC484840444844404C4040444",
      INIT_4D => X"0C040A048A00040432340444040C040004043234044404040404043234044444",
      INIT_4E => X"4A82800C040A04400A0A0402040A0A0000C0400A0A000040820C0A40820C0A40",
      INIT_4F => X"4082100C4082100C4010040C0C368E048A8B008A04000A02800C0A4A82800C0A",
      INIT_50 => X"0C0440121200368E8A000404323404440C0440121200368E8C4AC002440C0C00",
      INIT_51 => X"004A4404C4048444C48400343434343402023234040404048A04040432340444",
      INIT_52 => X"04400404323404440404040480040432340444120E1C44DC14100E100E100E18",
      INIT_53 => X"044404040404800404323404441016C404D6140412101210120410040A04004C",
      INIT_54 => X"800404323404441016C404D6140412101210120410040A04004C048004043234",
      INIT_55 => X"441016C404D6140412101210120410040A04004C04C004043234044404040404",
      INIT_56 => X"0E040E0C0E0C0E040C040A04024C040004043234044404040404800404323404",
      INIT_57 => X"DE8C0A0A0A0A3434343434343434323404040404800404323404440E0C4404CE",
      INIT_58 => X"1A004A44440404C444C4C404848484840036228C36E08C0A0A1C1E1C1E1C1E36",
      INIT_59 => X"820E0C40820E0C400E040C0C0A0404043234044412202644E616102010201020",
      INIT_5A => X"04323404440C04401010000A000404323404440C04401010000AC0020C0C0040",
      INIT_5B => X"16C404D6140412101210120410040A04004C0440040432340444040404040004",
      INIT_5C => X"401010000AC0020C0C0040820E0C40820E0C400E040C0C0A0404043234044410",
      INIT_5D => X"043234044404040404000404323404440C04401010000A000404323404440C04",
      INIT_5E => X"0C0C0A040404323404441016C404D6140412101210120410040A04004C048004",
      INIT_5F => X"000A000404323404440C04401010000AC0020C0C0040820E0C40820E0C400E04",
      INIT_60 => X"120410040A04004C04C004043234044404040404000404323404440C04401010",
      INIT_61 => X"40820E0C40820E0C400E040C0C0A040404323404441016C404D6140412101210",
      INIT_62 => X"0404323404440C04401010000A000404323404440C04401010000AC0020C0C00",
      INIT_63 => X"0E0C4404CE0E040E0C0E0C0E040C040A04004C04000404323404440404040400",
      INIT_64 => X"04401010000AC0020C0C0040820E0C40820E0C400E040C0C0A04040432340444",
      INIT_65 => X"04043234044404040404000404323404440C04401010000A000404323404440C",
      INIT_66 => X"1036D08A1C368E9C4A1A364E8A18360E98CA0C360C8A34347E0404364C048A04",
      INIT_67 => X"1616400C16369A9216400C1616400C1616400C16369892160C160C160C36CC92",
      INIT_68 => X"400C1616400C1636909216400C1616400C1616400C16369C9216400C1616400C",
      INIT_69 => X"0036168C0A1736568C000A9700343434347E1416368A920A364E8A16400C1616",
      INIT_6A => X"161884044436DA8C36D88C160A12161216121636D68C0A0A0A0A001684448484",
      INIT_6B => X"364E8C000A048B004A0404047E0444100E0404368E048A040404323404441A0E",
      INIT_6C => X"36908A34343402020202323404044A0404043234044404000E8400360E8C0A0F",
      INIT_6D => X"CAE03660942036128AE036609420360E8A361E941E36D08AE13660941C009F00",
      INIT_6E => X"0036508A1E00000000000000000040E0366094203610A04AE0366094203610A0",
      INIT_6F => X"02323404044A040404323404441A1400CC84C4440036CC940ACD360C94000A8D",
      INIT_70 => X"8A044A04040432340444141210180E009A844404C444C404848400369A941C02",
      INIT_71 => X"143698048A5436148C143696048A36928C1236508A5536D48C0E00930036D004",
      INIT_72 => X"000000000000000000405436548C143690944A5436548C14369094CA5436548C",
      INIT_73 => X"04044A04040432340444320E10160C0404004E8400364E8C0E32340436508A92",
      INIT_74 => X"0104440004040104440C44C0000000CD008FC0000A3402020202323404040404",
      INIT_75 => X"8B004DC0000A0404040104440004040104440CC0000000CD008FC0000A040404",
      INIT_76 => X"840036DC8C0ADD0036DC8C0A9D003434343434343401800404010444C0000000",
      INIT_77 => X"20102036608C365E8C36989C0A0A1A1A1A1E1E001C0A00DC844404048444C4C4",
      INIT_78 => X"040A04040432340444040404048004043234044412202284C40444E214102010",
      INIT_79 => X"10000E0A000E8400360E8C0A0F00360E8C0A8F004C040C100C100C1004360C8E",
      INIT_7A => X"C444844404D616041614161416041436D48C36D28C36D6048E0A0A1010100410",
      INIT_7B => X"1010000AC0020C0C0040820E0C40820E0C400E040C0C0A040404323404441416",
      INIT_7C => X"3234044404040404000404323404440C04401010000A000404323404440C0440",
      INIT_7D => X"3434343434343434020202023234044C040C100C100C1004360C8E040A040404",
      INIT_7E => X"8404448400E286061C2248061C2208061C061ECC2A1E0D003434343434343434",
      INIT_7F => X"0C040A0A0A040A0A0004043E0444221C04040484444444C4C484C4C444840484",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[21]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[21]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[22]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[22]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\,
      ENBWREN => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addra(13),
      I1 => addra(12),
      O => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_0\
    );
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => addrb(13),
      I1 => addrb(12),
      O => \^device_8series.with_bmm_info.true_dp.simple_prim36.ram_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  port (
    \douta[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ram_enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 8 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[22:14][8192:12287]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"A88802A808140550D0CA901292DA400905001814838280C40482084989041005",
      INITP_01 => X"2245220C8A8E4587148B4A3916291A48012410000004000000A59204813B4040",
      INITP_02 => X"05441D381028D20B2023F43183A81019800122B1071000F2566A8620C009012C",
      INITP_03 => X"008090000C1CAEEE90A890AB02A8B0B90B95DDD297129768571695308A015028",
      INITP_04 => X"42B680E40841B348500012901A000210AAA840A88001285C2826000088260481",
      INITP_05 => X"414E41668A414E5802807AA429485EA905390BD528A52178A414E701076693E0",
      INITP_06 => X"32E1D4154B48690283807290A504E29544165CE295460B805A90538371CA806A",
      INITP_07 => X"7018E0BCA1F9431C81AAAA8A0A80782F281E5027201A82A9501D4AA5F2A1E543",
      INITP_08 => X"CA839504CB8250696A83E0BCA079409C806A04523CB525E97CA839504CB83502",
      INITP_09 => X"0692A0F1CA804259B6A4F2A1E54332E1A4A894A29522F000841500A03B5A5697",
      INITP_0A => X"5C120D80000C08152736D49E5C3CB8465424955690538202E39B01E407C80CE5",
      INITP_0B => X"774A5C4A5DA15C5A54AE0AC01579135555539C582F283E5047202414478A4520",
      INITP_0C => X"0B283244BA2437774A5C4A5DA15C5A54C07229DDDC768476971685760C0A2437",
      INITP_0D => X"C1300880D480C118083A0F80F283E5067203A92920881A21A20A880A28A3A202",
      INITP_0E => X"0820A251052902390A10310287208390820E42811BE06082824D25B242791007",
      INITP_0F => X"8900D054A4530E28B4414842A05108E4208390820E4208390820A2408E420839",
      INIT_00 => X"048A04040432340444140C1004041414003612048E040E0E00000E0C0E0C0E04",
      INIT_01 => X"00120C00928400120C9300120C368E8A0C040C368E8A0C100C100C10040C368E",
      INIT_02 => X"0444181A44C40404DA1A041A181A181A04181816365A04920C0C141414041414",
      INIT_03 => X"440C04401010000AC0020C0C0040820E0C40820E0C400E040C0C0A0404043234",
      INIT_04 => X"0A0404043234044404040404000404323404440C04401010000A000404323404",
      INIT_05 => X"04040404040A00CACB404A04CA04000404323404440404400C0E0C0E0C0E040C",
      INIT_06 => X"42008416CC18C010C012C410801282104012400C8C1A14343434343434023234",
      INIT_07 => X"0000A3000000654C1A1822182218222236508A024B1A343434343434343234B4",
      INIT_08 => X"1EE524001E0036D08AA2044444048484C4C44484840040000063000000654A1A",
      INIT_09 => X"26220036508A000000040432340444040440040432340444201E2200E4C40024",
      INIT_0A => X"A6262636D0A64AA6262636D0A6CAA6262636D28AA6262636CE8A242436908AA7",
      INIT_0B => X"101E0E00A2002222000404323404441C1E2036D08AE400000000000000000040",
      INIT_0C => X"000000CD008FC0000A0400040432340444040404040404400404323404442012",
      INIT_0D => X"440004044104440CC0000000CD008FC0000A0404044104440004044104440CC0",
      INIT_0E => X"CB0C044A0404044104448004044104440CC0000000CD008FC0000A0404044104",
      INIT_0F => X"00004D0000008F4A0C00004F000000D552040C120E120E12040E0E36D0048A02",
      INIT_10 => X"04040432340444320C1204040400000404323404440E0C040036908ACC440040",
      INIT_11 => X"8404448484E21E024B1E34343434343434323404040404044A04040432340444",
      INIT_12 => X"12040E0E100400CB0C04000404323404441C1022124A004BC4C4444404C48404",
      INIT_13 => X"0404323404440E0400108E00000000D5400C00004F000000D552040C120E120E",
      INIT_14 => X"0404323404440404040404400404323404440404043234044416120404040000",
      INIT_15 => X"0400040432340444100A04044C004D84C4CA0A000D0A040A00CACB408A044A04",
      INIT_16 => X"00C002040432340444040404040C00CCCD408C044A0404043234044404040404",
      INIT_17 => X"440E0E00C04C0404040104440C440E0E00C00404010444400A04040104440C0C",
      INIT_18 => X"CD00020C4C0404040104440E0E00C04C0404040104440E0E00C04C0404040104",
      INIT_19 => X"0C44004004040104440E0C44004004047F04444404040104440E8444101000C0",
      INIT_1A => X"7F04444404040104440E0C44004004047F04444404047F04444404040104440E",
      INIT_1B => X"0E0E00C08B00CC76D0048C040C4C044C044C044C044C044C044C044C08080404",
      INIT_1C => X"040104440E0C44004004040104440E0C44004004047F04444404040104440C44",
      INIT_1D => X"4C080804047F04444404040104440E0C44004004047F04444404047F04444404",
      INIT_1E => X"C442004B40340202107F10CC76D0048C040C4C044C044C044C044C044C044C04",
      INIT_1F => X"8C0ECC8C0C420C368A8C0E8C4C0C0C368A8E36508C860A0A00828004C40A0A00",
      INIT_20 => X"8A8C4E4C0CCC84000C368A8C4E4C0CCC8442000C368A8C4E0CCC8C42000C368A",
      INIT_21 => X"4004040440044442840444C48484C402101000004010100042024A0A8A840A36",
      INIT_22 => X"4404440C0C0002820C0C00004A04400402040404400444420404040440044404",
      INIT_23 => X"0404040404400402040404400444420404040440044404400404044004448444",
      INIT_24 => X"C6101244C4048404841414001414000082121200821212000A4B003432340404",
      INIT_25 => X"100404048E040E0E000E0E0000400C0C00400C0C000A04040432340444B44200",
      INIT_26 => X"1200401212000A4B003402323404040400CCCD404C04CA04040432340444120C",
      INIT_27 => X"1010000A0B000E0400CCCD408C04CA0404043234044410124484C40484004012",
      INIT_28 => X"02023234040E0400CCCD408C04CA04040432340444104484C404004010100040",
      INIT_29 => X"4C044C080804044004440E840A040A040440044410C4844484121200C00D0034",
      INIT_2A => X"080804044004440E840A040A04044004440C440E0E00C08B00CC76D0048C040C",
      INIT_2B => X"044004440E840A040A04044004440C440E0E00C08B00CC76D0048C040C4C044C",
      INIT_2C => X"0444840A040A04044004440C440E0E00C08B00CC76D0048C040C4C044C080804",
      INIT_2D => X"1600C0004B003434340202020232341004CC76D0048C040C4C044C0808040440",
      INIT_2E => X"400444044C044C080804044004440E840A040A040440044414844444C4048416",
      INIT_2F => X"0804040004440E840A040A04044004440E44121200C036508C76D0048C040404",
      INIT_30 => X"0C4C044C080804040004440E840A040A04040004440E0E00C04C040C4C044C08",
      INIT_31 => X"0C04C04C040C4C044C080804040004440E840A040A04040004440E0E00C04C04",
      INIT_32 => X"04440E840A040A04040004440E8444101000C0008B00CA04040432340444320A",
      INIT_33 => X"040004440E44101000C036508C76D0048C040404000444044C044C0808040400",
      INIT_34 => X"840A040A04040004440E0E00C04C040C4C044C080804040004440E840A040A04",
      INIT_35 => X"340202323404CA04040432340444320A0C04004C040C4C044C08080404000444",
      INIT_36 => X"368E048A8B00CA04040432340444121416844404C44484D610368A8C8D003434",
      INIT_37 => X"800076D0048C0404043E04441A144404DC8440140C0C36960492934400D21004",
      INIT_38 => X"04CC76D0048C0404043E04441A1444040076D0048C0404043E04441A144404DC",
      INIT_39 => X"00CA04040432340444120C4404D21004368E048A8B00CA040004043234044404",
      INIT_3A => X"8C0404043E044416120484588440120C0C36540490514400D01004368E048A8B",
      INIT_3B => X"8C0404043E0444161204840076D0048C0404043E04441612048458800076D004",
      INIT_3C => X"D48ACB0034343434340202020232340404CA04000404323404440404CC76D004",
      INIT_3D => X"04043E0444201C44C4A204401C1818368C9A9BC4C404844444848400DA0E1636",
      INIT_3E => X"04043E0444201C44C40076D0048C0404043E0444201C44C4A2800076D0048C04",
      INIT_3F => X"040A04040432340444100C04D00E040A04000404323404440404CC76D0048C04",
      INIT_40 => X"C49A800076D0048C0404047D0444181204C49A8440120C0C365404905100D00E",
      INIT_41 => X"440404CC76D0048C0404043E0444181204C40076D0048C0404043E0444181204",
      INIT_42 => X"1014844404D412040C368E048A8B00CA04040432340444040400000404323404",
      INIT_43 => X"04047D0444181204C49A8440120C0C365404905100D00E040A04040432340444",
      INIT_44 => X"04047D0444181204C40076D0048C0404047D0444181204C49A800076D0048C04",
      INIT_45 => X"368E048A8B00CA04040432340444040440000404323404440404CC76D0048C04",
      INIT_46 => X"76D0048C0404047D0444181444C49A04401410103696049293844400D212040C",
      INIT_47 => X"76D0048C0404047D0444181444C40076D0048C0404047D0444181444C49A8000",
      INIT_48 => X"0E0C4404C0368E048A8B00CA04040432340444040480000404323404440404CC",
      INIT_49 => X"164216400C0C1C1C00128A34343434343402020202323404CA04040432340444",
      INIT_4A => X"040A04044004444A1C840484C40404048444C444C444441E1E00C0164AC61684",
      INIT_4B => X"58401436960492938400D210044E040E040E04CC044C080804044004440E840A",
      INIT_4C => X"0076D0048C0404047D04440E14444458800076D0048C0404047D04440E144444",
      INIT_4D => X"8A048A040A040808000404323404440404CC76D0048C0404047D04440E144444",
      INIT_4E => X"4004440E840A040A04044004448416444444181800C014048E044C76D0048C04",
      INIT_4F => X"04440E14444458401436960492938400D210044E044E040E04CC044C08080404",
      INIT_50 => X"04440E1444440076D0048C0404047D04440E14444458800076D0048C0404043D",
      INIT_51 => X"04768E048C048A048A040A040808000404323404440404CC76D0048C0404047D",
      INIT_52 => X"4C080804040004440E840A040A04040004448412440484141400C01204D0048A",
      INIT_53 => X"8C0404043D04440E120444D4401236540490518400D010040E040E040E04CC04",
      INIT_54 => X"8C0404043D04440E1204440076D0048C0404043D04440E120444D4800076D004",
      INIT_55 => X"34024C04CA04768E048C048A048A040A040808000404323404440404CC76D004",
      INIT_56 => X"C41C0C1C1C0082C41C1682C41C16821C160C401C0C1C1C00124A8A3434343434",
      INIT_57 => X"0404044444C444161600C0021648480C0C1C1C00061646061C0C1C1C00C41644",
      INIT_58 => X"0E040E040E04CC044C080804040004440E840A040A0404000444080C8484C444",
      INIT_59 => X"0444D4800076D0048C0404043D04440E120444D4401236540490518400D01004",
      INIT_5A => X"04440404CC76D0048C0404043D04440E1204440076D0048C0404043D04440E12",
      INIT_5B => X"34343434343434343434024C044C76D0048C048A048A040A0408080004043234",
      INIT_5C => X"400A0C0C00A44DA44B8494543434443404348434843404343434343434343434",
      INIT_5D => X"444404040004440C44844404C4448444C444840404040444C4C4161600C01416",
      INIT_5E => X"444404047F04444404040004440E0C44004004040004440E0C44004004047F04",
      INIT_5F => X"044C044C044C044C044C080804047F04444404040004440E0C44004004047F04",
      INIT_60 => X"40044410C444121200C00C0404047F04440E8E0C040404400444044C044C044C",
      INIT_61 => X"7F04444404044004440E0C44004004044004440E0C44004004047F0444440404",
      INIT_62 => X"044C044C044C080804047F04444404044004440E0C44004004047F0444440404",
      INIT_63 => X"C444121200C00C0404047F04440E8E0C040404400444044C044C044C044C044C",
      INIT_64 => X"04044004440E0C44004004044004440E0C44004004047F044444040440044410",
      INIT_65 => X"044C080804047F04444404044004440E0C44004004047F04444404047F044444",
      INIT_66 => X"0444440404047F04440E8E0C040404400444044C044C044C044C044C044C044C",
      INIT_67 => X"323404440440004C04048A000404323404444404000404323404440404043234",
      INIT_68 => X"44800404400444C00404400444004C0404047D04440004043234044404000404",
      INIT_69 => X"04044004440004044004440C0A0404044004440004044004440C0A0404044004",
      INIT_6A => X"0A040404323404440400004004043234044404000404400444800404400444C0",
      INIT_6B => X"0076D0048C0404047D04441A144404DCC440140E0E36960492938400D210040C",
      INIT_6C => X"CC76D0048C0404047D04441A1444040076D0048C0404047D04441A144404DC80",
      INIT_6D => X"0444048004043234044404C00A04040432340444040480000404323404440404",
      INIT_6E => X"8E048A8B00CA0A040404323404440E0404CC0A040C0A0C0A0C040A0404043234",
      INIT_6F => X"00040432340444040E8000040432340444040E400CC0400E0C0E0E000E800C36",
      INIT_70 => X"340444100A040440004D84CA0A020D0A04800004043234044404040000000000",
      INIT_71 => X"0444004002040432340444040404040040040432340444040404040400040432",
      INIT_72 => X"1858985858D858585858080800000000000004040004440C440E0E0000040400",
      INIT_73 => X"04040004440C440E0E00C004040004440C440E0E00C00404000444320A0C18D8",
      INIT_74 => X"0004440E108444C0408004040004440C440E0E004004040004440C440E0E00C0",
      INIT_75 => X"0E0E00400404000444040A04040004440E1084440A40400404000444040A0404",
      INIT_76 => X"0E0E00C004040004440C440E0E004004040004440E0C44004004040004440C44",
      INIT_77 => X"0E0E00C004040004440C440E0E00C004040004440E0C44004004040004440C44",
      INIT_78 => X"44008004040004440C440E0E00C004040004440C440E0E00C004040004440C44",
      INIT_79 => X"0E0E00C004040004440C440E0E004004040004440E0C44008004040004440E0C",
      INIT_7A => X"0E00C004040004440C440E0E00C004040004440C440E0E00C004040004440C44",
      INIT_7B => X"000004040004440C440E0E00C004040004440C440E0E00C004040004440C440E",
      INIT_7C => X"0404000444320A0C0E4E044E080800040400044484000A04040004440C440E0E",
      INIT_7D => X"44040004040004440C440E0E00C004040004440C440E0E00000404000444400A",
      INIT_7E => X"040400044484000A040400044410448412120000CC044C080804040004440E0C",
      INIT_7F => X"04440E0C4400400404400444320A0C10D05010080810100000000C4C044C0808",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 9,
      READ_WIDTH_B => 9,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 9,
      WRITE_WIDTH_B => 9
    )
        port map (
      ADDRARDADDR(14 downto 3) => addra(11 downto 0),
      ADDRARDADDR(2 downto 0) => B"000",
      ADDRBWRADDR(14 downto 3) => addrb(11 downto 0),
      ADDRBWRADDR(2 downto 0) => B"000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 8),
      DOUTADOUT(7 downto 0) => \douta[21]\(7 downto 0),
      DOUTBDOUT(31 downto 8) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 8),
      DOUTBDOUT(7 downto 0) => \doutb[21]\(7 downto 0),
      DOUTPADOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 1),
      DOUTPADOUTP(0) => \douta[22]\(0),
      DOUTPBDOUTP(3 downto 1) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 1),
      DOUTPBDOUTP(0) => \doutb[22]\(0),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ram_ena,
      ENBWREN => ram_enb,
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  port (
    p_15_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    p_14_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ : entity is "blk_mem_gen_prim_wrapper_init";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\ is
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\ : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute bmm_info_memory_device : string;
  attribute bmm_info_memory_device of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "[31:14][12288:14335]";
  attribute box_type : string;
  attribute box_type of \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : label is "PRIMITIVE";
begin
\DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\: unisim.vcomponents.RAMB36E2
    generic map(
      CASCADE_ORDER_A => "NONE",
      CASCADE_ORDER_B => "NONE",
      CLOCK_DOMAINS => "COMMON",
      DOA_REG => 0,
      DOB_REG => 0,
      ENADDRENA => "FALSE",
      ENADDRENB => "FALSE",
      EN_ECC_PIPE => "FALSE",
      EN_ECC_READ => "FALSE",
      EN_ECC_WRITE => "FALSE",
      INITP_00 => X"5C41510400141C513004C012015484440500440040004845501510400105500C",
      INITP_01 => X"01841540100111105414510505547101211015554000005501041711115404C0",
      INITP_02 => X"1044480400154400541055054414104015154148011145041114051800484155",
      INITP_03 => X"400601141700511100111011100415504415844110C048015001451150441446",
      INITP_04 => X"24400165418000404445545454105580455311145544154C0557011501401400",
      INITP_05 => X"4008C1000C0200008C6C00008030080000C02008300818000700C88208230020",
      INITP_06 => X"99844504E40E40C2081000C084008C1000C200008C6C00C04E40E40C2081000C",
      INITP_07 => X"110241094420001A00020C004E4004808308801A002300081304813008030000",
      INITP_08 => X"000000000000000800000000251A01521213D1441B044011600100511A010511",
      INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"018C0C04014C0C04010C0D0400CC010400CC300E0000030800081204ED04F640",
      INIT_01 => X"01DCE21E00000108000801560204011602040116721800000108000801CC0104",
      INIT_02 => X"030402E450260000010800080260000401A00260A82200000108000801DC0004",
      INIT_03 => X"01080008026C02ECB72E000001080008026805040268922A00000108000802E4",
      INIT_04 => X"00000108000801F00270023002F003701D32000002080008026E032EEF300000",
      INIT_05 => X"01E4B516000011C401080008027402B493240000128401080008027203B25934",
      INIT_06 => X"7F20000012040108000801D60256035602960196CB1C00001184020800080264",
      INIT_07 => X"01CC018C1C1C000015840108000801E000A0BC0C000014840108000801DC021C",
      INIT_08 => X"019C1004011C0604011C01DC025C035C079C055C0F04015C7712000005080008",
      INIT_09 => X"075A079A055A011A121800000508000802CE018E014ED51A000001080008009C",
      INIT_0A => X"050E0B04058E0604018EA01400000608000802DA019A011A01DA019A00DA025A",
      INIT_0B => X"02521C22000101080008008E038E0704010E018E050401CE024E020E06CE068E",
      INIT_0C => X"016203220262022206E206A2052205A20062520A000114440608000802D200D2",
      INIT_0D => X"018A01CA024A034A068A04CA0B04058A00CA290E00010508000802E201E200E2",
      INIT_0E => X"05920212C32800010508000802CC004C014C8C12000101080008008A038A010A",
      INIT_0F => X"01E401A4056402247E2800010408000802D201D200520092025201D203520692",
      INIT_10 => X"02080008010C01CC070401CCD81600010108000802E400640404006400A40264",
      INIT_11 => X"0001050800080268080402681B2A00010108000800A601A601E60226FD280001",
      INIT_12 => X"0B08000803AC01AC01EC006C032C110402EC0904016C066C05AC056C02ECAD2E",
      INIT_13 => X"05F205F2047206F206320572053208F20A7209B20A720AB20A32033205300001",
      INIT_14 => X"04180001070800080272020400B203B2013201B20332020402B2000406721504",
      INIT_15 => X"00A2080400A203A2012201A2032201E205E204620562066205A2056206220122",
      INIT_16 => X"039201120292031201D205D20452055206520652061201926D14000107080008",
      INIT_17 => X"00010408000801900E0401500290021000D001901814000103080008009202D2",
      INIT_18 => X"02D80158641A000101080008009601960156029602D6021600D6065601167918",
      INIT_19 => X"01500190CD1C00010208000801DA009A02DA011A019A971C0001020800080098",
      INIT_1A => X"022400E4026402E4652600020408000802DC029C452400020108000801D00110",
      INIT_1B => X"04E60B0404E6066607660A2601040226DC2800020808000800A401A4016402A4",
      INIT_1C => X"000800A601A601660A04016602A602A602260D0406E604E60A0404E60C040626",
      INIT_1D => X"000204080008014C020C090402CC00CC020C0C04020C0D04020C612000020308",
      INIT_1E => X"011601960116171800020408000801E201220162022202E2012201A202A27124",
      INIT_1F => X"0158421A00020108000801900110ED1800020108000801560216009602D60256",
      INIT_20 => X"00020208000802980158901A000201080008011001506B1A0002010800080118",
      INIT_21 => X"0308000801981404029801D801985F1C000202080008011A019A029A019ADB1C",
      INIT_22 => X"01E6022611040226972800020308000801A4012401A402A401E402E4CB260002",
      INIT_23 => X"01AE032E02AE026E01EE022E036E5F3200020308000801A6032602A602661504",
      INIT_24 => X"08F4130408F4140409F408F40A740AF40EF40E340F040234BB2800020D080008",
      INIT_25 => X"013402B405B407340474100406B405F4047404B404F4120408F4120408F41304",
      INIT_26 => X"7B33000000001504EA040032003416041444100010000134017401B401740234",
      INIT_27 => X"03C040400034800081247E007F007AAA75CE7CAA7822723580247F007F247E24",
      INIT_28 => X"000303C04002000203C04004000A3D0A0003003200342040000A3E0A00030002",
      INIT_29 => X"0004003400743E0A000301080008000A3D0A0003F97F1040FA7F2082000A3D0A",
      INIT_2A => X"000A3C0A0003204020002000EF7F000440000004FF0400320034010400444042",
      INIT_2B => X"000210402082000A3B0A000300402046000A3C0A000310062008000A3D0A0003",
      INIT_2C => X"3A0A0003008020C4000A3A0A000310802088000A3B0A00032046204420402000",
      INIT_2D => X"4002000A390A00030004FF04DE7F01040044404200044000000210402044000A",
      INIT_2E => X"1080000A390A000320440004000A390A00030700000A0004000A0108000803C0",
      INIT_2F => X"0400004A000A0108000803C04004000A380A0003000A000A004A000A01080008",
      INIT_30 => X"07C040800044000A380A0003000A000A004A000A010800081004000A390A0003",
      INIT_31 => X"00040104FE04D27F0104004403000104FE04CA7F010400441004000A380A0003",
      INIT_32 => X"4002000A390A00030004FF04B67F0104004400444000000A3C0A000300024040",
      INIT_33 => X"010800081080000A390A0003000A390A00030600000A0004000A0108000803C0",
      INIT_34 => X"390A00030600004A000A0108000803C04004000A380A0003000A000A004A000A",
      INIT_35 => X"0044000A380A0003000A000A004A000A010800081004000A390A00032082000A",
      INIT_36 => X"FE049E7F0104004403000104FE04AC7F010400441004000A380A000307C04080",
      INIT_37 => X"7DAA7C337C497B8E7BDF7E667D8080707E247F007F247B330002404000040104",
      INIT_38 => X"20C4000ABF0A00030080208E000ABF0A0003204C204A20482046204420402000",
      INIT_39 => X"00802084000ABD0A000300802044000ABE0A000300802004000ABE0A00030080",
      INIT_3A => X"010400444042000407C04044000ABC0A00034000000200402044000ABD0A0003",
      INIT_3B => X"BB0A0003000ABB0A00030FC04044000ABC0A00030002404000040004FF04E87F",
      INIT_3C => X"00040104FE04DA7F0104004440420084000430460002000ABB0A000310C2000A",
      INIT_3D => X"020400444042008400043046000ABB0A0003000ABA0A00030002404000040002",
      INIT_3E => X"008600060046008A0002A4400002000A000240400004100201040104FE04D07F",
      INIT_3F => X"004A00340002004C004A00CA0002FFC70006000600060046008A0002FFC70006",
      INIT_40 => X"02040204FD04F77F03040044001000C403840104008400440051008A00020090",
      INIT_41 => X"00B4FF0C0003010800080032003401040104000400320034010400040104004D",
      INIT_42 => X"00CA0004FF04F77F0104004400440002008A000000320034200C0BD700000074",
      INIT_43 => X"0600008A0000D67F060A00040104FE04F77F010400440084808E000400CC004A",
      INIT_44 => X"0180EC7F0000804000040004FF04D07F01040044000C00440540044D0000D47F",
      INIT_45 => X"01360001013600010136000100020001010A0001010A0001010A000100020036",
      INIT_46 => X"00000000000000000000000000000000000000000000000000000002E0360001",
      INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RDADDRCHANGEA => "FALSE",
      RDADDRCHANGEB => "FALSE",
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SLEEP_ASYNC => "FALSE",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18
    )
        port map (
      ADDRARDADDR(14 downto 4) => addra(10 downto 0),
      ADDRARDADDR(3 downto 0) => B"0000",
      ADDRBWRADDR(14 downto 4) => addrb(10 downto 0),
      ADDRBWRADDR(3 downto 0) => B"0000",
      ADDRENA => '0',
      ADDRENB => '0',
      CASDIMUXA => '0',
      CASDIMUXB => '0',
      CASDINA(31 downto 0) => B"00000000000000000000000000000000",
      CASDINB(31 downto 0) => B"00000000000000000000000000000000",
      CASDINPA(3 downto 0) => B"0000",
      CASDINPB(3 downto 0) => B"0000",
      CASDOMUXA => '0',
      CASDOMUXB => '0',
      CASDOMUXEN_A => '0',
      CASDOMUXEN_B => '0',
      CASDOUTA(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTA_UNCONNECTED\(31 downto 0),
      CASDOUTB(31 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTB_UNCONNECTED\(31 downto 0),
      CASDOUTPA(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPA_UNCONNECTED\(3 downto 0),
      CASDOUTPB(3 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASDOUTPB_UNCONNECTED\(3 downto 0),
      CASINDBITERR => '0',
      CASINSBITERR => '0',
      CASOREGIMUXA => '0',
      CASOREGIMUXB => '0',
      CASOREGIMUXEN_A => '0',
      CASOREGIMUXEN_B => '0',
      CASOUTDBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTDBITERR_UNCONNECTED\,
      CASOUTSBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_CASOUTSBITERR_UNCONNECTED\,
      CLKARDCLK => clka,
      CLKBWRCLK => clka,
      DBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED\,
      DINADIN(31 downto 0) => B"00000000000000000000000000000000",
      DINBDIN(31 downto 0) => B"00000000000000000000000000000000",
      DINPADINP(3 downto 0) => B"0000",
      DINPBDINP(3 downto 0) => B"0000",
      DOUTADOUT(31 downto 16) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTADOUT_UNCONNECTED\(31 downto 16),
      DOUTADOUT(15 downto 8) => p_15_out(16 downto 9),
      DOUTADOUT(7 downto 0) => p_15_out(7 downto 0),
      DOUTBDOUT(31 downto 16) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTBDOUT_UNCONNECTED\(31 downto 16),
      DOUTBDOUT(15 downto 8) => p_14_out(16 downto 9),
      DOUTBDOUT(7 downto 0) => p_14_out(7 downto 0),
      DOUTPADOUTP(3 downto 2) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPADOUTP_UNCONNECTED\(3 downto 2),
      DOUTPADOUTP(1) => p_15_out(17),
      DOUTPADOUTP(0) => p_15_out(8),
      DOUTPBDOUTP(3 downto 2) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_DOUTPBDOUTP_UNCONNECTED\(3 downto 2),
      DOUTPBDOUTP(1) => p_14_out(17),
      DOUTPBDOUTP(0) => p_14_out(8),
      ECCPARITY(7 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED\(7 downto 0),
      ECCPIPECE => '0',
      ENARDEN => ena_array(0),
      ENBWREN => enb_array(0),
      INJECTDBITERR => '0',
      INJECTSBITERR => '0',
      RDADDRECC(8 downto 0) => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED\(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => \NLW_DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED\,
      SLEEP => sleep,
      WEA(3 downto 0) => B"0000",
      WEBWE(7 downto 0) => B"00000000"
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
  port (
    douta : out STD_LOGIC_VECTOR ( 0 to 0 );
    doutb : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width is
begin
\prim_init.ram\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(0) => douta(0),
      doutb(0) => doutb(0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
  port (
    \douta[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[15]\ => \addra[15]\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[15]\ => \addrb[15]\,
      clka => clka,
      \douta[8]\(7 downto 0) => \douta[8]\(7 downto 0),
      \douta[9]\(0) => \douta[9]\(0),
      \doutb[8]\(7 downto 0) => \doutb[8]\(7 downto 0),
      \doutb[9]\(0) => \doutb[9]\(0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
  port (
    DOUTADOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTBDOUT : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DOUTPADOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    DOUTPBDOUTP : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    \addrb[14]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1\
     port map (
      DOUTADOUT(7 downto 0) => DOUTADOUT(7 downto 0),
      DOUTBDOUT(7 downto 0) => DOUTBDOUT(7 downto 0),
      DOUTPADOUTP(0) => DOUTPADOUTP(0),
      DOUTPBDOUTP(0) => DOUTPBDOUTP(0),
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \addra[14]\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[14]\ => \addrb[14]\,
      clka => clka,
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ is
  port (
    \douta[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[15]\ : in STD_LOGIC;
    \addrb[15]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[15]\ => \addra[15]\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[15]\ => \addrb[15]\,
      clka => clka,
      \douta[30]\(7 downto 0) => \douta[30]\(7 downto 0),
      \douta[31]\(0) => \douta[31]\(0),
      \doutb[30]\(7 downto 0) => \doutb[30]\(7 downto 0),
      \doutb[31]\(0) => \doutb[31]\(0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ is
  port (
    \douta[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    \addra[14]\ : in STD_LOGIC;
    \addrb[14]\ : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \addra[14]\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[14]\ => \addrb[14]\,
      clka => clka,
      \douta[30]\(7 downto 0) => \douta[30]\(7 downto 0),
      \douta[31]\(0) => \douta[31]\(0),
      \doutb[30]\(7 downto 0) => \doutb[30]\(7 downto 0),
      \doutb[31]\(0) => \doutb[31]\(0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ is
  port (
    \douta[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[30]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[31]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_ena : out STD_LOGIC;
    ram_enb : out STD_LOGIC;
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      \douta[30]\(7 downto 0) => \douta[30]\(7 downto 0),
      \douta[31]\(0) => \douta[31]\(0),
      \doutb[30]\(7 downto 0) => \doutb[30]\(7 downto 0),
      \doutb[31]\(0) => \doutb[31]\(0),
      ram_ena => ram_ena,
      ram_enb => ram_enb,
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
  port (
    \douta[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[8]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[9]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ram_enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      \douta[8]\(7 downto 0) => \douta[8]\(7 downto 0),
      \douta[9]\(0) => \douta[9]\(0),
      \doutb[8]\(7 downto 0) => \doutb[8]\(7 downto 0),
      \doutb[9]\(0) => \doutb[9]\(0),
      ram_ena => ram_ena,
      ram_enb => ram_enb,
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
  port (
    p_39_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    p_38_out : out STD_LOGIC_VECTOR ( 8 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_38_out(8 downto 0) => p_38_out(8 downto 0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 1 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(1 downto 0) => douta(1 downto 0),
      doutb(1 downto 0) => doutb(1 downto 0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ is
  port (
    douta : out STD_LOGIC_VECTOR ( 1 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(1 downto 0) => douta(1 downto 0),
      doutb(1 downto 0) => doutb(1 downto 0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ is
  port (
    \douta[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6\
     port map (
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\,
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      \douta[21]\(7 downto 0) => \douta[21]\(7 downto 0),
      \douta[22]\(0) => \douta[22]\(0),
      \doutb[21]\(7 downto 0) => \doutb[21]\(7 downto 0),
      \doutb[22]\(0) => \doutb[22]\(0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ is
  port (
    \douta[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ : out STD_LOGIC;
    \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ : out STD_LOGIC;
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7\
     port map (
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\ => \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\,
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      \douta[21]\(7 downto 0) => \douta[21]\(7 downto 0),
      \douta[22]\(0) => \douta[22]\(0),
      \doutb[21]\(7 downto 0) => \doutb[21]\(7 downto 0),
      \doutb[22]\(0) => \doutb[22]\(0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ is
  port (
    \douta[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \doutb[21]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \douta[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \doutb[22]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    clka : in STD_LOGIC;
    ram_ena : in STD_LOGIC;
    ram_enb : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 11 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      \douta[21]\(7 downto 0) => \douta[21]\(7 downto 0),
      \douta[22]\(0) => \douta[22]\(0),
      \doutb[21]\(7 downto 0) => \doutb[21]\(7 downto 0),
      \doutb[22]\(0) => \doutb[22]\(0),
      ram_ena => ram_ena,
      ram_enb => ram_enb,
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ is
  port (
    p_15_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    p_14_out : out STD_LOGIC_VECTOR ( 17 downto 0 );
    clka : in STD_LOGIC;
    ena_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    enb_array : in STD_LOGIC_VECTOR ( 0 to 0 );
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 10 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ : entity is "blk_mem_gen_prim_width";
end \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\;

architecture STRUCTURE of \decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\ is
begin
\prim_init.ram\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      ena_array(0) => ena_array(0),
      enb_array(0) => enb_array(0),
      p_14_out(17 downto 0) => p_14_out(17 downto 0),
      p_15_out(17 downto 0) => p_15_out(17 downto 0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr is
  signal ena_array : STD_LOGIC_VECTOR ( 6 to 6 );
  signal enb_array : STD_LOGIC_VECTOR ( 6 to 6 );
  signal p_14_out : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal p_15_out : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal p_38_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_39_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ram_ena : STD_LOGIC;
  signal ram_enb : STD_LOGIC;
  signal \ramloop[11].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[11].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[12].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[13].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[1].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[2].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[3].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[7].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_18\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_19\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[8].ram.r_n_9\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_0\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_1\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_10\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_11\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_12\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_13\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_14\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_15\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_16\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_17\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_2\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_3\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_4\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_5\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_6\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_7\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_8\ : STD_LOGIC;
  signal \ramloop[9].ram.r_n_9\ : STD_LOGIC;
begin
\bindec_a.bindec_inst_a\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec
     port map (
      addra(2 downto 0) => addra(13 downto 11),
      ena_array(0) => ena_array(6)
    );
\bindec_b.bindec_inst_b\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bindec_0
     port map (
      addrb(2 downto 0) => addrb(13 downto 11),
      enb_array(0) => enb_array(6)
    );
\has_mux_a.A\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux
     port map (
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7) => \ramloop[1].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6) => \ramloop[1].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5) => \ramloop[1].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4) => \ramloop[1].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3) => \ramloop[1].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2) => \ramloop[1].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1) => \ramloop[1].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \ramloop[1].ram.r_n_7\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(7) => \ramloop[3].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(6) => \ramloop[3].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(5) => \ramloop[3].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(4) => \ramloop[3].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[3].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[3].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[3].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[3].ram.r_n_7\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[1].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(7) => \ramloop[11].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(6) => \ramloop[11].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(5) => \ramloop[11].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(4) => \ramloop[11].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(3) => \ramloop[11].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(2) => \ramloop[11].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(1) => \ramloop[11].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(0) => \ramloop[11].ram.r_n_7\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(7) => \ramloop[13].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(6) => \ramloop[13].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(5) => \ramloop[13].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(4) => \ramloop[13].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(3) => \ramloop[13].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(2) => \ramloop[13].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(1) => \ramloop[13].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(0) => \ramloop[13].ram.r_n_7\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12\(0) => \ramloop[12].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13\(0) => \ramloop[11].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14\(0) => \ramloop[13].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[3].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(7) => \ramloop[8].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(6) => \ramloop[8].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(5) => \ramloop[8].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(4) => \ramloop[8].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(3) => \ramloop[8].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(2) => \ramloop[8].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(1) => \ramloop[8].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[8].ram.r_n_7\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(7) => \ramloop[7].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(6) => \ramloop[7].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(5) => \ramloop[7].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(4) => \ramloop[7].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(3) => \ramloop[7].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(2) => \ramloop[7].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(1) => \ramloop[7].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[7].ram.r_n_7\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7) => \ramloop[9].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6) => \ramloop[9].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5) => \ramloop[9].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4) => \ramloop[9].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3) => \ramloop[9].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2) => \ramloop[9].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1) => \ramloop[9].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[9].ram.r_n_7\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[8].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7\(0) => \ramloop[7].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8\(0) => \ramloop[9].ram.r_n_16\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(7) => \ramloop[12].ram.r_n_0\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(6) => \ramloop[12].ram.r_n_1\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(5) => \ramloop[12].ram.r_n_2\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(4) => \ramloop[12].ram.r_n_3\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(3) => \ramloop[12].ram.r_n_4\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(2) => \ramloop[12].ram.r_n_5\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(1) => \ramloop[12].ram.r_n_6\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(0) => \ramloop[12].ram.r_n_7\,
      DOUTADOUT(7) => \ramloop[2].ram.r_n_0\,
      DOUTADOUT(6) => \ramloop[2].ram.r_n_1\,
      DOUTADOUT(5) => \ramloop[2].ram.r_n_2\,
      DOUTADOUT(4) => \ramloop[2].ram.r_n_3\,
      DOUTADOUT(3) => \ramloop[2].ram.r_n_4\,
      DOUTADOUT(2) => \ramloop[2].ram.r_n_5\,
      DOUTADOUT(1) => \ramloop[2].ram.r_n_6\,
      DOUTADOUT(0) => \ramloop[2].ram.r_n_7\,
      DOUTPADOUTP(0) => \ramloop[2].ram.r_n_16\,
      addra(2 downto 0) => addra(13 downto 11),
      clka => clka,
      douta(26 downto 9) => douta(31 downto 14),
      douta(8 downto 0) => douta(9 downto 1),
      p_15_out(17 downto 0) => p_15_out(17 downto 0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0)
    );
\has_mux_b.B\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0\
     port map (
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(7) => \ramloop[1].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(6) => \ramloop[1].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(5) => \ramloop[1].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(4) => \ramloop[1].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(3) => \ramloop[1].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(2) => \ramloop[1].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(1) => \ramloop[1].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\(0) => \ramloop[1].ram.r_n_15\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(7) => \ramloop[3].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(6) => \ramloop[3].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(5) => \ramloop[3].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(4) => \ramloop[3].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(3) => \ramloop[3].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(2) => \ramloop[3].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(1) => \ramloop[3].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\(0) => \ramloop[3].ram.r_n_15\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_1\(0) => \ramloop[1].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(7) => \ramloop[11].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(6) => \ramloop[11].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(5) => \ramloop[11].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(4) => \ramloop[11].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(3) => \ramloop[11].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(2) => \ramloop[11].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(1) => \ramloop[11].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_10\(0) => \ramloop[11].ram.r_n_15\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(7) => \ramloop[13].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(6) => \ramloop[13].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(5) => \ramloop[13].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(4) => \ramloop[13].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(3) => \ramloop[13].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(2) => \ramloop[13].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(1) => \ramloop[13].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_11\(0) => \ramloop[13].ram.r_n_15\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_12\(0) => \ramloop[12].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_13\(0) => \ramloop[11].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_14\(0) => \ramloop[13].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_2\(0) => \ramloop[3].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(7) => \ramloop[8].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(6) => \ramloop[8].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(5) => \ramloop[8].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(4) => \ramloop[8].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(3) => \ramloop[8].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(2) => \ramloop[8].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(1) => \ramloop[8].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_3\(0) => \ramloop[8].ram.r_n_15\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(7) => \ramloop[7].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(6) => \ramloop[7].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(5) => \ramloop[7].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(4) => \ramloop[7].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(3) => \ramloop[7].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(2) => \ramloop[7].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(1) => \ramloop[7].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_4\(0) => \ramloop[7].ram.r_n_15\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(7) => \ramloop[9].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(6) => \ramloop[9].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(5) => \ramloop[9].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(4) => \ramloop[9].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(3) => \ramloop[9].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(2) => \ramloop[9].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(1) => \ramloop[9].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_5\(0) => \ramloop[9].ram.r_n_15\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_6\(0) => \ramloop[8].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_7\(0) => \ramloop[7].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_8\(0) => \ramloop[9].ram.r_n_17\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(7) => \ramloop[12].ram.r_n_8\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(6) => \ramloop[12].ram.r_n_9\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(5) => \ramloop[12].ram.r_n_10\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(4) => \ramloop[12].ram.r_n_11\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(3) => \ramloop[12].ram.r_n_12\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(2) => \ramloop[12].ram.r_n_13\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(1) => \ramloop[12].ram.r_n_14\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_9\(0) => \ramloop[12].ram.r_n_15\,
      DOUTBDOUT(7) => \ramloop[2].ram.r_n_8\,
      DOUTBDOUT(6) => \ramloop[2].ram.r_n_9\,
      DOUTBDOUT(5) => \ramloop[2].ram.r_n_10\,
      DOUTBDOUT(4) => \ramloop[2].ram.r_n_11\,
      DOUTBDOUT(3) => \ramloop[2].ram.r_n_12\,
      DOUTBDOUT(2) => \ramloop[2].ram.r_n_13\,
      DOUTBDOUT(1) => \ramloop[2].ram.r_n_14\,
      DOUTBDOUT(0) => \ramloop[2].ram.r_n_15\,
      DOUTPBDOUTP(0) => \ramloop[2].ram.r_n_17\,
      addrb(2 downto 0) => addrb(13 downto 11),
      clka => clka,
      doutb(26 downto 9) => doutb(31 downto 14),
      doutb(8 downto 0) => doutb(9 downto 1),
      p_14_out(17 downto 0) => p_14_out(17 downto 0),
      p_38_out(8 downto 0) => p_38_out(8 downto 0)
    );
\ramloop[0].ram.r\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(0) => douta(0),
      doutb(0) => doutb(0),
      sleep => sleep
    );
\ramloop[10].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      ena_array(0) => ena_array(6),
      enb_array(0) => enb_array(6),
      p_14_out(17 downto 0) => p_14_out(17 downto 0),
      p_15_out(17 downto 0) => p_15_out(17 downto 0),
      sleep => sleep
    );
\ramloop[11].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[15]\ => \ramloop[7].ram.r_n_18\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[15]\ => \ramloop[7].ram.r_n_19\,
      clka => clka,
      \douta[30]\(7) => \ramloop[11].ram.r_n_0\,
      \douta[30]\(6) => \ramloop[11].ram.r_n_1\,
      \douta[30]\(5) => \ramloop[11].ram.r_n_2\,
      \douta[30]\(4) => \ramloop[11].ram.r_n_3\,
      \douta[30]\(3) => \ramloop[11].ram.r_n_4\,
      \douta[30]\(2) => \ramloop[11].ram.r_n_5\,
      \douta[30]\(1) => \ramloop[11].ram.r_n_6\,
      \douta[30]\(0) => \ramloop[11].ram.r_n_7\,
      \douta[31]\(0) => \ramloop[11].ram.r_n_16\,
      \doutb[30]\(7) => \ramloop[11].ram.r_n_8\,
      \doutb[30]\(6) => \ramloop[11].ram.r_n_9\,
      \doutb[30]\(5) => \ramloop[11].ram.r_n_10\,
      \doutb[30]\(4) => \ramloop[11].ram.r_n_11\,
      \doutb[30]\(3) => \ramloop[11].ram.r_n_12\,
      \doutb[30]\(2) => \ramloop[11].ram.r_n_13\,
      \doutb[30]\(1) => \ramloop[11].ram.r_n_14\,
      \doutb[30]\(0) => \ramloop[11].ram.r_n_15\,
      \doutb[31]\(0) => \ramloop[11].ram.r_n_17\,
      sleep => sleep
    );
\ramloop[12].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \ramloop[8].ram.r_n_18\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[14]\ => \ramloop[8].ram.r_n_19\,
      clka => clka,
      \douta[30]\(7) => \ramloop[12].ram.r_n_0\,
      \douta[30]\(6) => \ramloop[12].ram.r_n_1\,
      \douta[30]\(5) => \ramloop[12].ram.r_n_2\,
      \douta[30]\(4) => \ramloop[12].ram.r_n_3\,
      \douta[30]\(3) => \ramloop[12].ram.r_n_4\,
      \douta[30]\(2) => \ramloop[12].ram.r_n_5\,
      \douta[30]\(1) => \ramloop[12].ram.r_n_6\,
      \douta[30]\(0) => \ramloop[12].ram.r_n_7\,
      \douta[31]\(0) => \ramloop[12].ram.r_n_16\,
      \doutb[30]\(7) => \ramloop[12].ram.r_n_8\,
      \doutb[30]\(6) => \ramloop[12].ram.r_n_9\,
      \doutb[30]\(5) => \ramloop[12].ram.r_n_10\,
      \doutb[30]\(4) => \ramloop[12].ram.r_n_11\,
      \doutb[30]\(3) => \ramloop[12].ram.r_n_12\,
      \doutb[30]\(2) => \ramloop[12].ram.r_n_13\,
      \doutb[30]\(1) => \ramloop[12].ram.r_n_14\,
      \doutb[30]\(0) => \ramloop[12].ram.r_n_15\,
      \doutb[31]\(0) => \ramloop[12].ram.r_n_17\,
      sleep => sleep
    );
\ramloop[13].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      \douta[30]\(7) => \ramloop[13].ram.r_n_0\,
      \douta[30]\(6) => \ramloop[13].ram.r_n_1\,
      \douta[30]\(5) => \ramloop[13].ram.r_n_2\,
      \douta[30]\(4) => \ramloop[13].ram.r_n_3\,
      \douta[30]\(3) => \ramloop[13].ram.r_n_4\,
      \douta[30]\(2) => \ramloop[13].ram.r_n_5\,
      \douta[30]\(1) => \ramloop[13].ram.r_n_6\,
      \douta[30]\(0) => \ramloop[13].ram.r_n_7\,
      \douta[31]\(0) => \ramloop[13].ram.r_n_16\,
      \doutb[30]\(7) => \ramloop[13].ram.r_n_8\,
      \doutb[30]\(6) => \ramloop[13].ram.r_n_9\,
      \doutb[30]\(5) => \ramloop[13].ram.r_n_10\,
      \doutb[30]\(4) => \ramloop[13].ram.r_n_11\,
      \doutb[30]\(3) => \ramloop[13].ram.r_n_12\,
      \doutb[30]\(2) => \ramloop[13].ram.r_n_13\,
      \doutb[30]\(1) => \ramloop[13].ram.r_n_14\,
      \doutb[30]\(0) => \ramloop[13].ram.r_n_15\,
      \doutb[31]\(0) => \ramloop[13].ram.r_n_17\,
      ram_ena => ram_ena,
      ram_enb => ram_enb,
      sleep => sleep
    );
\ramloop[1].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      \addra[15]\ => \ramloop[7].ram.r_n_18\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[15]\ => \ramloop[7].ram.r_n_19\,
      clka => clka,
      \douta[8]\(7) => \ramloop[1].ram.r_n_0\,
      \douta[8]\(6) => \ramloop[1].ram.r_n_1\,
      \douta[8]\(5) => \ramloop[1].ram.r_n_2\,
      \douta[8]\(4) => \ramloop[1].ram.r_n_3\,
      \douta[8]\(3) => \ramloop[1].ram.r_n_4\,
      \douta[8]\(2) => \ramloop[1].ram.r_n_5\,
      \douta[8]\(1) => \ramloop[1].ram.r_n_6\,
      \douta[8]\(0) => \ramloop[1].ram.r_n_7\,
      \douta[9]\(0) => \ramloop[1].ram.r_n_16\,
      \doutb[8]\(7) => \ramloop[1].ram.r_n_8\,
      \doutb[8]\(6) => \ramloop[1].ram.r_n_9\,
      \doutb[8]\(5) => \ramloop[1].ram.r_n_10\,
      \doutb[8]\(4) => \ramloop[1].ram.r_n_11\,
      \doutb[8]\(3) => \ramloop[1].ram.r_n_12\,
      \doutb[8]\(2) => \ramloop[1].ram.r_n_13\,
      \doutb[8]\(1) => \ramloop[1].ram.r_n_14\,
      \doutb[8]\(0) => \ramloop[1].ram.r_n_15\,
      \doutb[9]\(0) => \ramloop[1].ram.r_n_17\,
      sleep => sleep
    );
\ramloop[2].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1\
     port map (
      DOUTADOUT(7) => \ramloop[2].ram.r_n_0\,
      DOUTADOUT(6) => \ramloop[2].ram.r_n_1\,
      DOUTADOUT(5) => \ramloop[2].ram.r_n_2\,
      DOUTADOUT(4) => \ramloop[2].ram.r_n_3\,
      DOUTADOUT(3) => \ramloop[2].ram.r_n_4\,
      DOUTADOUT(2) => \ramloop[2].ram.r_n_5\,
      DOUTADOUT(1) => \ramloop[2].ram.r_n_6\,
      DOUTADOUT(0) => \ramloop[2].ram.r_n_7\,
      DOUTBDOUT(7) => \ramloop[2].ram.r_n_8\,
      DOUTBDOUT(6) => \ramloop[2].ram.r_n_9\,
      DOUTBDOUT(5) => \ramloop[2].ram.r_n_10\,
      DOUTBDOUT(4) => \ramloop[2].ram.r_n_11\,
      DOUTBDOUT(3) => \ramloop[2].ram.r_n_12\,
      DOUTBDOUT(2) => \ramloop[2].ram.r_n_13\,
      DOUTBDOUT(1) => \ramloop[2].ram.r_n_14\,
      DOUTBDOUT(0) => \ramloop[2].ram.r_n_15\,
      DOUTPADOUTP(0) => \ramloop[2].ram.r_n_16\,
      DOUTPBDOUTP(0) => \ramloop[2].ram.r_n_17\,
      addra(11 downto 0) => addra(11 downto 0),
      \addra[14]\ => \ramloop[8].ram.r_n_18\,
      addrb(11 downto 0) => addrb(11 downto 0),
      \addrb[14]\ => \ramloop[8].ram.r_n_19\,
      clka => clka,
      sleep => sleep
    );
\ramloop[3].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      \douta[8]\(7) => \ramloop[3].ram.r_n_0\,
      \douta[8]\(6) => \ramloop[3].ram.r_n_1\,
      \douta[8]\(5) => \ramloop[3].ram.r_n_2\,
      \douta[8]\(4) => \ramloop[3].ram.r_n_3\,
      \douta[8]\(3) => \ramloop[3].ram.r_n_4\,
      \douta[8]\(2) => \ramloop[3].ram.r_n_5\,
      \douta[8]\(1) => \ramloop[3].ram.r_n_6\,
      \douta[8]\(0) => \ramloop[3].ram.r_n_7\,
      \douta[9]\(0) => \ramloop[3].ram.r_n_16\,
      \doutb[8]\(7) => \ramloop[3].ram.r_n_8\,
      \doutb[8]\(6) => \ramloop[3].ram.r_n_9\,
      \doutb[8]\(5) => \ramloop[3].ram.r_n_10\,
      \doutb[8]\(4) => \ramloop[3].ram.r_n_11\,
      \doutb[8]\(3) => \ramloop[3].ram.r_n_12\,
      \doutb[8]\(2) => \ramloop[3].ram.r_n_13\,
      \doutb[8]\(1) => \ramloop[3].ram.r_n_14\,
      \doutb[8]\(0) => \ramloop[3].ram.r_n_15\,
      \doutb[9]\(0) => \ramloop[3].ram.r_n_17\,
      ram_ena => ram_ena,
      ram_enb => ram_enb,
      sleep => sleep
    );
\ramloop[4].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3\
     port map (
      addra(10 downto 0) => addra(10 downto 0),
      addrb(10 downto 0) => addrb(10 downto 0),
      clka => clka,
      ena_array(0) => ena_array(6),
      enb_array(0) => enb_array(6),
      p_38_out(8 downto 0) => p_38_out(8 downto 0),
      p_39_out(8 downto 0) => p_39_out(8 downto 0),
      sleep => sleep
    );
\ramloop[5].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(1 downto 0) => douta(11 downto 10),
      doutb(1 downto 0) => doutb(11 downto 10),
      sleep => sleep
    );
\ramloop[6].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5\
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(1 downto 0) => douta(13 downto 12),
      doutb(1 downto 0) => doutb(13 downto 12),
      sleep => sleep
    );
\ramloop[7].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6\
     port map (
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => \ramloop[7].ram.r_n_18\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \ramloop[7].ram.r_n_19\,
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      \douta[21]\(7) => \ramloop[7].ram.r_n_0\,
      \douta[21]\(6) => \ramloop[7].ram.r_n_1\,
      \douta[21]\(5) => \ramloop[7].ram.r_n_2\,
      \douta[21]\(4) => \ramloop[7].ram.r_n_3\,
      \douta[21]\(3) => \ramloop[7].ram.r_n_4\,
      \douta[21]\(2) => \ramloop[7].ram.r_n_5\,
      \douta[21]\(1) => \ramloop[7].ram.r_n_6\,
      \douta[21]\(0) => \ramloop[7].ram.r_n_7\,
      \douta[22]\(0) => \ramloop[7].ram.r_n_16\,
      \doutb[21]\(7) => \ramloop[7].ram.r_n_8\,
      \doutb[21]\(6) => \ramloop[7].ram.r_n_9\,
      \doutb[21]\(5) => \ramloop[7].ram.r_n_10\,
      \doutb[21]\(4) => \ramloop[7].ram.r_n_11\,
      \doutb[21]\(3) => \ramloop[7].ram.r_n_12\,
      \doutb[21]\(2) => \ramloop[7].ram.r_n_13\,
      \doutb[21]\(1) => \ramloop[7].ram.r_n_14\,
      \doutb[21]\(0) => \ramloop[7].ram.r_n_15\,
      \doutb[22]\(0) => \ramloop[7].ram.r_n_17\,
      sleep => sleep
    );
\ramloop[8].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7\
     port map (
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram\ => \ramloop[8].ram.r_n_18\,
      \DEVICE_8SERIES.WITH_BMM_INFO.TRUE_DP.SIMPLE_PRIM36.ram_0\ => \ramloop[8].ram.r_n_19\,
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      \douta[21]\(7) => \ramloop[8].ram.r_n_0\,
      \douta[21]\(6) => \ramloop[8].ram.r_n_1\,
      \douta[21]\(5) => \ramloop[8].ram.r_n_2\,
      \douta[21]\(4) => \ramloop[8].ram.r_n_3\,
      \douta[21]\(3) => \ramloop[8].ram.r_n_4\,
      \douta[21]\(2) => \ramloop[8].ram.r_n_5\,
      \douta[21]\(1) => \ramloop[8].ram.r_n_6\,
      \douta[21]\(0) => \ramloop[8].ram.r_n_7\,
      \douta[22]\(0) => \ramloop[8].ram.r_n_16\,
      \doutb[21]\(7) => \ramloop[8].ram.r_n_8\,
      \doutb[21]\(6) => \ramloop[8].ram.r_n_9\,
      \doutb[21]\(5) => \ramloop[8].ram.r_n_10\,
      \doutb[21]\(4) => \ramloop[8].ram.r_n_11\,
      \doutb[21]\(3) => \ramloop[8].ram.r_n_12\,
      \doutb[21]\(2) => \ramloop[8].ram.r_n_13\,
      \doutb[21]\(1) => \ramloop[8].ram.r_n_14\,
      \doutb[21]\(0) => \ramloop[8].ram.r_n_15\,
      \doutb[22]\(0) => \ramloop[8].ram.r_n_17\,
      sleep => sleep
    );
\ramloop[9].ram.r\: entity work.\decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8\
     port map (
      addra(11 downto 0) => addra(11 downto 0),
      addrb(11 downto 0) => addrb(11 downto 0),
      clka => clka,
      \douta[21]\(7) => \ramloop[9].ram.r_n_0\,
      \douta[21]\(6) => \ramloop[9].ram.r_n_1\,
      \douta[21]\(5) => \ramloop[9].ram.r_n_2\,
      \douta[21]\(4) => \ramloop[9].ram.r_n_3\,
      \douta[21]\(3) => \ramloop[9].ram.r_n_4\,
      \douta[21]\(2) => \ramloop[9].ram.r_n_5\,
      \douta[21]\(1) => \ramloop[9].ram.r_n_6\,
      \douta[21]\(0) => \ramloop[9].ram.r_n_7\,
      \douta[22]\(0) => \ramloop[9].ram.r_n_16\,
      \doutb[21]\(7) => \ramloop[9].ram.r_n_8\,
      \doutb[21]\(6) => \ramloop[9].ram.r_n_9\,
      \doutb[21]\(5) => \ramloop[9].ram.r_n_10\,
      \doutb[21]\(4) => \ramloop[9].ram.r_n_11\,
      \doutb[21]\(3) => \ramloop[9].ram.r_n_12\,
      \doutb[21]\(2) => \ramloop[9].ram.r_n_13\,
      \doutb[21]\(1) => \ramloop[9].ram.r_n_14\,
      \doutb[21]\(0) => \ramloop[9].ram.r_n_15\,
      \doutb[22]\(0) => \ramloop[9].ram.r_n_17\,
      ram_ena => ram_ena,
      ram_enb => ram_enb,
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top is
begin
\valid.cstr\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
  port (
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clka : in STD_LOGIC;
    sleep : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 13 downto 0 );
    addrb : in STD_LOGIC_VECTOR ( 13 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth is
begin
\gnbram.gnative_mem_map_bmg.native_mem_map_blk_mem_gen\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
     port map (
      addra(13 downto 0) => addra(13 downto 0),
      addrb(13 downto 0) => addrb(13 downto 0),
      clka => clka,
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  port (
    clka : in STD_LOGIC;
    rsta : in STD_LOGIC;
    ena : in STD_LOGIC;
    regcea : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    rstb : in STD_LOGIC;
    enb : in STD_LOGIC;
    regceb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    injectsbiterr : in STD_LOGIC;
    injectdbiterr : in STD_LOGIC;
    eccpipece : in STD_LOGIC;
    sbiterr : out STD_LOGIC;
    dbiterr : out STD_LOGIC;
    rdaddrecc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    sleep : in STD_LOGIC;
    deepsleep : in STD_LOGIC;
    shutdown : in STD_LOGIC;
    rsta_busy : out STD_LOGIC;
    rstb_busy : out STD_LOGIC;
    s_aclk : in STD_LOGIC;
    s_aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_injectsbiterr : in STD_LOGIC;
    s_axi_injectdbiterr : in STD_LOGIC;
    s_axi_sbiterr : out STD_LOGIC;
    s_axi_dbiterr : out STD_LOGIC;
    s_axi_rdaddrecc : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "2";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "12";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "Estimated Power for IP     :     28.739708 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "kintexu";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "design_1_blk_mem_gen_1_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 4;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 14336;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 14336;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 14336;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 14336;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "kintexu";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  dbiterr <= \<const0>\;
  rdaddrecc(31) <= \<const0>\;
  rdaddrecc(30) <= \<const0>\;
  rdaddrecc(29) <= \<const0>\;
  rdaddrecc(28) <= \<const0>\;
  rdaddrecc(27) <= \<const0>\;
  rdaddrecc(26) <= \<const0>\;
  rdaddrecc(25) <= \<const0>\;
  rdaddrecc(24) <= \<const0>\;
  rdaddrecc(23) <= \<const0>\;
  rdaddrecc(22) <= \<const0>\;
  rdaddrecc(21) <= \<const0>\;
  rdaddrecc(20) <= \<const0>\;
  rdaddrecc(19) <= \<const0>\;
  rdaddrecc(18) <= \<const0>\;
  rdaddrecc(17) <= \<const0>\;
  rdaddrecc(16) <= \<const0>\;
  rdaddrecc(15) <= \<const0>\;
  rdaddrecc(14) <= \<const0>\;
  rdaddrecc(13) <= \<const0>\;
  rdaddrecc(12) <= \<const0>\;
  rdaddrecc(11) <= \<const0>\;
  rdaddrecc(10) <= \<const0>\;
  rdaddrecc(9) <= \<const0>\;
  rdaddrecc(8) <= \<const0>\;
  rdaddrecc(7) <= \<const0>\;
  rdaddrecc(6) <= \<const0>\;
  rdaddrecc(5) <= \<const0>\;
  rdaddrecc(4) <= \<const0>\;
  rdaddrecc(3) <= \<const0>\;
  rdaddrecc(2) <= \<const0>\;
  rdaddrecc(1) <= \<const0>\;
  rdaddrecc(0) <= \<const0>\;
  rsta_busy <= \<const0>\;
  rstb_busy <= \<const0>\;
  s_axi_arready <= \<const0>\;
  s_axi_awready <= \<const0>\;
  s_axi_bid(3) <= \<const0>\;
  s_axi_bid(2) <= \<const0>\;
  s_axi_bid(1) <= \<const0>\;
  s_axi_bid(0) <= \<const0>\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_bvalid <= \<const0>\;
  s_axi_dbiterr <= \<const0>\;
  s_axi_rdaddrecc(31) <= \<const0>\;
  s_axi_rdaddrecc(30) <= \<const0>\;
  s_axi_rdaddrecc(29) <= \<const0>\;
  s_axi_rdaddrecc(28) <= \<const0>\;
  s_axi_rdaddrecc(27) <= \<const0>\;
  s_axi_rdaddrecc(26) <= \<const0>\;
  s_axi_rdaddrecc(25) <= \<const0>\;
  s_axi_rdaddrecc(24) <= \<const0>\;
  s_axi_rdaddrecc(23) <= \<const0>\;
  s_axi_rdaddrecc(22) <= \<const0>\;
  s_axi_rdaddrecc(21) <= \<const0>\;
  s_axi_rdaddrecc(20) <= \<const0>\;
  s_axi_rdaddrecc(19) <= \<const0>\;
  s_axi_rdaddrecc(18) <= \<const0>\;
  s_axi_rdaddrecc(17) <= \<const0>\;
  s_axi_rdaddrecc(16) <= \<const0>\;
  s_axi_rdaddrecc(15) <= \<const0>\;
  s_axi_rdaddrecc(14) <= \<const0>\;
  s_axi_rdaddrecc(13) <= \<const0>\;
  s_axi_rdaddrecc(12) <= \<const0>\;
  s_axi_rdaddrecc(11) <= \<const0>\;
  s_axi_rdaddrecc(10) <= \<const0>\;
  s_axi_rdaddrecc(9) <= \<const0>\;
  s_axi_rdaddrecc(8) <= \<const0>\;
  s_axi_rdaddrecc(7) <= \<const0>\;
  s_axi_rdaddrecc(6) <= \<const0>\;
  s_axi_rdaddrecc(5) <= \<const0>\;
  s_axi_rdaddrecc(4) <= \<const0>\;
  s_axi_rdaddrecc(3) <= \<const0>\;
  s_axi_rdaddrecc(2) <= \<const0>\;
  s_axi_rdaddrecc(1) <= \<const0>\;
  s_axi_rdaddrecc(0) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rid(3) <= \<const0>\;
  s_axi_rid(2) <= \<const0>\;
  s_axi_rid(1) <= \<const0>\;
  s_axi_rid(0) <= \<const0>\;
  s_axi_rlast <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \<const0>\;
  s_axi_sbiterr <= \<const0>\;
  s_axi_wready <= \<const0>\;
  sbiterr <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst_blk_mem_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1_synth
     port map (
      addra(13 downto 0) => addra(15 downto 2),
      addrb(13 downto 0) => addrb(15 downto 2),
      clka => clka,
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      sleep => sleep
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clkb : in STD_LOGIC;
    addrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_blk_mem_gen_1_0,blk_mem_gen_v8_4_1,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "blk_mem_gen_v8_4_1,Vivado 2017.4";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rsta_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rstb_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_U0_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rdaddrecc_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ADDRA_WIDTH : integer;
  attribute C_ADDRA_WIDTH of U0 : label is 32;
  attribute C_ADDRB_WIDTH : integer;
  attribute C_ADDRB_WIDTH of U0 : label is 32;
  attribute C_ALGORITHM : integer;
  attribute C_ALGORITHM of U0 : label is 1;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of U0 : label is 4;
  attribute C_AXI_SLAVE_TYPE : integer;
  attribute C_AXI_SLAVE_TYPE of U0 : label is 0;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of U0 : label is 1;
  attribute C_BYTE_SIZE : integer;
  attribute C_BYTE_SIZE of U0 : label is 8;
  attribute C_COMMON_CLK : integer;
  attribute C_COMMON_CLK of U0 : label is 1;
  attribute C_COUNT_18K_BRAM : string;
  attribute C_COUNT_18K_BRAM of U0 : label is "2";
  attribute C_COUNT_36K_BRAM : string;
  attribute C_COUNT_36K_BRAM of U0 : label is "12";
  attribute C_CTRL_ECC_ALGO : string;
  attribute C_CTRL_ECC_ALGO of U0 : label is "NONE";
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of U0 : label is "0";
  attribute C_DISABLE_WARN_BHV_COLL : integer;
  attribute C_DISABLE_WARN_BHV_COLL of U0 : label is 0;
  attribute C_DISABLE_WARN_BHV_RANGE : integer;
  attribute C_DISABLE_WARN_BHV_RANGE of U0 : label is 0;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of U0 : label is "./";
  attribute C_ENABLE_32BIT_ADDRESS : integer;
  attribute C_ENABLE_32BIT_ADDRESS of U0 : label is 1;
  attribute C_EN_DEEPSLEEP_PIN : integer;
  attribute C_EN_DEEPSLEEP_PIN of U0 : label is 0;
  attribute C_EN_ECC_PIPE : integer;
  attribute C_EN_ECC_PIPE of U0 : label is 0;
  attribute C_EN_RDADDRA_CHG : integer;
  attribute C_EN_RDADDRA_CHG of U0 : label is 0;
  attribute C_EN_RDADDRB_CHG : integer;
  attribute C_EN_RDADDRB_CHG of U0 : label is 0;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of U0 : label is 0;
  attribute C_EN_SHUTDOWN_PIN : integer;
  attribute C_EN_SHUTDOWN_PIN of U0 : label is 0;
  attribute C_EN_SLEEP_PIN : integer;
  attribute C_EN_SLEEP_PIN of U0 : label is 0;
  attribute C_EST_POWER_SUMMARY : string;
  attribute C_EST_POWER_SUMMARY of U0 : label is "Estimated Power for IP     :     28.739708 mW";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "kintexu";
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of U0 : label is 0;
  attribute C_HAS_ENA : integer;
  attribute C_HAS_ENA of U0 : label is 0;
  attribute C_HAS_ENB : integer;
  attribute C_HAS_ENB of U0 : label is 0;
  attribute C_HAS_INJECTERR : integer;
  attribute C_HAS_INJECTERR of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_A : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MEM_OUTPUT_REGS_B : integer;
  attribute C_HAS_MEM_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_A : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_MUX_OUTPUT_REGS_B : integer;
  attribute C_HAS_MUX_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_HAS_REGCEA : integer;
  attribute C_HAS_REGCEA of U0 : label is 0;
  attribute C_HAS_REGCEB : integer;
  attribute C_HAS_REGCEB of U0 : label is 0;
  attribute C_HAS_RSTA : integer;
  attribute C_HAS_RSTA of U0 : label is 0;
  attribute C_HAS_RSTB : integer;
  attribute C_HAS_RSTB of U0 : label is 0;
  attribute C_HAS_SOFTECC_INPUT_REGS_A : integer;
  attribute C_HAS_SOFTECC_INPUT_REGS_A of U0 : label is 0;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B : integer;
  attribute C_HAS_SOFTECC_OUTPUT_REGS_B of U0 : label is 0;
  attribute C_INITA_VAL : string;
  attribute C_INITA_VAL of U0 : label is "0";
  attribute C_INITB_VAL : string;
  attribute C_INITB_VAL of U0 : label is "0";
  attribute C_INIT_FILE : string;
  attribute C_INIT_FILE of U0 : label is "NONE";
  attribute C_INIT_FILE_NAME : string;
  attribute C_INIT_FILE_NAME of U0 : label is "design_1_blk_mem_gen_1_0.mif";
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of U0 : label is 0;
  attribute C_LOAD_INIT_FILE : integer;
  attribute C_LOAD_INIT_FILE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 4;
  attribute C_MUX_PIPELINE_STAGES : integer;
  attribute C_MUX_PIPELINE_STAGES of U0 : label is 0;
  attribute C_PRIM_TYPE : integer;
  attribute C_PRIM_TYPE of U0 : label is 1;
  attribute C_READ_DEPTH_A : integer;
  attribute C_READ_DEPTH_A of U0 : label is 14336;
  attribute C_READ_DEPTH_B : integer;
  attribute C_READ_DEPTH_B of U0 : label is 14336;
  attribute C_READ_WIDTH_A : integer;
  attribute C_READ_WIDTH_A of U0 : label is 32;
  attribute C_READ_WIDTH_B : integer;
  attribute C_READ_WIDTH_B of U0 : label is 32;
  attribute C_RSTRAM_A : integer;
  attribute C_RSTRAM_A of U0 : label is 0;
  attribute C_RSTRAM_B : integer;
  attribute C_RSTRAM_B of U0 : label is 0;
  attribute C_RST_PRIORITY_A : string;
  attribute C_RST_PRIORITY_A of U0 : label is "CE";
  attribute C_RST_PRIORITY_B : string;
  attribute C_RST_PRIORITY_B of U0 : label is "CE";
  attribute C_SIM_COLLISION_CHECK : string;
  attribute C_SIM_COLLISION_CHECK of U0 : label is "ALL";
  attribute C_USE_BRAM_BLOCK : integer;
  attribute C_USE_BRAM_BLOCK of U0 : label is 0;
  attribute C_USE_BYTE_WEA : integer;
  attribute C_USE_BYTE_WEA of U0 : label is 0;
  attribute C_USE_BYTE_WEB : integer;
  attribute C_USE_BYTE_WEB of U0 : label is 0;
  attribute C_USE_DEFAULT_DATA : integer;
  attribute C_USE_DEFAULT_DATA of U0 : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of U0 : label is 0;
  attribute C_USE_SOFTECC : integer;
  attribute C_USE_SOFTECC of U0 : label is 0;
  attribute C_USE_URAM : integer;
  attribute C_USE_URAM of U0 : label is 0;
  attribute C_WEA_WIDTH : integer;
  attribute C_WEA_WIDTH of U0 : label is 1;
  attribute C_WEB_WIDTH : integer;
  attribute C_WEB_WIDTH of U0 : label is 1;
  attribute C_WRITE_DEPTH_A : integer;
  attribute C_WRITE_DEPTH_A of U0 : label is 14336;
  attribute C_WRITE_DEPTH_B : integer;
  attribute C_WRITE_DEPTH_B of U0 : label is 14336;
  attribute C_WRITE_MODE_A : string;
  attribute C_WRITE_MODE_A of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_MODE_B : string;
  attribute C_WRITE_MODE_B of U0 : label is "WRITE_FIRST";
  attribute C_WRITE_WIDTH_A : integer;
  attribute C_WRITE_WIDTH_A of U0 : label is 32;
  attribute C_WRITE_WIDTH_B : integer;
  attribute C_WRITE_WIDTH_B of U0 : label is 32;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "kintexu";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of clka : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clka : signal is "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY";
  attribute x_interface_info of clkb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK";
  attribute x_interface_parameter of clkb : signal is "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_ONLY";
  attribute x_interface_info of addra : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR";
  attribute x_interface_info of addrb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR";
  attribute x_interface_info of douta : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT";
  attribute x_interface_info of doutb : signal is "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_1
     port map (
      addra(31 downto 0) => addra(31 downto 0),
      addrb(31 downto 0) => addrb(31 downto 0),
      clka => clka,
      clkb => clkb,
      dbiterr => NLW_U0_dbiterr_UNCONNECTED,
      deepsleep => '0',
      dina(31 downto 0) => B"00000000000000000000000000000000",
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(31 downto 0) => douta(31 downto 0),
      doutb(31 downto 0) => doutb(31 downto 0),
      eccpipece => '0',
      ena => '0',
      enb => '0',
      injectdbiterr => '0',
      injectsbiterr => '0',
      rdaddrecc(31 downto 0) => NLW_U0_rdaddrecc_UNCONNECTED(31 downto 0),
      regcea => '0',
      regceb => '0',
      rsta => '0',
      rsta_busy => NLW_U0_rsta_busy_UNCONNECTED,
      rstb => '0',
      rstb_busy => NLW_U0_rstb_busy_UNCONNECTED,
      s_aclk => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arready => NLW_U0_s_axi_arready_UNCONNECTED,
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awready => NLW_U0_s_axi_awready_UNCONNECTED,
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_U0_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => NLW_U0_s_axi_bvalid_UNCONNECTED,
      s_axi_dbiterr => NLW_U0_s_axi_dbiterr_UNCONNECTED,
      s_axi_injectdbiterr => '0',
      s_axi_injectsbiterr => '0',
      s_axi_rdaddrecc(31 downto 0) => NLW_U0_s_axi_rdaddrecc_UNCONNECTED(31 downto 0),
      s_axi_rdata(31 downto 0) => NLW_U0_s_axi_rdata_UNCONNECTED(31 downto 0),
      s_axi_rid(3 downto 0) => NLW_U0_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_U0_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => NLW_U0_s_axi_rvalid_UNCONNECTED,
      s_axi_sbiterr => NLW_U0_s_axi_sbiterr_UNCONNECTED,
      s_axi_wdata(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_U0_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(0) => '0',
      s_axi_wvalid => '0',
      sbiterr => NLW_U0_sbiterr_UNCONNECTED,
      shutdown => '0',
      sleep => '0',
      wea(0) => '0',
      web(0) => '0'
    );
end STRUCTURE;
