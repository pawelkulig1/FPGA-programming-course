NAME = code
TIME = 200
ghdlmake:
	ghdl -a --ieee=synopsys $(NAME).vhdl
	ghdl -a --ieee=synopsys $(NAME)_tb.vhdl
	ghdl -e --ieee=synopsys $(NAME)
	ghdl -e --ieee=synopsys $(NAME)_tb
	ghdl -r $(NAME)_tb --stop-time=$(TIME)ns --vcd=w.vcd
	gtkwave w.vcd
