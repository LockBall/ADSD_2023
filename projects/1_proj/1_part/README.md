# ADSD: 1_Proj, 1_part
EECE 5500 Advanced Digital Systems Design (FPGA)

ring_osc_gen.py (ring oscillator generator) is the python file that generates the ngspice files

it generates the following:  
&emsp; a variable number of ring oscillators .cir files: ring_osc_<x>.cir  
&emsp; a run ring oscillator file: run_ring_osc
  
it requires the following  
&emsp; nand.cir  
&emsp; inverter.cir  

it uses ngspice 41 and has been tested as of 13 sep 2023

double click ngspice.exe and use the command:  
&emsp; source <run_ring_osc_file>  
&emsp; should overwrite existing generated files  
