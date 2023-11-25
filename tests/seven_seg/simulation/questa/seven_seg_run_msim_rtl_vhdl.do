transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg/db {C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg/db/clock_10_altpll.v}
vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg/clock_10.vhd}
vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg/seven_seg.vhd}

vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg/seven_seg_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  seven_seg_tb

add wave *
view structure
view signals
run 400 ns
