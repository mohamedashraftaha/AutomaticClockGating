

module test_4bits_16reg
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
  wire [3:0] _000_;
  wire [3:0] _001_;
  wire [3:0] _002_;
  wire [3:0] _003_;
  wire [3:0] _004_;
  wire [3:0] _005_;
  wire [3:0] _006_;
  wire [3:0] _007_;
  wire [3:0] _008_;
  wire [3:0] _009_;
  wire [3:0] _010_;
  wire [3:0] _011_;
  wire [3:0] _012_;
  wire [3:0] _013_;
  wire [3:0] _014_;
  wire [3:0] _015_;
  input clk;
  input [3:0] d_in;
  output [3:0] d_out;
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
  __clock_gate_cell__0
  (
    .GCLK(cg_out0),
    .GATE(en16),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__1
  (
    .GCLK(cg_out1),
    .GATE(en),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__2
  (
    .GCLK(cg_out2),
    .GATE(en2),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__3
  (
    .GCLK(cg_out3),
    .GATE(en3),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__4
  (
    .GCLK(cg_out4),
    .GATE(en4),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__5
  (
    .GCLK(cg_out5),
    .GATE(en5),
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


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__8
  (
    .GCLK(cg_out8),
    .GATE(en8),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__9
  (
    .GCLK(cg_out9),
    .GATE(en9),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__10
  (
    .GCLK(cg_out10),
    .GATE(en10),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__11
  (
    .GCLK(cg_out11),
    .GATE(en11),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__12
  (
    .GCLK(cg_out12),
    .GATE(en12),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__13
  (
    .GCLK(cg_out13),
    .GATE(en13),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__14
  (
    .GCLK(cg_out14),
    .GATE(en14),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dlclkp_1
  __clock_gate_cell__15
  (
    .GCLK(cg_out15),
    .GATE(en15),
    .CLK(clk)
  );


  sky130_fd_sc_hd__dfxtp_1
  _080_
  (
    .CLK(cg_out0),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _081_
  (
    .CLK(cg_out0),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _082_
  (
    .CLK(cg_out0),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _083_
  (
    .CLK(cg_out1),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _084_
  (
    .CLK(cg_out1),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _085_
  (
    .CLK(cg_out1),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _086_
  (
    .CLK(cg_out2),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _087_
  (
    .CLK(cg_out1),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _088_
  (
    .CLK(cg_out2),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _089_
  (
    .CLK(cg_out2),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _090_
  (
    .CLK(cg_out2),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _091_
  (
    .CLK(cg_out3),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _092_
  (
    .CLK(cg_out3),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _093_
  (
    .CLK(cg_out3),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _094_
  (
    .CLK(cg_out3),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _095_
  (
    .CLK(cg_out4),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _096_
  (
    .CLK(cg_out4),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _097_
  (
    .CLK(cg_out4),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _098_
  (
    .CLK(cg_out5),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _099_
  (
    .CLK(cg_out4),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _100_
  (
    .CLK(cg_out5),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _101_
  (
    .CLK(cg_out5),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _102_
  (
    .CLK(cg_out5),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _103_
  (
    .CLK(cg_out6),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _104_
  (
    .CLK(cg_out6),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _105_
  (
    .CLK(cg_out6),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _106_
  (
    .CLK(cg_out6),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _107_
  (
    .CLK(cg_out7),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _108_
  (
    .CLK(cg_out7),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _109_
  (
    .CLK(cg_out7),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _110_
  (
    .CLK(cg_out8),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _111_
  (
    .CLK(cg_out7),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _112_
  (
    .CLK(cg_out8),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _113_
  (
    .CLK(cg_out8),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _114_
  (
    .CLK(cg_out8),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _115_
  (
    .CLK(cg_out9),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _116_
  (
    .CLK(cg_out9),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _117_
  (
    .CLK(cg_out9),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _118_
  (
    .CLK(cg_out9),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _119_
  (
    .CLK(cg_out10),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _120_
  (
    .CLK(cg_out10),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _121_
  (
    .CLK(cg_out10),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _122_
  (
    .CLK(cg_out11),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _123_
  (
    .CLK(cg_out10),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _124_
  (
    .CLK(cg_out11),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _125_
  (
    .CLK(cg_out11),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _126_
  (
    .CLK(cg_out11),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _127_
  (
    .CLK(cg_out12),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _128_
  (
    .CLK(cg_out12),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _129_
  (
    .CLK(cg_out12),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _130_
  (
    .CLK(cg_out12),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _131_
  (
    .CLK(cg_out13),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _132_
  (
    .CLK(cg_out13),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _133_
  (
    .CLK(cg_out13),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _134_
  (
    .CLK(cg_out14),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _135_
  (
    .CLK(cg_out13),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _136_
  (
    .CLK(cg_out14),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _137_
  (
    .CLK(cg_out14),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _138_
  (
    .CLK(cg_out14),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _139_
  (
    .CLK(cg_out15),
    .D(d_in[2]),
    .Q(d_out[2])
  );


  sky130_fd_sc_hd__dfxtp_1
  _140_
  (
    .CLK(cg_out15),
    .D(d_in[3]),
    .Q(d_out[3])
  );


  sky130_fd_sc_hd__dfxtp_1
  _141_
  (
    .CLK(cg_out15),
    .D(d_in[1]),
    .Q(d_out[1])
  );


  sky130_fd_sc_hd__dfxtp_1
  _142_
  (
    .CLK(cg_out15),
    .D(d_in[0]),
    .Q(d_out[0])
  );


  sky130_fd_sc_hd__dfxtp_1
  _143_
  (
    .CLK(cg_out0),
    .D(d_in[3]),
    .Q(d_out[3])
  );


endmodule

