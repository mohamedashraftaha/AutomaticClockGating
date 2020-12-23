`timescale 1ns / 1ps
module test_4bits_8reg(


input [3:0] d_in, // Data input
input clk, // clock input
input en,
input en2,en3,en4,en5,en6,en7,en8,
output reg [3:0]d_out // output Q


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
always@(posedge clk)
begin
if(en3)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end
always@(posedge clk)
begin
if(en4)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end
always@(posedge clk)
begin
if(en5)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end
always@(posedge clk)
begin
if(en6)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end
always@(posedge clk)
begin
if(en7)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end
always@(posedge clk)
begin
if(en8)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

endmodule

