`timescale 1ns / 1ps
module patterntest_1bit
(
input  D_in, // Data input
input clk, // clock input
input en,
input A,
input B,
input S,
output out,
output reg D_out // output Q
); 

integer i;

assign out = S ? A : B ;
always @(posedge clk)
begin
if(en) begin
	D_out<= D_in;

end
end
endmodule
