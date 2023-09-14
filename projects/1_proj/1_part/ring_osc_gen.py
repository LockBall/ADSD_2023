# https://docs.python.org/3/library/random.html

import random
from datetime import date
import os

def rand_it(base_val, pct):
    upper_lim = base_val + (pct / 100 * base_val)
    lower_lim = base_val - (pct / 100 * base_val)
    randeded = random.uniform(upper_lim, lower_lim)
    return randeded

today = date.today()

# L & W variance = ± 15 %, oxide thickness variance = ± 10 %
# 'mfr process' L & W σ = 0.065 (6.5 %), oxide layer σ = 0.05x (5 %)
# PMOS
tplv_base=['tplv', 0.065, 'u' , 15] # name, base_val, unit (micro, nano), %
inv_tpwv_base=['tpwv', 218, 'n', 15]
nand_tpwv_base=['tpwv', 130, 'n', 15]
tpotv_base=['tpotv', 1.95, 'n', 10]

#NMOS
tnln_base=['tnln', 0.065, 'u', 15]
tnwn_base=['tnwn', 130, 'n', 15]
tnotv_base=['tnotv', 1.85, 'n', 10]

component_count = 13 # NAND & inverters total, nominal = 13, must be ODD, greater number needs more time to settle, find tran_time
nand_exist = False
ring_osc_subckt_count = 8 # makes the number

current_directory = os.getcwd()
print("path is " + current_directory)

for count in range(ring_osc_subckt_count):

    file_name = '/ring_osc_' + str(count) + '.cir'
    file_path_name = current_directory + file_name # use forward slashes !  'C:/FPGA/2023/ngspice/'
    ring_osc_cir_file = open(file_path_name, mode = 'w')

    intro = ['* Generator created 01 Oct 2022 by John Lutz. Editeded 02 Oct 2022\n',
    '* This file generated on: ', today.strftime("%d %b %Y"),
    '\n\n'
    ]

    # osc_subckt_includes = ['.include nand.cir\n',
    #             '.include inverter.cir\n',
    #             '\n'
    # ]

    osc_subckt = ['.SUBCKT ring_osc_' + str(count) + ' in0 out' + str(component_count-1) + ' vdd 0\n\n'] # subckt declaration


    osc_subckt_ini_sections = [intro, osc_subckt] # in middle: osc_subckt_includes
    for section in osc_subckt_ini_sections: # write initial sections to file
        for line in section:
            ring_osc_cir_file.write(line)


    for x_num in range(component_count): # lets make those components, NAND & inverter
        if x_num == 0:
            comp_in = ' in' + str(x_num)
        else:
            comp_in = ' out' + str(x_num-1) 

        comp_out = ' out' + str(x_num)

        if nand_exist == False:
            ring_osc_cir_file.write('    x' + str(x_num) + comp_in + ' out' + str(component_count-1) + comp_out + ' vdd 0 nand params:\n')
            tpwv = nand_tpwv_base
            nand_exist = True
        else:
            ring_osc_cir_file.write('    x' + str(x_num) + comp_in + comp_out + ' vdd 0 inverter params:\n')
            tpwv = inv_tpwv_base


        params_list = [tplv_base, tpotv_base, tpwv, tnln_base, tnwn_base, tnotv_base]
        current_line_items = 0
        max_line_items = 3
        line_count = 0
        for param in params_list: #param(name, base_val, unit, %)

            if current_line_items == 0:
                ring_osc_cir_file.write('    + ')

            randed_value = rand_it(param[1] , param[3]) # randit(base_val, %)
            params_line = (param[0] + '=' + str(randed_value) + param[2] + ' ')
            ring_osc_cir_file.write(params_line)
            current_line_items = current_line_items + 1

            if current_line_items == max_line_items:
                ring_osc_cir_file.write('\n')
                line_count = line_count + 1
                current_line_items = 0

            if line_count == 2:
                ring_osc_cir_file.write('\n')
                line_count = 0
    # ******** END for x_num in range(component_count): ********

    ring_osc_cir_file.write('.ENDS ring_osc')

    end = '.end\n'
    ring_osc_cir_file.write(end)
    ring_osc_cir_file.close()
# ******** END for count in ring_osc_subckt_count: ********


# ******** BEGIN generate run_8ring_osc.cir ********
temp = '27C' # nominal 27, alts: 54, 13.5
vdd = '1.2V' # nominal 1.2, alts: 1.5, 1.0
tran_time = '0.5ns' # transient analysis duration
filename = current_directory + '/run_ring_osc.cir' # 'C:/FPGA/2023/ngspice/
run_ring_osc_file = open(filename, mode = 'w')

supply = ['Vsup vdd 0 dc 1.2V\n\n']

#input_signals = [\nVin in0 0 pulse (0 1 1ns 0.1ns 0.1ns 4ns 8ns)\n\n'] # periodic pulse
input_signals = ['\n    Vin in0 0 pwl(0ns 0.00, 0.04ns 0) (0.05ns 1, 0.15ns 1) (0.16ns 0)\n\n']
# pIeceWiseLinear

plot_out = ''
for count in range(ring_osc_subckt_count):
    plot_out = (plot_out + 'v(out' + str(count) + '_' + str(component_count-1) + ') ')
    # print(plot_out)

control = [ '    .control\n',
            '        option temp=' + temp + '\n',
            '        tran 0.1ns ' + tran_time + '\n',
            '        run\n',
            '        plot v(in0) ' + plot_out + '\n',
            '    .endc\n'
]

# print(plot_out)

ring_osc_subckt_includes = ['    .include nand.cir\n',
                            '    .include inverter.cir\n',
                            '\n'
]

run_ring_osc_ini_sections = [intro, supply, ring_osc_subckt_includes]

for section in run_ring_osc_ini_sections:
    for line in section:
        run_ring_osc_file.write(line)


for count in range(ring_osc_subckt_count): # make the subckt includes
    include_line = '    .include ' + 'ring_osc_' + str(count) + '.cir\n'
    run_ring_osc_file.write(include_line)

run_ring_osc_file.write('\n')

for count in range(ring_osc_subckt_count): # instantiate an instance of each osc subckt.
    osc_instance_line = '    x' + str(count) + ' in0 out' + str(count) + '_' + str(component_count-1) + ' vdd 0 ring_osc_' + str(count) + '\n'
    run_ring_osc_file.write(osc_instance_line)


run_ring_osc_fin_sections = [input_signals, control, end]

for section in run_ring_osc_fin_sections:
    for line in section:
        run_ring_osc_file.write(line)

run_ring_osc_file.close()