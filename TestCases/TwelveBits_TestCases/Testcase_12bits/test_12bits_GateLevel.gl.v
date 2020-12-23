/* Generated by Yosys 0.9 (git sha1 1979e0b) */

module test_12bits(D_in, clk, en, D_out);
  wire [11:0] _00_;
  input [11:0] D_in;
  output [11:0] D_out;
  input clk;
  input en;
  sky130_fd_sc_hd__mux2_1 _01_ (
    .A0(D_out[7]),
    .A1(D_in[7]),
    .S(en),
    .X(_00_[7])
  );
  sky130_fd_sc_hd__mux2_1 _02_ (
    .A0(D_out[9]),
    .A1(D_in[9]),
    .S(en),
    .X(_00_[9])
  );
  sky130_fd_sc_hd__mux2_1 _03_ (
    .A0(D_out[8]),
    .A1(D_in[8]),
    .S(en),
    .X(_00_[8])
  );
  sky130_fd_sc_hd__mux2_1 _04_ (
    .A0(D_out[4]),
    .A1(D_in[4]),
    .S(en),
    .X(_00_[4])
  );
  sky130_fd_sc_hd__mux2_1 _05_ (
    .A0(D_out[6]),
    .A1(D_in[6]),
    .S(en),
    .X(_00_[6])
  );
  sky130_fd_sc_hd__mux2_1 _06_ (
    .A0(D_out[5]),
    .A1(D_in[5]),
    .S(en),
    .X(_00_[5])
  );
  sky130_fd_sc_hd__mux2_1 _07_ (
    .A0(D_out[1]),
    .A1(D_in[1]),
    .S(en),
    .X(_00_[1])
  );
  sky130_fd_sc_hd__mux2_1 _08_ (
    .A0(D_out[3]),
    .A1(D_in[3]),
    .S(en),
    .X(_00_[3])
  );
  sky130_fd_sc_hd__mux2_1 _09_ (
    .A0(D_out[2]),
    .A1(D_in[2]),
    .S(en),
    .X(_00_[2])
  );
  sky130_fd_sc_hd__mux2_1 _10_ (
    .A0(D_out[0]),
    .A1(D_in[0]),
    .S(en),
    .X(_00_[0])
  );
  sky130_fd_sc_hd__mux2_1 _11_ (
    .A0(D_out[11]),
    .A1(D_in[11]),
    .S(en),
    .X(_00_[11])
  );
  sky130_fd_sc_hd__mux2_1 _12_ (
    .A0(D_out[10]),
    .A1(D_in[10]),
    .S(en),
    .X(_00_[10])
  );
  sky130_fd_sc_hd__dfxtp_1 _13_ (
    .CLK(clk),
    .D(_00_[0]),
    .Q(D_out[0])
  );
  sky130_fd_sc_hd__dfxtp_1 _14_ (
    .CLK(clk),
    .D(_00_[1]),
    .Q(D_out[1])
  );
  sky130_fd_sc_hd__dfxtp_1 _15_ (
    .CLK(clk),
    .D(_00_[2]),
    .Q(D_out[2])
  );
  sky130_fd_sc_hd__dfxtp_1 _16_ (
    .CLK(clk),
    .D(_00_[3]),
    .Q(D_out[3])
  );
  sky130_fd_sc_hd__dfxtp_1 _17_ (
    .CLK(clk),
    .D(_00_[4]),
    .Q(D_out[4])
  );
  sky130_fd_sc_hd__dfxtp_1 _18_ (
    .CLK(clk),
    .D(_00_[5]),
    .Q(D_out[5])
  );
  sky130_fd_sc_hd__dfxtp_1 _19_ (
    .CLK(clk),
    .D(_00_[6]),
    .Q(D_out[6])
  );
  sky130_fd_sc_hd__dfxtp_1 _20_ (
    .CLK(clk),
    .D(_00_[7]),
    .Q(D_out[7])
  );
  sky130_fd_sc_hd__dfxtp_1 _21_ (
    .CLK(clk),
    .D(_00_[8]),
    .Q(D_out[8])
  );
  sky130_fd_sc_hd__dfxtp_1 _22_ (
    .CLK(clk),
    .D(_00_[9]),
    .Q(D_out[9])
  );
  sky130_fd_sc_hd__dfxtp_1 _23_ (
    .CLK(clk),
    .D(_00_[10]),
    .Q(D_out[10])
  );
  sky130_fd_sc_hd__dfxtp_1 _24_ (
    .CLK(clk),
    .D(_00_[11]),
    .Q(D_out[11])
  );
endmodule
