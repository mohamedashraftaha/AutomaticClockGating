`timescale 1ns / 1ps
module test_1bit_16reg(
input d_in, // Data input
input clk, // clock input
input en, en2,en3,en4,en5,en6,en7,en8,en9,en10,en11,en12,en13,en14,en15, en16,

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

always@(posedge clk)
begin
if(en3)
d_out<= d_in;
end

always@(posedge clk)
begin
if(en4)
d_out<= d_in;
end

always@(posedge clk)
begin
if(en5)
d_out<= d_in;
end

always@(posedge clk)
begin
if(en6)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en7)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en8)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en9)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en10)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en11)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en12)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en13)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en14)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en15)
d_out<= d_in;
end
always@(posedge clk)
begin
if(en16)
d_out<= d_in;
end
endmodule

