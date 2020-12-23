`timescale 1ns / 1ps
module test_4bits_2reg(
input [3:0] d_in, // Data input
input clk, // clock input
input en,
input en2,
output reg [3:0] d_out // output Q
);
integer i;
always @(posedge clk)
begin
if(en)

for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];


end

always@(posedge clk)
begin
if(en2)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

endmodule

