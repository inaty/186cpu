
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2017.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# nino_core

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku040-ffva1156-2-e
   set_property BOARD_PART xilinx.com:kcu105:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set default_sysclk_300 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 default_sysclk_300 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {300000000} \
   ] $default_sysclk_300
  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]

  # Create ports
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {460800} \
   CONFIG.UARTLITE_BOARD_INTERFACE {rs232_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {8} \
   CONFIG.Coe_File {../../../../../../../minrt.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Operating_Mode_A {READ_FIRST} \
   CONFIG.Operating_Mode_B {READ_FIRST} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.RD_ADDR_CHNG_A {false} \
   CONFIG.RD_ADDR_CHNG_B {false} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {411648} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.Byte_Size {8} \
   CONFIG.Coe_File {../../../../../../../minrt.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {true} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Enable_B {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Dual_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {0} \
   CONFIG.RD_ADDR_CHNG_A {false} \
   CONFIG.RD_ADDR_CHNG_B {false} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {14336} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:5.4 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKOUT1_JITTER {113.676} \
   CONFIG.CLKOUT1_PHASE_ERROR {98.575} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {200.000} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {default_sysclk_300} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {5.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {3} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $clk_wiz_0

  # Create instance: nino_core_0, and set properties
  set block_name nino_core
  set block_cell_name nino_core_0
  if { [catch {set nino_core_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $nino_core_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: rst_clk_wiz_0_100M, and set properties
  set rst_clk_wiz_0_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_0_100M ]

  # Create interface connections
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net default_sysclk_300_1 [get_bd_intf_ports default_sysclk_300] [get_bd_intf_pins clk_wiz_0/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net axi_uartlite_0_s_axi_arready [get_bd_pins axi_uartlite_0/s_axi_arready] [get_bd_pins nino_core_0/io_arready]
  connect_bd_net -net axi_uartlite_0_s_axi_awready [get_bd_pins axi_uartlite_0/s_axi_awready] [get_bd_pins nino_core_0/io_awready]
  connect_bd_net -net axi_uartlite_0_s_axi_bresp [get_bd_pins axi_uartlite_0/s_axi_bresp] [get_bd_pins nino_core_0/io_bresp]
  connect_bd_net -net axi_uartlite_0_s_axi_bvalid [get_bd_pins axi_uartlite_0/s_axi_bvalid] [get_bd_pins nino_core_0/io_bvalid]
  connect_bd_net -net axi_uartlite_0_s_axi_rdata [get_bd_pins axi_uartlite_0/s_axi_rdata] [get_bd_pins nino_core_0/io_rdata]
  connect_bd_net -net axi_uartlite_0_s_axi_rresp [get_bd_pins axi_uartlite_0/s_axi_rresp] [get_bd_pins nino_core_0/io_rresp]
  connect_bd_net -net axi_uartlite_0_s_axi_rvalid [get_bd_pins axi_uartlite_0/s_axi_rvalid] [get_bd_pins nino_core_0/io_rvalid]
  connect_bd_net -net axi_uartlite_0_s_axi_wready [get_bd_pins axi_uartlite_0/s_axi_wready] [get_bd_pins nino_core_0/io_wready]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins nino_core_0/r_data_a]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_pins blk_mem_gen_0/doutb] [get_bd_pins nino_core_0/r_data_as]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins blk_mem_gen_1/douta] [get_bd_pins nino_core_0/instoutwire]
  connect_bd_net -net blk_mem_gen_1_doutb [get_bd_pins blk_mem_gen_1/doutb] [get_bd_pins nino_core_0/instoutwires]
  connect_bd_net -net clk_wiz_0_clk_out1 [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_1/clkb] [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins nino_core_0/clk] [get_bd_pins rst_clk_wiz_0_100M/slowest_sync_clk]
  connect_bd_net -net clk_wiz_0_locked [get_bd_pins clk_wiz_0/locked] [get_bd_pins rst_clk_wiz_0_100M/dcm_locked]
  connect_bd_net -net nino_core_0_io_araddr [get_bd_pins axi_uartlite_0/s_axi_araddr] [get_bd_pins nino_core_0/io_araddr]
  connect_bd_net -net nino_core_0_io_arvalid_wire [get_bd_pins axi_uartlite_0/s_axi_arvalid] [get_bd_pins nino_core_0/io_arvalid_wire]
  connect_bd_net -net nino_core_0_io_awaddr_wire [get_bd_pins axi_uartlite_0/s_axi_awaddr] [get_bd_pins nino_core_0/io_awaddr_wire]
  connect_bd_net -net nino_core_0_io_awvalid_wire [get_bd_pins axi_uartlite_0/s_axi_awvalid] [get_bd_pins nino_core_0/io_awvalid_wire]
  connect_bd_net -net nino_core_0_io_bready_wire [get_bd_pins axi_uartlite_0/s_axi_bready] [get_bd_pins nino_core_0/io_bready_wire]
  connect_bd_net -net nino_core_0_io_rready [get_bd_pins axi_uartlite_0/s_axi_rready] [get_bd_pins nino_core_0/io_rready]
  connect_bd_net -net nino_core_0_io_wdata [get_bd_pins axi_uartlite_0/s_axi_wdata] [get_bd_pins nino_core_0/io_wdata]
  connect_bd_net -net nino_core_0_io_wstrb [get_bd_pins axi_uartlite_0/s_axi_wstrb] [get_bd_pins nino_core_0/io_wstrb]
  connect_bd_net -net nino_core_0_io_wvalid_wire [get_bd_pins axi_uartlite_0/s_axi_wvalid] [get_bd_pins nino_core_0/io_wvalid_wire]
  connect_bd_net -net nino_core_0_memaddr_a [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins nino_core_0/memaddr_a]
  connect_bd_net -net nino_core_0_memaddr_as [get_bd_pins blk_mem_gen_0/addrb] [get_bd_pins nino_core_0/memaddr_as]
  connect_bd_net -net nino_core_0_memaddr_b [get_bd_pins blk_mem_gen_1/addra] [get_bd_pins nino_core_0/memaddr_b]
  connect_bd_net -net nino_core_0_memaddr_bs [get_bd_pins blk_mem_gen_1/addrb] [get_bd_pins nino_core_0/memaddr_bs]
  connect_bd_net -net nino_core_0_w_data_a [get_bd_pins blk_mem_gen_0/dina] [get_bd_pins nino_core_0/w_data_a]
  connect_bd_net -net nino_core_0_w_data_as [get_bd_pins blk_mem_gen_0/dinb] [get_bd_pins nino_core_0/w_data_as]
  connect_bd_net -net nino_core_0_wenable_a [get_bd_pins blk_mem_gen_0/wea] [get_bd_pins nino_core_0/wenable_a]
  connect_bd_net -net nino_core_0_wenable_as [get_bd_pins blk_mem_gen_0/web] [get_bd_pins nino_core_0/wenable_as]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_0/reset] [get_bd_pins rst_clk_wiz_0_100M/ext_reset_in]
  connect_bd_net -net rst_clk_wiz_0_100M_peripheral_aresetn [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins nino_core_0/rst] [get_bd_pins rst_clk_wiz_0_100M/peripheral_aresetn]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


