## Generated SDC file "top_level.out.sdc"

## Copyright (C) 2023  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 22.1std.2 Build 922 07/20/2023 SC Lite Edition"

## DATE    "Fri Oct 20 12:05:18 2023"

##
## DEVICE  "10M50DAF484C7G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {pulse} -period 1.000 -waveform { 0.000 0.500 } [get_registers {pulse}]
#create_clock -name {clock} -period 1.000 -waveform { 0.000 0.500 } [get_ports {clock}]
create_clock -name {clock} -period "50MHz" -waveform { 0.000 0.500 } [get_ports {clock}]

#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {pulse}] -rise_to [get_clocks {pulse}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pulse}] -fall_to [get_clocks {pulse}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {pulse}] -rise_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {pulse}] -fall_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pulse}] -rise_to [get_clocks {pulse}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pulse}] -fall_to [get_clocks {pulse}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {pulse}] -rise_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {pulse}] -fall_to [get_clocks {clock}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clock}] -rise_to [get_clocks {pulse}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clock}] -fall_to [get_clocks {pulse}]  0.030  
set_clock_uncertainty -rise_from [get_clocks {clock}] -rise_to [get_clocks {clock}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clock}] -fall_to [get_clocks {clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock}] -rise_to [get_clocks {pulse}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clock}] -fall_to [get_clocks {pulse}]  0.030  
set_clock_uncertainty -fall_from [get_clocks {clock}] -rise_to [get_clocks {clock}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock}] -fall_to [get_clocks {clock}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

