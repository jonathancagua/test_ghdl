from os import system

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a neg.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a neg_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s neg.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s neg_tb.vhd")

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -e neg_tb")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -r neg_tb --stop-time=1000ns --vcd=resultados.vcd")
system("C:/gtkwave/bin/gtkwave resultados.vcd")