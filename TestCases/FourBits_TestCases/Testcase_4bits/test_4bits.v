`timescale 1ns / 1ps
module test_4bits
(
input [3:0] D_in, // Data input
input clk, // clock input
input en,
output reg [3:0] D_out // output Q
); 

integer i;
always @(posedge clk)
begin
if(en) begin

for (i=0; i<4; i=i+1)
	D_out[i]<= D_in[i];

end
end
endmodule

