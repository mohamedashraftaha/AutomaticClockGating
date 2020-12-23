

module test_4bits_8reg
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
  wire [3:0] _00_;
  wire [3:0] _01_;
  wire [3:0] _02_;
  wire [3:0] _03_;
  wire [3:0] _04_;
  wire [3:0] _05_;
  wire [3:0] _06_;
  wire [3:0] _07_;
  input clk;
  input [3:0] d_in;
  output [3:0] d_out;
  input en;
  input en2;
  input en3;
  input en4;
  input en5;
  input en6;
  input en7;
  input en8;

  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en8),
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
    .GATE(en3),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out4),
    .GATE(en4),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out5),
    .GATE(en5),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out6),
    .GATE(en6),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out7),
    .GATE(en7),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _40_
  (
    .CLK(cg_out0),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _41_
  (
    .CLK(cg_out0),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _42_
  (
    .CLK(cg_out0),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _43_
  (
    .CLK(cg_out1),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _44_
  (
    .CLK(cg_out1),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _45_
  (
    .CLK(cg_out1),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _46_
  (
    .CLK(cg_out2),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _47_
  (
    .CLK(cg_out1),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _48_
  (
    .CLK(cg_out2),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _49_
  (
    .CLK(cg_out2),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _50_
  (
    .CLK(cg_out2),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _51_
  (
    .CLK(cg_out3),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _52_
  (
    .CLK(cg_out3),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _53_
  (
    .CLK(cg_out3),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _54_
  (
    .CLK(cg_out3),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _55_
  (
    .CLK(cg_out4),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _56_
  (
    .CLK(cg_out4),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _57_
  (
    .CLK(cg_out4),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _58_
  (
    .CLK(cg_out5),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _59_
  (
    .CLK(cg_out4),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _60_
  (
    .CLK(cg_out5),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _61_
  (
    .CLK(cg_out5),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _62_
  (
    .CLK(cg_out5),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _63_
  (
    .CLK(cg_out6),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _64_
  (
    .CLK(cg_out6),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _65_
  (
    .CLK(cg_out6),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _66_
  (
    .CLK(cg_out6),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _67_
  (
    .CLK(cg_out7),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _68_
  (
    .CLK(cg_out7),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _69_
  (
    .CLK(cg_out7),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _70_
  (
    .CLK(cg_out7),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _71_
  (
    .CLK(cg_out0),
    .D(d_in[3]),
    .Q(d_out[3])
  );


endmodule

