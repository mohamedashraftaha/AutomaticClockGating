

module test_4bits
(
  D_in,
  clk,
  en,
  D_out
);

  wire cg_out0;
  wire [3:0] _0_;
  input [3:0] D_in;
  output [3:0] D_out;
  input clk;
  input en;

  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _5_
  (
    .CLK(cg_out0),
    .D(D_in[2]),
    .Q(D_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _6_
  (
    .CLK(cg_out0),
    .D(D_in[1]),
    .Q(D_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _7_
  (
    .CLK(cg_out0),
    .D(D_in[0]),
    .Q(D_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _8_
  (
    .CLK(cg_out0),
    .D(D_in[3]),
    .Q(D_out[3])
  );


endmodule

