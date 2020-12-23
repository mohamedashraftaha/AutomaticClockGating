

module test_1bit_2reg
(
  d_in,
  clk,
  en,
  en2,
  d_out
);

  wire cg_out0;
  wire cg_out1;
  wire _0_;
  wire _1_;
  input clk;
  input d_in;
  output d_out;
  input en;
  input en2;

  customize_dlclkp_1
  __clock_gate_cell__0
  (
    .GCLK(cg_out0),
    .GATE(en2),
    .CLK(clk)
  );


  customize_dlclkp_1
  __clock_gate_cell__1
  (
    .GCLK(cg_out1),
    .GATE(en),
    .CLK(clk)
  );


  customize_dfxtp_1
  __Flip_Flop__
  (
    .CLK(cg_out),
    .D(d_in),
    .Q(d_out)
  );


  customize_dfxtp_1
  __Flip_Flop__
  (
    .CLK(cg_out),
    .D(d_in),
    .Q(d_out)
  );


endmodule

