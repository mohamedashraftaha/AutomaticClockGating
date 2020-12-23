`define FUNCTIONAL
`define UNIT_DELAY #1
`include "sky130_fd_sc_hd.v"
`include "primitives.v"
module testbench_after();
reg  D_in;
wire D_out;
reg clk;
reg en;


test_1bit_after x(D_in,clk,en,D_out);
initial begin
	$dumpfile("testbench_after.vcd");	// vcd dump file
	$dumpvars;// dump everything
end
	



always #5 clk = !clk;

initial begin

clk =0; 
#10;
@(posedge clk);
D_in = 0;
en = 1; 
$display("%d", D_out);

#10;
@(posedge clk);
D_in = 1;
en = 0;

#10;
@(posedge clk); 
D_in =1;
en = 1;


end


endmodule 


