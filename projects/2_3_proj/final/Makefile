
GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) tb_mandelbrot.vhd
	@$(GHDL) -e $(FLAGS) tb_mandelbrot
	@$(GHDL) -r $(FLAGS) tb_mandelbrot --stop-time=1us
