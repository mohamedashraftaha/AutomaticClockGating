`timescale 1ns / 1ps
module test_1bit(
input d_in, // Data input
input clk, // clock input
input en,
output reg d_out// output Q
);
always @(posedge clk)
begin
if(en)
d_out<= d_in;
end
endmodule
