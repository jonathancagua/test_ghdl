from os import system

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sum1b.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sum1b.vhd")

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sum4b.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sum4b_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sum4b.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sum4b_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -e sum4b_tb")

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -r sum4b_tb --stop-time=2000ns --vcd=resultados.vcd")
system("C:/gtkwave/bin/gtkwave resultados.vcd")