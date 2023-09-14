# 1_proj_ADS
EECE 5500 Advanced Digital Systems Design (FPGA)

ring_osc_gen.py : ring oscillator generator is the python file that generates ngspice files

it generates the following:
  a variable number of ring oscillators .cir files: ring_osc_x.cir
  a run ring oscillator file: run_ring_osc_file
  
it requires the following
  nand.cir
  inverter.cir

it uses ngspice 41

double click ngspice.exe use the command:
  source <run_ring_osc_file>
  should overwrite existing generated files
