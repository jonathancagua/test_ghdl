from os import system

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sum1b.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sum1b.vhd")

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sumnb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a sumnb_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sumnb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s sumnb_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -e sumnb_tb")

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -r sumnb_tb --stop-time=2000ns --vcd=resultados.vcd")
system("C:/gtkwave/bin/gtkwave resultados.vcd")