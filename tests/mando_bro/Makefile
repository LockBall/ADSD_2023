
GHDL=ghdl
FLAGS="--std=93"

all:
	@$(GHDL) -a $(FLAGS) tb_mando_bro.vhd
	@$(GHDL) -e $(FLAGS) tb_mando_bro
	@$(GHDL) -r $(FLAGS) tb_mando_bro --stop-time=1us
