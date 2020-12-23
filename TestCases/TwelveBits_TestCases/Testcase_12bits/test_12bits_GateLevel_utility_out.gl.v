

module test_12bits
(
  D_in,
  clk,
  en,
  D_out
);

  wire cg_out0;
  wire [11:0] _00_;
  input [11:0] D_in;
  output [11:0] D_out;
  input clk;
  input en;

  sky130_fd_sc_hd__dlclkp_2
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _13_
  (
    .CLK(cg_out0),
    .D(D_in[7]),
    .Q(D_out[7])
  );


  sky130_fd_sc_hd__dfxtp_1
  _14_
  (
    .CLK(cg_out0),
    .D(D_in[9]),
    .Q(D_out[9])
  );


  sky130_fd_sc_hd__dfxtp_1
  _15_
  (
    .CLK(cg_out0),
    .D(D_in[8]),
    .Q(D_out[8])
  );


  sky130_fd_sc_hd__dfxtp_1
  _16_
  (
    .CLK(cg_out0),
    .D(D_in[4]),
    .Q(D_out[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _17_
  (
    .CLK(cg_out0),
    .D(D_in[6]),
    .Q(D_out[6])
  );


  sky130_fd_sc_hd__dfxtp_1
  _18_
  (
    .CLK(cg_out0),
    .D(D_in[5]),
    .Q(D_out[5])
  );


  sky130_fd_sc_hd__dfxtp_1
  _19_
  (
    .CLK(cg_out0),
    .D(D_in[1]),
    .Q(D_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _20_
  (
    .CLK(cg_out0),
    .D(D_in[3]),
    .Q(D_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _21_
  (
    .CLK(cg_out0),
    .D(D_in[2]),
    .Q(D_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _22_
  (
    .CLK(cg_out0),
    .D(D_in[0]),
    .Q(D_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _23_
  (
    .CLK(cg_out0),
    .D(D_in[11]),
    .Q(D_out[11])
  );


  sky130_fd_sc_hd__dfxtp_1
  _24_
  (
    .CLK(cg_out0),
    .D(D_in[10]),
    .Q(D_out[10])
  );


endmodule

