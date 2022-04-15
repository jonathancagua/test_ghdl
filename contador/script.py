from os import system

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a led_ctl.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -a led_ctl_tb.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s led_ctl.vhd")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -s led_ctl_tb.vhd")

system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -e led_ctl_tb")
system("C:/ghdl/ghdl-0.31-mcode-win32/bin/ghdl -r led_ctl_tb --stop-time=1000ns --vcd=resultados.vcd")
# 
system("C:/gtkwave/bin/gtkwave resultados.vcd")