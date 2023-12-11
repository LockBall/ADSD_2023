transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlib seven_seg_driver
vmap seven_seg_driver seven_seg_driver
vcom -93 -work seven_seg_driver {C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg_driver/seven_seg_driver_pkg.vhd}
vcom -93 -work seven_seg_driver {C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg_driver/seven_seg_driver.vhd}

vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/seven_seg_driver/seven_seg_driver_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -L seven_seg_driver -voptargs="+acc"  seven_seg_driver_tb

add wave *
view structure
view signals
run -all
