set_global_assignment -entity "soc_calc" -library "lib_soc_calc" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "soc_calc" -library "lib_soc_calc" -name IP_TOOL_VERSION "22.1"
set_global_assignment -entity "soc_calc" -library "lib_soc_calc" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_soc_calc" -name SPD_FILE [file join $::quartus(sip_path) "../soc_calc.spd"]
set_global_assignment -library "lib_soc_calc" -name MISC_FILE [file join $::quartus(sip_path) "../../soc_calc.qsys"]

set_global_assignment -library "lib_soc_calc" -name MISC_FILE [file join $::quartus(sip_path) "soc_calc.vhd"]
