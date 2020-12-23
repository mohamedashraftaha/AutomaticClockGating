`timescale 1ns / 1ps
module test_1bit_2reg(


input d_in, // Data input
input clk, // clock input
input en,
input en2,
output reg d_out // output Q


);

always @(posedge clk)
begin
if(en)
d_out<= d_in;

end

always@(posedge clk)
begin
if(en2)
d_out<= d_in;
end

endmodule

