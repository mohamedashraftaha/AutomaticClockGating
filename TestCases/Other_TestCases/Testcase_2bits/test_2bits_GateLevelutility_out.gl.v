

module test_2bits
(
  D_in,
  clk,
  en,
  D_out
);

  wire cg_out0;
  wire [1:0] _0_;
  input [1:0] D_in;
  output [1:0] D_out;
  input clk;
  input en;

  sky130_fd_sc_hd__dlclkp
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _3_
  (
    .CLK(cg_out0),
    .D(D_in[0]),
    .Q(D_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _4_
  (
    .CLK(cg_out0),
    .D(D_in[1]),
    .Q(D_out[1])
  );


endmodule

