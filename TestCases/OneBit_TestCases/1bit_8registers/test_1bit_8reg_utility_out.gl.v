

module test_1bit_8reg
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
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  input clk;
  input d_in;
  output d_out;
  input en;
  input en2;
  input en3;
  input en4;
  input en5;
  input en6;
  input en7;
  input en8;

  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__0
  (
    .GCLK(cg_out0),
    .GATE(en8),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__1
  (
    .GCLK(cg_out1),
    .GATE(en5),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__2
  (
    .GCLK(cg_out2),
    .GATE(en4),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__3
  (
    .GCLK(cg_out3),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__4
  (
    .GCLK(cg_out4),
    .GATE(en3),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__5
  (
    .GCLK(cg_out5),
    .GATE(en2),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__6
  (
    .GCLK(cg_out6),
    .GATE(en6),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__7
  (
    .GCLK(cg_out7),
    .GATE(en7),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _16_
  (
    .CLK(cg_out0),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _17_
  (
    .CLK(cg_out1),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _18_
  (
    .CLK(cg_out2),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _19_
  (
    .CLK(cg_out3),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _20_
  (
    .CLK(cg_out4),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _21_
  (
    .CLK(cg_out5),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _22_
  (
    .CLK(cg_out6),
    .D(d_in),
    .Q(d_out)
  );


  sky130_fd_sc_hd__dfxtp_1
  _23_
  (
    .CLK(cg_out7),
    .D(d_in),
    .Q(d_out)
  );


endmodule

