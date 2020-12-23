`timescale 1ns / 1ps
module test_1bit_8reg(


input d_in, // Data input
input clk, // clock input
input en,
input en2,
input en3,
input en4,en5, en6,en7,en8,
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
if(en4)
d_out<= d_in;
end

endmodule

