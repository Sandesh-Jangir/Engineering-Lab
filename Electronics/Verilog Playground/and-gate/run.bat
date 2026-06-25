iverilog -o sim *.v
vvp sim
gtkwave wave.vcd