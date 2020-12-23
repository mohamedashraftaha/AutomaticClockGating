`timescale 1ns / 1ps
module test_4bits_16reg(


input [3:0] d_in, // Data input
input clk, // clock input
input en,
input en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13,en14,en15,en16,
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

always@(posedge clk)
begin
if(en9)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

always@(posedge clk)
begin
if(en10)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

always@(posedge clk)
begin
if(en11)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

always@(posedge clk)
begin
if(en12)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

always@(posedge clk)
begin
if(en13)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

always@(posedge clk)
begin
if(en14)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

always@(posedge clk)
begin
if(en15)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

always@(posedge clk)
begin
if(en16)
for (i=0; i<4; i=i+1)
	d_out[i]<= d_in[i];

end

endmodule

