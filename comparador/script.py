from os import system
vhdl_file = 'comp'
vhdl_file_tb = vhdl_file+'_tb'
line_vhdl = vhdl_file+'.vhd ' + vhdl_file_tb+'.vhd'

system("ghdl -a "+line_vhdl)
system("ghdl -s "+line_vhdl)
system("ghdl -e "+vhdl_file_tb)
system("ghdl -r "+vhdl_file_tb+" --vcd="+ vhdl_file_tb+".vcd --stop-time=1000ns")
system("open /Applications/gtkwave.app "+ vhdl_file_tb+".vcd")