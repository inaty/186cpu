
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
# f_core, f_core_all, io

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

  # Create ports
  set op [ create_bd_port -dir O op ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Coe_File {../../../../../../../inst.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Use_Byte_Write_Enable {false} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_1 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_1

  # Create instance: blk_mem_gen_2, and set properties
  set blk_mem_gen_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_2 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.EN_SLEEP_PIN {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_2

  # Create instance: blk_mem_gen_3, and set properties
  set blk_mem_gen_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_3 ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {true} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
 ] $blk_mem_gen_3

  # Create instance: f_core_0, and set properties
  set block_name f_core
  set block_cell_name f_core_0
  if { [catch {set f_core_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $f_core_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: f_core_all_0, and set properties
  set block_name f_core_all
  set block_cell_name f_core_all_0
  if { [catch {set f_core_all_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $f_core_all_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: io_0, and set properties
  set block_name io
  set block_cell_name io_0
  if { [catch {set io_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $io_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins f_core_0/instout]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins blk_mem_gen_1/douta] [get_bd_pins f_core_0/r_data_a]
  connect_bd_net -net blk_mem_gen_1_doutb [get_bd_pins blk_mem_gen_1/doutb] [get_bd_pins f_core_0/r_data_b]
  connect_bd_net -net blk_mem_gen_2_doutb [get_bd_pins blk_mem_gen_2/doutb] [get_bd_pins f_core_0/indoutb]
  connect_bd_net -net blk_mem_gen_3_doutb [get_bd_pins blk_mem_gen_3/doutb] [get_bd_pins io_0/outdoutb]
  connect_bd_net -net f_core_0_coreread [get_bd_pins f_core_0/coreread] [get_bd_pins io_0/coreread]
  connect_bd_net -net f_core_0_corewrite [get_bd_pins f_core_0/corewrite] [get_bd_pins io_0/corewrite]
  connect_bd_net -net f_core_0_en_ab [get_bd_pins blk_mem_gen_1/ena] [get_bd_pins blk_mem_gen_1/enb] [get_bd_pins f_core_0/en_ab]
  connect_bd_net -net f_core_0_en_inst [get_bd_pins blk_mem_gen_0/ena] [get_bd_pins f_core_0/en_inst]
  connect_bd_net -net f_core_0_iaddr [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins f_core_0/iaddr]
  connect_bd_net -net f_core_0_memaddr_a [get_bd_pins blk_mem_gen_1/addra] [get_bd_pins f_core_0/memaddr_a]
  connect_bd_net -net f_core_0_memaddr_b [get_bd_pins blk_mem_gen_1/addrb] [get_bd_pins f_core_0/memaddr_b]
  connect_bd_net -net f_core_0_outdina [get_bd_pins blk_mem_gen_3/dina] [get_bd_pins f_core_0/outdina]
  connect_bd_net -net f_core_0_outwe [get_bd_pins blk_mem_gen_3/wea] [get_bd_pins f_core_0/outwe]
  connect_bd_net -net f_core_0_w_data_a [get_bd_pins blk_mem_gen_1/dina] [get_bd_pins f_core_0/w_data_a]
  connect_bd_net -net f_core_0_w_data_b [get_bd_pins blk_mem_gen_1/dinb] [get_bd_pins f_core_0/w_data_b]
  connect_bd_net -net f_core_0_wenable_a [get_bd_pins blk_mem_gen_1/wea] [get_bd_pins f_core_0/wenable_a]
  connect_bd_net -net f_core_0_wenable_b [get_bd_pins blk_mem_gen_1/web] [get_bd_pins f_core_0/wenable_b]
  connect_bd_net -net f_core_all_0_clk [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins blk_mem_gen_1/clkb] [get_bd_pins blk_mem_gen_2/clka] [get_bd_pins blk_mem_gen_2/clkb] [get_bd_pins blk_mem_gen_3/clka] [get_bd_pins blk_mem_gen_3/clkb] [get_bd_pins f_core_0/clk] [get_bd_pins f_core_all_0/clk] [get_bd_pins io_0/clk]
  connect_bd_net -net f_core_all_0_rst [get_bd_pins blk_mem_gen_0/rsta] [get_bd_pins blk_mem_gen_1/rsta] [get_bd_pins blk_mem_gen_1/rstb] [get_bd_pins blk_mem_gen_2/rsta] [get_bd_pins blk_mem_gen_2/rstb] [get_bd_pins blk_mem_gen_3/rsta] [get_bd_pins blk_mem_gen_3/rstb] [get_bd_pins f_core_0/rst] [get_bd_pins f_core_all_0/rst] [get_bd_pins io_0/rst]
  connect_bd_net -net f_core_all_0_trs [get_bd_pins f_core_all_0/trs] [get_bd_pins io_0/rxd]
  connect_bd_net -net io_0_corereadok [get_bd_pins f_core_0/corereadok] [get_bd_pins io_0/corereadok]
  connect_bd_net -net io_0_corereadwhere [get_bd_pins f_core_0/corereadwhere] [get_bd_pins io_0/corereadwhere]
  connect_bd_net -net io_0_corewriteok [get_bd_pins f_core_0/corewriteok] [get_bd_pins io_0/corewriteok]
  connect_bd_net -net io_0_corewritewhere [get_bd_pins f_core_0/corewritewhere] [get_bd_pins io_0/corewritewhere]
  connect_bd_net -net io_0_enio [get_bd_pins blk_mem_gen_2/ena] [get_bd_pins blk_mem_gen_2/enb] [get_bd_pins blk_mem_gen_3/ena] [get_bd_pins blk_mem_gen_3/enb] [get_bd_pins io_0/enio]
  connect_bd_net -net io_0_inaddra [get_bd_pins blk_mem_gen_2/addra] [get_bd_pins io_0/inaddra]
  connect_bd_net -net io_0_inaddrb [get_bd_pins blk_mem_gen_2/addrb] [get_bd_pins io_0/inaddrb]
  connect_bd_net -net io_0_indina [get_bd_pins blk_mem_gen_2/dina] [get_bd_pins io_0/indina]
  connect_bd_net -net io_0_inwe [get_bd_pins blk_mem_gen_2/wea] [get_bd_pins io_0/inwe]
  connect_bd_net -net io_0_outaddra [get_bd_pins blk_mem_gen_3/addra] [get_bd_pins io_0/outaddra]
  connect_bd_net -net io_0_outaddrb [get_bd_pins blk_mem_gen_3/addrb] [get_bd_pins io_0/outaddrb]
  connect_bd_net -net io_0_txd [get_bd_ports op] [get_bd_pins io_0/txd]
  connect_bd_net -net io_0_zerowe [get_bd_pins blk_mem_gen_2/web] [get_bd_pins blk_mem_gen_3/web] [get_bd_pins io_0/zerowe]

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


