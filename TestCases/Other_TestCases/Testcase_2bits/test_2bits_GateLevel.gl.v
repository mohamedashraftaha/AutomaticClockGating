/* Generated by Yosys 0.9 (git sha1 1979e0b) */

module test_2bits(D_in, clk, en, D_out);
  wire [1:0] _0_;
  input [1:0] D_in;
  output [1:0] D_out;
  input clk;
  input en;
  sky130_fd_sc_hd__mux2_1 _1_ (
    .A0(D_out[0]),
    .A1(D_in[0]),
    .S(en),
    .X(_0_[0])
  );
  sky130_fd_sc_hd__mux2_1 _2_ (
    .A0(D_out[1]),
    .A1(D_in[1]),
    .S(en),
    .X(_0_[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _3_ (
    .CLK(clk),
    .D(_0_[0]),
    .Q(D_out[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _4_ (
    .CLK(clk),
    .D(_0_[1]),
    .Q(D_out[1])
  );
endmodule