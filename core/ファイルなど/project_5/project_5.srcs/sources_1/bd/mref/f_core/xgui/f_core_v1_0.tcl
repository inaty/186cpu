# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IADDLEN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ILENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "INUM" -parent ${Page_0}


}

proc update_PARAM_VALUE.IADDLEN { PARAM_VALUE.IADDLEN } {
	# Procedure called to update IADDLEN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IADDLEN { PARAM_VALUE.IADDLEN } {
	# Procedure called to validate IADDLEN
	return true
}

proc update_PARAM_VALUE.ILENGTH { PARAM_VALUE.ILENGTH } {
	# Procedure called to update ILENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ILENGTH { PARAM_VALUE.ILENGTH } {
	# Procedure called to validate ILENGTH
	return true
}

proc update_PARAM_VALUE.INUM { PARAM_VALUE.INUM } {
	# Procedure called to update INUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.INUM { PARAM_VALUE.INUM } {
	# Procedure called to validate INUM
	return true
}


proc update_MODELPARAM_VALUE.ILENGTH { MODELPARAM_VALUE.ILENGTH PARAM_VALUE.ILENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ILENGTH}] ${MODELPARAM_VALUE.ILENGTH}
}

proc update_MODELPARAM_VALUE.INUM { MODELPARAM_VALUE.INUM PARAM_VALUE.INUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.INUM}] ${MODELPARAM_VALUE.INUM}
}

proc update_MODELPARAM_VALUE.IADDLEN { MODELPARAM_VALUE.IADDLEN PARAM_VALUE.IADDLEN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IADDLEN}] ${MODELPARAM_VALUE.IADDLEN}
}

