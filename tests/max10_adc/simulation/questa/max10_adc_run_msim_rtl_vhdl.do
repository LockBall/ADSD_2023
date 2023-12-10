transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/max10_adc/max10_adc.vhd}

vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/max10_adc/tb_max10_adc.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_max10_adc

add wave *
view structure
view signals
run 400 ns
