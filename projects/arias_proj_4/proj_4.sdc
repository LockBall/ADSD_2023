## Generated SDC file "proj_4.out.sdc"

## Copyright (C) 2020  Intel Corporation. All rights reserved.
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
## VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

## DATE    "Sat Dec 16 12:17:11 2023"

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

create_clock -name {clock_10} -period 100.000 -waveform { 0.000 50.000 } [get_ports {clock_10}]
create_clock -name {clock_50} -period 1.000 -waveform { 0.000 0.500 } [get_ports {clock_50}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {clock_10_inst|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 1 -master_clock {clock_10} [get_pins {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clock_50}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clock_50}] -hold 0.090  
set_clock_uncertainty -rise_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clock_50}] -setup 0.110  
set_clock_uncertainty -rise_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clock_50}] -hold 0.090  
set_clock_uncertainty -fall_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clock_50}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {clock_50}] -hold 0.090  
set_clock_uncertainty -fall_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clock_50}] -setup 0.110  
set_clock_uncertainty -fall_from [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {clock_50}] -hold 0.090  
set_clock_uncertainty -rise_from [get_clocks {clock_50}] -rise_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {clock_50}] -rise_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {clock_50}] -fall_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.090  
set_clock_uncertainty -rise_from [get_clocks {clock_50}] -fall_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -rise_from [get_clocks {clock_50}] -rise_to [get_clocks {clock_50}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {clock_50}] -fall_to [get_clocks {clock_50}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock_50}] -rise_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {clock_50}] -rise_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {clock_50}] -fall_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -setup 0.090  
set_clock_uncertainty -fall_from [get_clocks {clock_50}] -fall_to [get_clocks {clock_10_inst|altpll_component|auto_generated|pll1|clk[0]}] -hold 0.110  
set_clock_uncertainty -fall_from [get_clocks {clock_50}] -rise_to [get_clocks {clock_50}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {clock_50}] -fall_to [get_clocks {clock_50}]  0.020  


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

