yosys -import

#!/usr/bin/tclsh


#read design
read_verilog test_4bits_16reg.v

#generic synthesis
synth -top test_4bits_16reg

# flatten the gate level netlist 
flatten; opt

#mapping to sky130 SCL
dfflibmap -liberty /pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
abc -D 1250 -liberty /pdks/sky130A/libs.ref/sky130_fd_sc_hd/lib/sky130_fd_sc_hd__tt_025C_1v80.lib 
clean

# write synthesized design
write_verilog -noattr -noexpr test_4bits_16reg.gl.v

