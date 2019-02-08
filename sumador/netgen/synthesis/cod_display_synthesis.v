////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: cod_display_synthesis.v
// /___/   /\     Timestamp: Tue Feb  5 11:37:47 2019
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim fulladdbit.ngc cod_display_synthesis.v 
// Device	: xc3s100e-4-cp132
// Input file	: fulladdbit.ngc
// Output file	: /home/pablo/sumador/netgen/synthesis/cod_display_synthesis.v
// # of Modules	: 1
// Design Name	: fulladdbit
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module fulladdbit (
  CLK, RST, p0, p1, p2, q0, q1, q2, Rin, disp, seg
);
  input CLK;
  input RST;
  input p0;
  input p1;
  input p2;
  input q0;
  input q1;
  input q2;
  input Rin;
  output [3 : 0] disp;
  output [6 : 0] seg;
  wire \CD/Mrom_seg_a ;
  wire CLK_BUFGP_2;
  wire Cout1;
  wire Cout2;
  wire \DIS/seg_mux0001<1>0 ;
  wire \DIS/seg_mux0001<1>59 ;
  wire \DIS/seg_mux0001[2] ;
  wire \DIS/seg_mux0001<3>45 ;
  wire \DIS/seg_mux0001<3>451 ;
  wire \DIS/seg_mux0001<3>4511_19 ;
  wire \DIS/seg_mux0001<4>1_20 ;
  wire \DIS/seg_mux0001<5>1_21 ;
  wire \DIS/seg_mux0001[6] ;
  wire N0;
  wire N01;
  wire N1;
  wire N14;
  wire N16;
  wire N17;
  wire N18;
  wire N19;
  wire N2;
  wire RST_IBUF_33;
  wire Rin_IBUF_51;
  wire \SLC/Mcount_cuenta_cy<10>_rt_54 ;
  wire \SLC/Mcount_cuenta_cy<11>_rt_56 ;
  wire \SLC/Mcount_cuenta_cy<12>_rt_58 ;
  wire \SLC/Mcount_cuenta_cy<13>_rt_60 ;
  wire \SLC/Mcount_cuenta_cy<14>_rt_62 ;
  wire \SLC/Mcount_cuenta_cy<1>_rt_64 ;
  wire \SLC/Mcount_cuenta_cy<2>_rt_66 ;
  wire \SLC/Mcount_cuenta_cy<3>_rt_68 ;
  wire \SLC/Mcount_cuenta_cy<4>_rt_70 ;
  wire \SLC/Mcount_cuenta_cy<5>_rt_72 ;
  wire \SLC/Mcount_cuenta_cy<6>_rt_74 ;
  wire \SLC/Mcount_cuenta_cy<7>_rt_76 ;
  wire \SLC/Mcount_cuenta_cy<8>_rt_78 ;
  wire \SLC/Mcount_cuenta_cy<9>_rt_80 ;
  wire \SLC/Mcount_cuenta_eqn_0 ;
  wire \SLC/Mcount_cuenta_eqn_1 ;
  wire \SLC/Mcount_cuenta_eqn_10 ;
  wire \SLC/Mcount_cuenta_eqn_11 ;
  wire \SLC/Mcount_cuenta_eqn_12 ;
  wire \SLC/Mcount_cuenta_eqn_13 ;
  wire \SLC/Mcount_cuenta_eqn_14 ;
  wire \SLC/Mcount_cuenta_eqn_15 ;
  wire \SLC/Mcount_cuenta_eqn_2 ;
  wire \SLC/Mcount_cuenta_eqn_3 ;
  wire \SLC/Mcount_cuenta_eqn_4 ;
  wire \SLC/Mcount_cuenta_eqn_5 ;
  wire \SLC/Mcount_cuenta_eqn_6 ;
  wire \SLC/Mcount_cuenta_eqn_7 ;
  wire \SLC/Mcount_cuenta_eqn_8 ;
  wire \SLC/Mcount_cuenta_eqn_9 ;
  wire \SLC/Mcount_cuenta_xor<15>_rt_98 ;
  wire \SLC/clk_out_99 ;
  wire \SLC/clk_out_not0001 ;
  wire \SLC/cuenta_cmp_eq0000 ;
  wire \SLC/cuenta_cmp_eq000016_118 ;
  wire \SLC/cuenta_cmp_eq000034_119 ;
  wire \SLC/cuenta_cmp_eq00004_120 ;
  wire \SLC/cuenta_cmp_eq000043_121 ;
  wire ST0;
  wire ST1;
  wire ST2;
  wire ST3;
  wire p0_IBUF_131;
  wire p1_IBUF_133;
  wire p2_IBUF_135;
  wire q0_IBUF_137;
  wire q1_IBUF_139;
  wire q2_IBUF_141;
  wire [1 : 0] \DIS/disp ;
  wire [6 : 0] \DIS/seg ;
  wire [15 : 0] Result;
  wire [14 : 0] \SLC/Mcount_cuenta_cy ;
  wire [0 : 0] \SLC/Mcount_cuenta_lut ;
  wire [15 : 0] \SLC/cuenta ;
  wire [1 : 1] seg_b;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FDCE   \SLC/clk_out  (
    .C(CLK_BUFGP_2),
    .CE(\SLC/cuenta_cmp_eq0000 ),
    .CLR(RST_IBUF_33),
    .D(\SLC/clk_out_not0001 ),
    .Q(\SLC/clk_out_99 )
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_0  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_0 ),
    .Q(\SLC/cuenta [0])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_1  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_1 ),
    .Q(\SLC/cuenta [1])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_2  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_2 ),
    .Q(\SLC/cuenta [2])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_3  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_3 ),
    .Q(\SLC/cuenta [3])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_4  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_4 ),
    .Q(\SLC/cuenta [4])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_5  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_5 ),
    .Q(\SLC/cuenta [5])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_6  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_6 ),
    .Q(\SLC/cuenta [6])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_7  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_7 ),
    .Q(\SLC/cuenta [7])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_8  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_8 ),
    .Q(\SLC/cuenta [8])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_9  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_9 ),
    .Q(\SLC/cuenta [9])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_10  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_10 ),
    .Q(\SLC/cuenta [10])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_11  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_11 ),
    .Q(\SLC/cuenta [11])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_12  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_12 ),
    .Q(\SLC/cuenta [12])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_13  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_13 ),
    .Q(\SLC/cuenta [13])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_14  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_14 ),
    .Q(\SLC/cuenta [14])
  );
  FDC #(
    .INIT ( 1'b0 ))
  \SLC/cuenta_15  (
    .C(CLK_BUFGP_2),
    .CLR(RST_IBUF_33),
    .D(\SLC/Mcount_cuenta_eqn_15 ),
    .Q(\SLC/cuenta [15])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\SLC/Mcount_cuenta_lut [0]),
    .O(\SLC/Mcount_cuenta_cy [0])
  );
  XORCY   \SLC/Mcount_cuenta_xor<0>  (
    .CI(N0),
    .LI(\SLC/Mcount_cuenta_lut [0]),
    .O(Result[0])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<1>  (
    .CI(\SLC/Mcount_cuenta_cy [0]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<1>_rt_64 ),
    .O(\SLC/Mcount_cuenta_cy [1])
  );
  XORCY   \SLC/Mcount_cuenta_xor<1>  (
    .CI(\SLC/Mcount_cuenta_cy [0]),
    .LI(\SLC/Mcount_cuenta_cy<1>_rt_64 ),
    .O(Result[1])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<2>  (
    .CI(\SLC/Mcount_cuenta_cy [1]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<2>_rt_66 ),
    .O(\SLC/Mcount_cuenta_cy [2])
  );
  XORCY   \SLC/Mcount_cuenta_xor<2>  (
    .CI(\SLC/Mcount_cuenta_cy [1]),
    .LI(\SLC/Mcount_cuenta_cy<2>_rt_66 ),
    .O(Result[2])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<3>  (
    .CI(\SLC/Mcount_cuenta_cy [2]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<3>_rt_68 ),
    .O(\SLC/Mcount_cuenta_cy [3])
  );
  XORCY   \SLC/Mcount_cuenta_xor<3>  (
    .CI(\SLC/Mcount_cuenta_cy [2]),
    .LI(\SLC/Mcount_cuenta_cy<3>_rt_68 ),
    .O(Result[3])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<4>  (
    .CI(\SLC/Mcount_cuenta_cy [3]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<4>_rt_70 ),
    .O(\SLC/Mcount_cuenta_cy [4])
  );
  XORCY   \SLC/Mcount_cuenta_xor<4>  (
    .CI(\SLC/Mcount_cuenta_cy [3]),
    .LI(\SLC/Mcount_cuenta_cy<4>_rt_70 ),
    .O(Result[4])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<5>  (
    .CI(\SLC/Mcount_cuenta_cy [4]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<5>_rt_72 ),
    .O(\SLC/Mcount_cuenta_cy [5])
  );
  XORCY   \SLC/Mcount_cuenta_xor<5>  (
    .CI(\SLC/Mcount_cuenta_cy [4]),
    .LI(\SLC/Mcount_cuenta_cy<5>_rt_72 ),
    .O(Result[5])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<6>  (
    .CI(\SLC/Mcount_cuenta_cy [5]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<6>_rt_74 ),
    .O(\SLC/Mcount_cuenta_cy [6])
  );
  XORCY   \SLC/Mcount_cuenta_xor<6>  (
    .CI(\SLC/Mcount_cuenta_cy [5]),
    .LI(\SLC/Mcount_cuenta_cy<6>_rt_74 ),
    .O(Result[6])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<7>  (
    .CI(\SLC/Mcount_cuenta_cy [6]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<7>_rt_76 ),
    .O(\SLC/Mcount_cuenta_cy [7])
  );
  XORCY   \SLC/Mcount_cuenta_xor<7>  (
    .CI(\SLC/Mcount_cuenta_cy [6]),
    .LI(\SLC/Mcount_cuenta_cy<7>_rt_76 ),
    .O(Result[7])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<8>  (
    .CI(\SLC/Mcount_cuenta_cy [7]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<8>_rt_78 ),
    .O(\SLC/Mcount_cuenta_cy [8])
  );
  XORCY   \SLC/Mcount_cuenta_xor<8>  (
    .CI(\SLC/Mcount_cuenta_cy [7]),
    .LI(\SLC/Mcount_cuenta_cy<8>_rt_78 ),
    .O(Result[8])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<9>  (
    .CI(\SLC/Mcount_cuenta_cy [8]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<9>_rt_80 ),
    .O(\SLC/Mcount_cuenta_cy [9])
  );
  XORCY   \SLC/Mcount_cuenta_xor<9>  (
    .CI(\SLC/Mcount_cuenta_cy [8]),
    .LI(\SLC/Mcount_cuenta_cy<9>_rt_80 ),
    .O(Result[9])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<10>  (
    .CI(\SLC/Mcount_cuenta_cy [9]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<10>_rt_54 ),
    .O(\SLC/Mcount_cuenta_cy [10])
  );
  XORCY   \SLC/Mcount_cuenta_xor<10>  (
    .CI(\SLC/Mcount_cuenta_cy [9]),
    .LI(\SLC/Mcount_cuenta_cy<10>_rt_54 ),
    .O(Result[10])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<11>  (
    .CI(\SLC/Mcount_cuenta_cy [10]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<11>_rt_56 ),
    .O(\SLC/Mcount_cuenta_cy [11])
  );
  XORCY   \SLC/Mcount_cuenta_xor<11>  (
    .CI(\SLC/Mcount_cuenta_cy [10]),
    .LI(\SLC/Mcount_cuenta_cy<11>_rt_56 ),
    .O(Result[11])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<12>  (
    .CI(\SLC/Mcount_cuenta_cy [11]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<12>_rt_58 ),
    .O(\SLC/Mcount_cuenta_cy [12])
  );
  XORCY   \SLC/Mcount_cuenta_xor<12>  (
    .CI(\SLC/Mcount_cuenta_cy [11]),
    .LI(\SLC/Mcount_cuenta_cy<12>_rt_58 ),
    .O(Result[12])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<13>  (
    .CI(\SLC/Mcount_cuenta_cy [12]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<13>_rt_60 ),
    .O(\SLC/Mcount_cuenta_cy [13])
  );
  XORCY   \SLC/Mcount_cuenta_xor<13>  (
    .CI(\SLC/Mcount_cuenta_cy [12]),
    .LI(\SLC/Mcount_cuenta_cy<13>_rt_60 ),
    .O(Result[13])
  );
  MUXCY   \SLC/Mcount_cuenta_cy<14>  (
    .CI(\SLC/Mcount_cuenta_cy [13]),
    .DI(N0),
    .S(\SLC/Mcount_cuenta_cy<14>_rt_62 ),
    .O(\SLC/Mcount_cuenta_cy [14])
  );
  XORCY   \SLC/Mcount_cuenta_xor<14>  (
    .CI(\SLC/Mcount_cuenta_cy [13]),
    .LI(\SLC/Mcount_cuenta_cy<14>_rt_62 ),
    .O(Result[14])
  );
  XORCY   \SLC/Mcount_cuenta_xor<15>  (
    .CI(\SLC/Mcount_cuenta_cy [14]),
    .LI(\SLC/Mcount_cuenta_xor<15>_rt_98 ),
    .O(Result[15])
  );
  FD   \DIS/disp_0  (
    .C(CLK_BUFGP_2),
    .D(\SLC/clk_out_99 ),
    .Q(\DIS/disp [0])
  );
  FD   \DIS/seg_6  (
    .C(CLK_BUFGP_2),
    .D(\DIS/seg_mux0001[6] ),
    .Q(\DIS/seg [6])
  );
  FD   \DIS/seg_2  (
    .C(CLK_BUFGP_2),
    .D(\DIS/seg_mux0001[2] ),
    .Q(\DIS/seg [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \SB1/Mxor_s1_xo<0>1  (
    .I0(q0_IBUF_137),
    .I1(Rin_IBUF_51),
    .I2(p0_IBUF_131),
    .O(ST0)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_01  (
    .I0(Result[0]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_0 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \SLC/cuenta_cmp_eq000016  (
    .I0(\SLC/cuenta [6]),
    .I1(\SLC/cuenta [7]),
    .I2(\SLC/cuenta [5]),
    .I3(\SLC/cuenta [4]),
    .O(\SLC/cuenta_cmp_eq000016_118 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \SLC/cuenta_cmp_eq000034  (
    .I0(\SLC/cuenta [15]),
    .I1(\SLC/cuenta [14]),
    .I2(\SLC/cuenta [13]),
    .I3(\SLC/cuenta [12]),
    .O(\SLC/cuenta_cmp_eq000034_119 )
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \SLC/cuenta_cmp_eq000043  (
    .I0(\SLC/cuenta [9]),
    .I1(\SLC/cuenta [8]),
    .I2(\SLC/cuenta [11]),
    .I3(\SLC/cuenta [10]),
    .O(\SLC/cuenta_cmp_eq000043_121 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \SLC/cuenta_cmp_eq000055  (
    .I0(\SLC/cuenta_cmp_eq00004_120 ),
    .I1(\SLC/cuenta_cmp_eq000016_118 ),
    .I2(\SLC/cuenta_cmp_eq000034_119 ),
    .I3(\SLC/cuenta_cmp_eq000043_121 ),
    .O(\SLC/cuenta_cmp_eq0000 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_16  (
    .I0(Result[1]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_1 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_21  (
    .I0(Result[2]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_2 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_31  (
    .I0(Result[3]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_3 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_41  (
    .I0(Result[4]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_4 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_51  (
    .I0(Result[5]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_5 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_61  (
    .I0(Result[6]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_6 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_71  (
    .I0(Result[7]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_7 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_81  (
    .I0(Result[8]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_8 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_91  (
    .I0(Result[9]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_9 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_101  (
    .I0(Result[10]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_10 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \SLC/Mcount_cuenta_eqn_111  (
    .I0(Result[11]),
    .I1(\SLC/cuenta_cmp_eq0000 ),
    .O(\SLC/Mcount_cuenta_eqn_11 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \SLC/Mcount_cuenta_eqn_121  (
    .I0(\SLC/cuenta_cmp_eq0000 ),
    .I1(Result[12]),
    .O(\SLC/Mcount_cuenta_eqn_12 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \SLC/Mcount_cuenta_eqn_131  (
    .I0(\SLC/cuenta_cmp_eq0000 ),
    .I1(Result[13]),
    .O(\SLC/Mcount_cuenta_eqn_13 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \SLC/Mcount_cuenta_eqn_141  (
    .I0(\SLC/cuenta_cmp_eq0000 ),
    .I1(Result[14]),
    .O(\SLC/Mcount_cuenta_eqn_14 )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \SB2/Mxor_s1_xo<0>1  (
    .I0(Cout1),
    .I1(p1_IBUF_133),
    .I2(q1_IBUF_139),
    .O(ST1)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \SLC/Mcount_cuenta_eqn_151  (
    .I0(\SLC/cuenta_cmp_eq0000 ),
    .I1(Result[15]),
    .O(\SLC/Mcount_cuenta_eqn_15 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \DIS/seg_mux0001<6>_SW1  (
    .I0(\SLC/clk_out_99 ),
    .I1(seg_b[1]),
    .O(\DIS/seg_mux0001<1>0 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \SB3/Cout1  (
    .I0(p2_IBUF_135),
    .I1(q2_IBUF_141),
    .I2(Cout2),
    .O(ST3)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \SB2/Cout1  (
    .I0(p1_IBUF_133),
    .I1(q1_IBUF_139),
    .I2(Cout1),
    .O(Cout2)
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \SB1/Cout1  (
    .I0(q0_IBUF_137),
    .I1(Rin_IBUF_51),
    .I2(p0_IBUF_131),
    .O(Cout1)
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \SB3/Mxor_s1_xo<0>1  (
    .I0(Cout2),
    .I1(p2_IBUF_135),
    .I2(q2_IBUF_141),
    .O(ST2)
  );
  IBUF   RST_IBUF (
    .I(RST),
    .O(RST_IBUF_33)
  );
  IBUF   p0_IBUF (
    .I(p0),
    .O(p0_IBUF_131)
  );
  IBUF   p1_IBUF (
    .I(p1),
    .O(p1_IBUF_133)
  );
  IBUF   p2_IBUF (
    .I(p2),
    .O(p2_IBUF_135)
  );
  IBUF   q0_IBUF (
    .I(q0),
    .O(q0_IBUF_137)
  );
  IBUF   q1_IBUF (
    .I(q1),
    .O(q1_IBUF_139)
  );
  IBUF   q2_IBUF (
    .I(q2),
    .O(q2_IBUF_141)
  );
  IBUF   Rin_IBUF (
    .I(Rin),
    .O(Rin_IBUF_51)
  );
  OBUF   disp_3_OBUF (
    .I(N1),
    .O(disp[3])
  );
  OBUF   disp_2_OBUF (
    .I(N1),
    .O(disp[2])
  );
  OBUF   disp_1_OBUF (
    .I(\DIS/disp [1]),
    .O(disp[1])
  );
  OBUF   disp_0_OBUF (
    .I(\DIS/disp [0]),
    .O(disp[0])
  );
  OBUF   seg_6_OBUF (
    .I(\DIS/seg [6]),
    .O(seg[6])
  );
  OBUF   seg_5_OBUF (
    .I(\DIS/seg [5]),
    .O(seg[5])
  );
  OBUF   seg_4_OBUF (
    .I(\DIS/seg [4]),
    .O(seg[4])
  );
  OBUF   seg_3_OBUF (
    .I(\DIS/seg [3]),
    .O(seg[3])
  );
  OBUF   seg_2_OBUF (
    .I(\DIS/seg [2]),
    .O(seg[2])
  );
  OBUF   seg_1_OBUF (
    .I(\DIS/seg [1]),
    .O(seg[1])
  );
  OBUF   seg_0_OBUF (
    .I(\DIS/seg [0]),
    .O(seg[0])
  );
  FDR   \DIS/disp_1  (
    .C(CLK_BUFGP_2),
    .D(N1),
    .R(\SLC/clk_out_99 ),
    .Q(\DIS/disp [1])
  );
  FDR   \DIS/seg_5  (
    .C(CLK_BUFGP_2),
    .D(\DIS/seg_mux0001<5>1_21 ),
    .R(N01),
    .Q(\DIS/seg [5])
  );
  FDR   \DIS/seg_4  (
    .C(CLK_BUFGP_2),
    .D(\DIS/seg_mux0001<4>1_20 ),
    .R(N2),
    .Q(\DIS/seg [4])
  );
  FDS   \DIS/seg_3  (
    .C(CLK_BUFGP_2),
    .D(\DIS/seg_mux0001<3>45 ),
    .S(\DIS/seg_mux0001<1>0 ),
    .Q(\DIS/seg [3])
  );
  FDS   \DIS/seg_1  (
    .C(CLK_BUFGP_2),
    .D(\DIS/seg_mux0001<1>59 ),
    .S(\DIS/seg_mux0001<1>0 ),
    .Q(\DIS/seg [1])
  );
  FDS   \DIS/seg_0  (
    .C(CLK_BUFGP_2),
    .D(\SLC/clk_out_99 ),
    .S(\CD/Mrom_seg_a ),
    .Q(\DIS/seg [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<1>_rt  (
    .I0(\SLC/cuenta [1]),
    .O(\SLC/Mcount_cuenta_cy<1>_rt_64 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<2>_rt  (
    .I0(\SLC/cuenta [2]),
    .O(\SLC/Mcount_cuenta_cy<2>_rt_66 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<3>_rt  (
    .I0(\SLC/cuenta [3]),
    .O(\SLC/Mcount_cuenta_cy<3>_rt_68 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<4>_rt  (
    .I0(\SLC/cuenta [4]),
    .O(\SLC/Mcount_cuenta_cy<4>_rt_70 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<5>_rt  (
    .I0(\SLC/cuenta [5]),
    .O(\SLC/Mcount_cuenta_cy<5>_rt_72 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<6>_rt  (
    .I0(\SLC/cuenta [6]),
    .O(\SLC/Mcount_cuenta_cy<6>_rt_74 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<7>_rt  (
    .I0(\SLC/cuenta [7]),
    .O(\SLC/Mcount_cuenta_cy<7>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<8>_rt  (
    .I0(\SLC/cuenta [8]),
    .O(\SLC/Mcount_cuenta_cy<8>_rt_78 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<9>_rt  (
    .I0(\SLC/cuenta [9]),
    .O(\SLC/Mcount_cuenta_cy<9>_rt_80 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<10>_rt  (
    .I0(\SLC/cuenta [10]),
    .O(\SLC/Mcount_cuenta_cy<10>_rt_54 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<11>_rt  (
    .I0(\SLC/cuenta [11]),
    .O(\SLC/Mcount_cuenta_cy<11>_rt_56 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<12>_rt  (
    .I0(\SLC/cuenta [12]),
    .O(\SLC/Mcount_cuenta_cy<12>_rt_58 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<13>_rt  (
    .I0(\SLC/cuenta [13]),
    .O(\SLC/Mcount_cuenta_cy<13>_rt_60 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_cy<14>_rt  (
    .I0(\SLC/cuenta [14]),
    .O(\SLC/Mcount_cuenta_cy<14>_rt_62 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \SLC/Mcount_cuenta_xor<15>_rt  (
    .I0(\SLC/cuenta [15]),
    .O(\SLC/Mcount_cuenta_xor<15>_rt_98 )
  );
  LUT4 #(
    .INIT ( 16'hFF69 ))
  \DIS/seg_mux0001<5>_SW0  (
    .I0(q0_IBUF_137),
    .I1(Rin_IBUF_51),
    .I2(p0_IBUF_131),
    .I3(\SLC/clk_out_99 ),
    .O(N01)
  );
  LUT4 #(
    .INIT ( 16'hFF96 ))
  \DIS/seg_mux0001<4>_SW0  (
    .I0(q0_IBUF_137),
    .I1(Rin_IBUF_51),
    .I2(p0_IBUF_131),
    .I3(\SLC/clk_out_99 ),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'hE880 ))
  \CD/seg_b<2>1  (
    .I0(Cout2),
    .I1(p2_IBUF_135),
    .I2(q2_IBUF_141),
    .I3(ST1),
    .O(seg_b[1])
  );
  LUT4 #(
    .INIT ( 16'h70E1 ))
  \CD/Mrom_seg_a11  (
    .I0(Cout2),
    .I1(p2_IBUF_135),
    .I2(ST1),
    .I3(q2_IBUF_141),
    .O(\CD/Mrom_seg_a )
  );
  LUT4 #(
    .INIT ( 16'h8016 ))
  \DIS/seg_mux0001<5>1  (
    .I0(Cout2),
    .I1(p2_IBUF_135),
    .I2(q2_IBUF_141),
    .I3(ST1),
    .O(\DIS/seg_mux0001<5>1_21 )
  );
  LUT4 #(
    .INIT ( 16'h0180 ))
  \DIS/seg_mux0001<4>1  (
    .I0(Cout2),
    .I1(p2_IBUF_135),
    .I2(q2_IBUF_141),
    .I3(ST1),
    .O(\DIS/seg_mux0001<4>1_20 )
  );
  MUXF5   \DIS/seg_mux0001<1>591  (
    .I0(N14),
    .I1(N0),
    .S(\SLC/clk_out_99 ),
    .O(\DIS/seg_mux0001<1>59 )
  );
  LUT4 #(
    .INIT ( 16'h7598 ))
  \DIS/seg_mux0001<1>591_F  (
    .I0(ST3),
    .I1(ST2),
    .I2(ST0),
    .I3(ST1),
    .O(N14)
  );
  MUXF5   \DIS/seg_mux0001<2>  (
    .I0(N16),
    .I1(N17),
    .S(\SLC/clk_out_99 ),
    .O(\DIS/seg_mux0001[2] )
  );
  LUT4 #(
    .INIT ( 16'hFF8A ))
  \DIS/seg_mux0001<2>_F  (
    .I0(ST2),
    .I1(ST1),
    .I2(ST3),
    .I3(ST0),
    .O(N16)
  );
  LUT4 #(
    .INIT ( 16'hE880 ))
  \DIS/seg_mux0001<2>_G  (
    .I0(Cout2),
    .I1(p2_IBUF_135),
    .I2(q2_IBUF_141),
    .I3(ST1),
    .O(N17)
  );
  MUXF5   \DIS/seg_mux0001<6>  (
    .I0(N18),
    .I1(N19),
    .S(\SLC/clk_out_99 ),
    .O(\DIS/seg_mux0001[6] )
  );
  LUT4 #(
    .INIT ( 16'h0990 ))
  \DIS/seg_mux0001<6>_F  (
    .I0(ST3),
    .I1(ST1),
    .I2(ST2),
    .I3(ST0),
    .O(N18)
  );
  LUT4 #(
    .INIT ( 16'hE880 ))
  \DIS/seg_mux0001<6>_G  (
    .I0(Cout2),
    .I1(p2_IBUF_135),
    .I2(q2_IBUF_141),
    .I3(ST1),
    .O(N19)
  );
  BUFGP   CLK_BUFGP (
    .I(CLK),
    .O(CLK_BUFGP_2)
  );
  INV   \SLC/Mcount_cuenta_lut<0>_INV_0  (
    .I(\SLC/cuenta [0]),
    .O(\SLC/Mcount_cuenta_lut [0])
  );
  INV   \SLC/clk_out_not00011_INV_0  (
    .I(\SLC/clk_out_99 ),
    .O(\SLC/clk_out_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \DIS/seg_mux0001<3>4511  (
    .I0(\SLC/clk_out_99 ),
    .I1(\CD/Mrom_seg_a ),
    .O(\DIS/seg_mux0001<3>451 )
  );
  LUT4 #(
    .INIT ( 16'h0084 ))
  \DIS/seg_mux0001<3>4512  (
    .I0(ST1),
    .I1(ST2),
    .I2(ST3),
    .I3(\SLC/clk_out_99 ),
    .O(\DIS/seg_mux0001<3>4511_19 )
  );
  MUXF5   \DIS/seg_mux0001<3>451_f5  (
    .I0(\DIS/seg_mux0001<3>4511_19 ),
    .I1(\DIS/seg_mux0001<3>451 ),
    .S(ST0),
    .O(\DIS/seg_mux0001<3>45 )
  );
  LUT4_L #(
    .INIT ( 16'h8000 ))
  \SLC/cuenta_cmp_eq00004  (
    .I0(\SLC/cuenta [3]),
    .I1(\SLC/cuenta [2]),
    .I2(\SLC/cuenta [1]),
    .I3(\SLC/cuenta [0]),
    .LO(\SLC/cuenta_cmp_eq00004_120 )
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

