

module test_32bits
(
  D_in,
  clk,
  en,
  D_out
);

  wire cg_out0;
  wire [31:0] _00_;
  input [31:0] D_in;
  output [31:0] D_out;
  input clk;
  input en;

  sky130_fd_sc_hd__dlclkp_4
  __clock_gate_cell__
  (
    .GCLK(cg_out0),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _33_
  (
    .CLK(cg_out0),
    .D(D_in[30]),
    .Q(D_out[30])
  );


  sky130_fd_sc_hd__dfxtp_1
  _34_
  (
    .CLK(cg_out0),
    .D(D_in[27]),
    .Q(D_out[27])
  );


  sky130_fd_sc_hd__dfxtp_1
  _35_
  (
    .CLK(cg_out0),
    .D(D_in[29]),
    .Q(D_out[29])
  );


  sky130_fd_sc_hd__dfxtp_1
  _36_
  (
    .CLK(cg_out0),
    .D(D_in[28]),
    .Q(D_out[28])
  );


  sky130_fd_sc_hd__dfxtp_1
  _37_
  (
    .CLK(cg_out0),
    .D(D_in[24]),
    .Q(D_out[24])
  );


  sky130_fd_sc_hd__dfxtp_1
  _38_
  (
    .CLK(cg_out0),
    .D(D_in[26]),
    .Q(D_out[26])
  );


  sky130_fd_sc_hd__dfxtp_1
  _39_
  (
    .CLK(cg_out0),
    .D(D_in[25]),
    .Q(D_out[25])
  );


  sky130_fd_sc_hd__dfxtp_1
  _40_
  (
    .CLK(cg_out0),
    .D(D_in[21]),
    .Q(D_out[21])
  );


  sky130_fd_sc_hd__dfxtp_1
  _41_
  (
    .CLK(cg_out0),
    .D(D_in[23]),
    .Q(D_out[23])
  );


  sky130_fd_sc_hd__dfxtp_1
  _42_
  (
    .CLK(cg_out0),
    .D(D_in[22]),
    .Q(D_out[22])
  );


  sky130_fd_sc_hd__dfxtp_1
  _43_
  (
    .CLK(cg_out0),
    .D(D_in[18]),
    .Q(D_out[18])
  );


  sky130_fd_sc_hd__dfxtp_1
  _44_
  (
    .CLK(cg_out0),
    .D(D_in[20]),
    .Q(D_out[20])
  );


  sky130_fd_sc_hd__dfxtp_1
  _45_
  (
    .CLK(cg_out0),
    .D(D_in[19]),
    .Q(D_out[19])
  );


  sky130_fd_sc_hd__dfxtp_1
  _46_
  (
    .CLK(cg_out0),
    .D(D_in[15]),
    .Q(D_out[15])
  );


  sky130_fd_sc_hd__dfxtp_1
  _47_
  (
    .CLK(cg_out0),
    .D(D_in[17]),
    .Q(D_out[17])
  );


  sky130_fd_sc_hd__dfxtp_1
  _48_
  (
    .CLK(cg_out0),
    .D(D_in[16]),
    .Q(D_out[16])
  );


  sky130_fd_sc_hd__dfxtp_1
  _49_
  (
    .CLK(cg_out0),
    .D(D_in[12]),
    .Q(D_out[12])
  );


  sky130_fd_sc_hd__dfxtp_1
  _50_
  (
    .CLK(cg_out0),
    .D(D_in[14]),
    .Q(D_out[14])
  );


  sky130_fd_sc_hd__dfxtp_1
  _51_
  (
    .CLK(cg_out0),
    .D(D_in[13]),
    .Q(D_out[13])
  );


  sky130_fd_sc_hd__dfxtp_1
  _52_
  (
    .CLK(cg_out0),
    .D(D_in[9]),
    .Q(D_out[9])
  );


  sky130_fd_sc_hd__dfxtp_1
  _53_
  (
    .CLK(cg_out0),
    .D(D_in[11]),
    .Q(D_out[11])
  );


  sky130_fd_sc_hd__dfxtp_1
  _54_
  (
    .CLK(cg_out0),
    .D(D_in[10]),
    .Q(D_out[10])
  );


  sky130_fd_sc_hd__dfxtp_1
  _55_
  (
    .CLK(cg_out0),
    .D(D_in[6]),
    .Q(D_out[6])
  );


  sky130_fd_sc_hd__dfxtp_1
  _56_
  (
    .CLK(cg_out0),
    .D(D_in[8]),
    .Q(D_out[8])
  );


  sky130_fd_sc_hd__dfxtp_1
  _57_
  (
    .CLK(cg_out0),
    .D(D_in[7]),
    .Q(D_out[7])
  );


  sky130_fd_sc_hd__dfxtp_1
  _58_
  (
    .CLK(cg_out0),
    .D(D_in[3]),
    .Q(D_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _59_
  (
    .CLK(cg_out0),
    .D(D_in[5]),
    .Q(D_out[5])
  );


  sky130_fd_sc_hd__dfxtp_1
  _60_
  (
    .CLK(cg_out0),
    .D(D_in[4]),
    .Q(D_out[4])
  );


  sky130_fd_sc_hd__dfxtp_1
  _61_
  (
    .CLK(cg_out0),
    .D(D_in[0]),
    .Q(D_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _62_
  (
    .CLK(cg_out0),
    .D(D_in[2]),
    .Q(D_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _63_
  (
    .CLK(cg_out0),
    .D(D_in[1]),
    .Q(D_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _64_
  (
    .CLK(cg_out0),
    .D(D_in[31]),
    .Q(D_out[31])
  );


endmodule

