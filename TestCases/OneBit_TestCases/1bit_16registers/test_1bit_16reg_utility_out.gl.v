

module test_1bit_16reg
(
  d_in,
  clk,
  en,
  en2,
  en3,
  en4,
  en5,
  en6,
  en7,
  en8,
  en9,
  en10,
  en11,
  en12,
  en13,
  en14,
  en15,
  en16,
  d_out
);

  wire cg_out0;
  wire cg_out1;
  wire cg_out2;
  wire cg_out3;
  wire cg_out4;
  wire cg_out5;
  wire cg_out6;
  wire cg_out7;
  wire cg_out8;
  wire cg_out9;
  wire cg_out10;
  wire cg_out11;
  wire cg_out12;
  wire cg_out13;
  wire cg_out14;
  wire cg_out15;
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  input clk;
  input d_in;
  output d_out;
  input en;
  input en10;
  input en11;
  input en12;
  input en13;
  input en14;
  input en15;
  input en16;
  input en2;
  input en3;
  input en4;
  input en5;
  input en6;
  input en7;
  input en8;
  input en9;

  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en16),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out1),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out2),
    .GATE(en2),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out3),
    .GATE(en4),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out4),
    .GATE(en5),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out5),
    .GATE(en3),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out6),
    .GATE(en7),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out7),
    .GATE(en8),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out8),
    .GATE(en6),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out9),
    .GATE(en10),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out10),
    .GATE(en11),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out11),
    .GATE(en9),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out12),
    .GATE(en13),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out13),
    .GATE(en14),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out14),
    .GATE(en15),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out15),
    .GATE(en12),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _32_
  (
    .CLK(cg_out0),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _33_
  (
    .CLK(cg_out1),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _34_
  (
    .CLK(cg_out2),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _35_
  (
    .CLK(cg_out3),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _36_
  (
    .CLK(cg_out4),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _37_
  (
    .CLK(cg_out5),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _38_
  (
    .CLK(cg_out6),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _39_
  (
    .CLK(cg_out7),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _40_
  (
    .CLK(cg_out8),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _41_
  (
    .CLK(cg_out9),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _42_
  (
    .CLK(cg_out10),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _43_
  (
    .CLK(cg_out11),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _44_
  (
    .CLK(cg_out12),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _45_
  (
    .CLK(cg_out13),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _46_
  (
    .CLK(cg_out14),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _47_
  (
    .CLK(cg_out15),
    .D(d_in),
    .Q(d_out)
  );


endmodule

