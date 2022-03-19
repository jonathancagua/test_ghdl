from os import system

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sum1b.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sum1b_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sum1b.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sum1b_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -e sum1b_tb")

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -r sum1b_tb --stop-time=2000ns --vcd=resultados.vcd")
system("C:/gtkwave/bin/gtkwave resultados.vcd")