//`include "sky130_fd_sc_hd.v"
//`include "primitives.v"
module testbench_before();
reg  D_in;
wire D_out;
reg clk;
reg en;


	initial begin
	    $dumpfile("testbench_before.vcd");	// vcd dump file
	    $dumpvars;	// dump everything
	end

test_1bit_before x(D_in,clk,en,D_out);
//(d_in, clk, en, d_out, en1);

parameter PERIOD = 10;

always #5 clk = !clk;
initial begin

clk =0; 
#10;
@(posedge clk);
D_in = 0;
en = 1; 


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