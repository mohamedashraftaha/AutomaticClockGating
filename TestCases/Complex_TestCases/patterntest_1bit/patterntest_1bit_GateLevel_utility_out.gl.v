

module patterntest_1bit
(
  D_in,
  clk,
  en,
  A,
  B,
  S,
  out,
  D_out
);

  wire cg_out0;
  wire _0_;
  input A;
  input B;
  input D_in;
  output D_out;
  input S;
  input clk;
  input en;
  output out;

  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__mux2_1
  _2_
  (
    .A0(B),
    .A1(A),
    .S(S),
    .X(out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _3_
  (
    .CLK(cg_out0),
    .D(D_in),
    .Q(D_out)
  );


endmodule

