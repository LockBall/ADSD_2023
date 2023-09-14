transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/LED_blink/LED_blink.vhd}

vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/tests/LED_blink/LED_blink_TB.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  LED_blink_TB

add wave *
view structure
view signals
run 200 ns
