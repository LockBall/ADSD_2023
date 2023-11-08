
GHDL=ghdl
FLAGS="--std=08"

all:
	@$(GHDL) -a $(FLAGS) tb_mando_ppm.vhd
	@$(GHDL) -e $(FLAGS) tb_mando_ppm
	@$(GHDL) -r $(FLAGS) tb_mando_ppm --stop-time=1us
