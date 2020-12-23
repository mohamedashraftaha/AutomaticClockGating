

module test_4bits_2reg
(
  d_in,
  clk,
  en,
  en2,
  d_out
);

  wire cg_out0;
  wire cg_out1;
  wire [3:0] _00_;
  wire [3:0] _01_;
  input clk;
  input [3:0] d_in;
  output [3:0] d_out;
  input en;
  input en2;

  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en2),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out1),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _10_
  (
    .CLK(cg_out0),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _11_
  (
    .CLK(cg_out0),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _12_
  (
    .CLK(cg_out0),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _13_
  (
    .CLK(cg_out1),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _14_
  (
    .CLK(cg_out1),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _15_
  (
    .CLK(cg_out1),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _16_
  (
    .CLK(cg_out1),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _17_
  (
    .CLK(cg_out0),
    .D(d_in[3]),
    .Q(d_out[3])
  );


endmodule

