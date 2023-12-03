transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/db {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/db/pll_altpll.v}
vlib vga
vmap vga vga
vcom -93 -work vga {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/vga_data.vhd}
vcom -93 -work vga {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/de10_vga.vhd}
vlib ads
vmap ads ads
vcom -93 -work ads {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/ads_fixed.vhd}
vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/pll.vhd}
vcom -93 -work vga {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/vga_fsm.vhd}
vcom -93 -work ads {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/ads_complex.vhd}
vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/mandelbrot.vhd}
vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/pipeline_stage_package.vhd}
vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/pipeline.vhd}
vcom -93 -work work {C:/FPGA/2023/from_git/ADSD_2023/projects/2_3_proj/final/pipeline_stage.vhd}

