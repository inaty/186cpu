-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/sim/design_1.v" \
  "../../../bd/design_1/ip/design_1_f_core_all_0_0/sim/design_1_f_core_all_0_0.v" \
  "../../../bd/design_1/ip/design_1_f_core_0_0/sim/design_1_f_core_0_0.v" \
  "../../../bd/design_1/ip/design_1_io_0_0/sim/design_1_io_0_0.v" \
-endlib
-makelib ies_lib/blk_mem_gen_v8_4_1 \
  "../../../../project_3.srcs/sources_1/bd/design_1/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_1_0/sim/design_1_blk_mem_gen_1_0.v" \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_2_0/sim/design_1_blk_mem_gen_2_0.v" \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_3_0/sim/design_1_blk_mem_gen_3_0.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

