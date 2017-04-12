////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2011 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: O.76xd
//  \   \         Application: netgen
//  /   /         Filename: ddsc.v
// /___/   /\     Timestamp: Thu Nov 10 18:08:33 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/yingyu/Desktop/Paper_SL/SL_minispartan/miniS/ipcore_dir/tmp/_cg/ddsc.ngc C:/Users/yingyu/Desktop/Paper_SL/SL_minispartan/miniS/ipcore_dir/tmp/_cg/ddsc.v 
// Device	: 6slx25ftg256-3
// Input file	: C:/Users/yingyu/Desktop/Paper_SL/SL_minispartan/miniS/ipcore_dir/tmp/_cg/ddsc.ngc
// Output file	: C:/Users/yingyu/Desktop/Paper_SL/SL_minispartan/miniS/ipcore_dir/tmp/_cg/ddsc.v
// # of Modules	: 1
// Design Name	: ddsc
// Xilinx        : C:\Xilinx\13.3\ISE_DS\ISE\
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

module ddsc (
  sclr, clk, pinc_in, cosine, phase_out, poff_in
)/* synthesis syn_black_box syn_noprune=1 */;
  input sclr;
  input clk;
  input [31 : 0] pinc_in;
  output [7 : 0] cosine;
  output [31 : 0] phase_out;
  input [31 : 0] poff_in;
  
  // synthesis translate_off
  
  wire \blk00000003/sig00000130 ;
  wire \blk00000003/sig0000012f ;
  wire \blk00000003/sig0000012e ;
  wire \blk00000003/sig0000012d ;
  wire \blk00000003/sig0000012c ;
  wire \blk00000003/sig0000012b ;
  wire \blk00000003/sig0000012a ;
  wire \blk00000003/sig00000129 ;
  wire \blk00000003/sig00000128 ;
  wire \blk00000003/sig00000127 ;
  wire \blk00000003/sig00000126 ;
  wire \blk00000003/sig00000125 ;
  wire \blk00000003/sig00000124 ;
  wire \blk00000003/sig00000123 ;
  wire \blk00000003/sig00000122 ;
  wire \blk00000003/sig00000121 ;
  wire \blk00000003/sig00000120 ;
  wire \blk00000003/sig0000011f ;
  wire \blk00000003/sig0000011e ;
  wire \blk00000003/sig0000011d ;
  wire \blk00000003/sig0000011c ;
  wire \blk00000003/sig0000011b ;
  wire \blk00000003/sig0000011a ;
  wire \blk00000003/sig00000119 ;
  wire \blk00000003/sig00000118 ;
  wire \blk00000003/sig00000117 ;
  wire \blk00000003/sig00000116 ;
  wire \blk00000003/sig00000115 ;
  wire \blk00000003/sig00000114 ;
  wire \blk00000003/sig00000113 ;
  wire \blk00000003/sig00000112 ;
  wire \blk00000003/sig00000111 ;
  wire \blk00000003/sig00000110 ;
  wire \blk00000003/sig0000010f ;
  wire \blk00000003/sig0000010e ;
  wire \blk00000003/sig0000010d ;
  wire \blk00000003/sig0000010c ;
  wire \blk00000003/sig0000010b ;
  wire \blk00000003/sig0000010a ;
  wire \blk00000003/sig00000109 ;
  wire \blk00000003/sig00000108 ;
  wire \blk00000003/sig00000107 ;
  wire \blk00000003/sig00000106 ;
  wire \blk00000003/sig00000105 ;
  wire \blk00000003/sig00000104 ;
  wire \blk00000003/sig00000103 ;
  wire \blk00000003/sig00000102 ;
  wire \blk00000003/sig00000101 ;
  wire \blk00000003/sig00000100 ;
  wire \blk00000003/sig000000ff ;
  wire \blk00000003/sig000000fe ;
  wire \blk00000003/sig000000fd ;
  wire \blk00000003/sig000000fc ;
  wire \blk00000003/sig000000fb ;
  wire \blk00000003/sig000000fa ;
  wire \blk00000003/sig000000f9 ;
  wire \blk00000003/sig000000f8 ;
  wire \blk00000003/sig000000f7 ;
  wire \blk00000003/sig000000f6 ;
  wire \blk00000003/sig000000f5 ;
  wire \blk00000003/sig000000f4 ;
  wire \blk00000003/sig000000f3 ;
  wire \blk00000003/sig000000f2 ;
  wire \blk00000003/sig000000f1 ;
  wire \blk00000003/sig000000f0 ;
  wire \blk00000003/sig000000ef ;
  wire \blk00000003/sig000000ee ;
  wire \blk00000003/sig000000ed ;
  wire \blk00000003/sig000000ec ;
  wire \blk00000003/sig000000eb ;
  wire \blk00000003/sig000000ea ;
  wire \blk00000003/sig000000e9 ;
  wire \blk00000003/sig000000e8 ;
  wire \blk00000003/sig000000e7 ;
  wire \blk00000003/sig000000e6 ;
  wire \blk00000003/sig000000e5 ;
  wire \blk00000003/sig000000e4 ;
  wire \blk00000003/sig000000e3 ;
  wire \blk00000003/sig000000e2 ;
  wire \blk00000003/sig000000e1 ;
  wire \blk00000003/sig000000e0 ;
  wire \blk00000003/sig000000df ;
  wire \blk00000003/sig000000de ;
  wire \blk00000003/sig000000dd ;
  wire \blk00000003/sig000000dc ;
  wire \blk00000003/sig000000db ;
  wire \blk00000003/sig000000da ;
  wire \blk00000003/sig000000d9 ;
  wire \blk00000003/sig000000d8 ;
  wire \blk00000003/sig000000d7 ;
  wire \blk00000003/sig000000d6 ;
  wire \blk00000003/sig000000d5 ;
  wire \blk00000003/sig000000d4 ;
  wire \blk00000003/sig000000d3 ;
  wire \blk00000003/sig000000d2 ;
  wire \blk00000003/sig000000d1 ;
  wire \blk00000003/sig000000d0 ;
  wire \blk00000003/sig000000cf ;
  wire \blk00000003/sig000000ce ;
  wire \blk00000003/sig000000cd ;
  wire \blk00000003/sig000000cc ;
  wire \blk00000003/sig000000cb ;
  wire \blk00000003/sig000000ca ;
  wire \blk00000003/sig000000c9 ;
  wire \blk00000003/sig000000c8 ;
  wire \blk00000003/sig000000c7 ;
  wire \blk00000003/sig000000c6 ;
  wire \blk00000003/sig000000c5 ;
  wire \blk00000003/sig000000c4 ;
  wire \blk00000003/sig000000c3 ;
  wire \blk00000003/sig000000c2 ;
  wire \blk00000003/sig000000c1 ;
  wire \blk00000003/sig000000c0 ;
  wire \blk00000003/sig000000bf ;
  wire \blk00000003/sig000000be ;
  wire \blk00000003/sig000000bd ;
  wire \blk00000003/sig000000bc ;
  wire \blk00000003/sig000000bb ;
  wire \blk00000003/sig000000ba ;
  wire \blk00000003/sig000000b9 ;
  wire \blk00000003/sig000000b8 ;
  wire \blk00000003/sig000000b7 ;
  wire \blk00000003/sig000000b6 ;
  wire \blk00000003/sig000000b5 ;
  wire \blk00000003/sig000000b4 ;
  wire \blk00000003/sig000000b3 ;
  wire \blk00000003/sig000000b2 ;
  wire \blk00000003/sig000000b1 ;
  wire \blk00000003/sig000000b0 ;
  wire \blk00000003/sig000000af ;
  wire \blk00000003/sig000000ae ;
  wire \blk00000003/sig000000ad ;
  wire \blk00000003/sig000000ac ;
  wire \blk00000003/sig000000ab ;
  wire \blk00000003/sig000000aa ;
  wire \blk00000003/sig000000a9 ;
  wire \blk00000003/sig000000a8 ;
  wire \blk00000003/sig000000a7 ;
  wire \blk00000003/sig000000a6 ;
  wire \blk00000003/sig000000a5 ;
  wire \blk00000003/sig000000a4 ;
  wire \blk00000003/sig000000a3 ;
  wire \blk00000003/sig000000a2 ;
  wire \blk00000003/sig000000a1 ;
  wire \blk00000003/sig000000a0 ;
  wire \blk00000003/sig0000009f ;
  wire \blk00000003/sig0000009e ;
  wire \blk00000003/sig0000009d ;
  wire \blk00000003/sig0000009c ;
  wire \blk00000003/sig0000009b ;
  wire \blk00000003/sig0000009a ;
  wire \blk00000003/sig00000099 ;
  wire \blk00000003/sig00000098 ;
  wire \blk00000003/sig00000097 ;
  wire \blk00000003/sig00000096 ;
  wire \blk00000003/sig00000095 ;
  wire \blk00000003/sig00000094 ;
  wire \blk00000003/sig00000093 ;
  wire \blk00000003/sig00000092 ;
  wire \blk00000003/sig00000091 ;
  wire \blk00000003/sig00000090 ;
  wire \blk00000003/sig0000008f ;
  wire \blk00000003/sig0000008e ;
  wire \blk00000003/sig0000008d ;
  wire \blk00000003/sig0000008c ;
  wire \blk00000003/sig0000008b ;
  wire \blk00000003/sig0000008a ;
  wire \blk00000003/sig00000089 ;
  wire \blk00000003/sig00000088 ;
  wire \blk00000003/sig00000087 ;
  wire \blk00000003/sig00000086 ;
  wire \blk00000003/sig00000085 ;
  wire \blk00000003/sig00000084 ;
  wire \blk00000003/sig00000083 ;
  wire \blk00000003/sig00000082 ;
  wire \blk00000003/sig00000081 ;
  wire \blk00000003/sig00000080 ;
  wire \blk00000003/sig0000007f ;
  wire \blk00000003/sig0000007e ;
  wire \blk00000003/sig0000007d ;
  wire \blk00000003/sig0000007c ;
  wire \blk00000003/sig0000007b ;
  wire \blk00000003/sig0000007a ;
  wire \blk00000003/sig00000079 ;
  wire \blk00000003/sig00000078 ;
  wire \blk00000003/sig00000077 ;
  wire \blk00000003/sig00000076 ;
  wire \blk00000003/sig00000075 ;
  wire \blk00000003/sig00000074 ;
  wire \blk00000003/sig00000073 ;
  wire \blk00000003/sig00000072 ;
  wire \blk00000003/sig00000071 ;
  wire \blk00000003/sig00000070 ;
  wire \blk00000003/sig0000006f ;
  wire \blk00000003/sig0000006e ;
  wire \blk00000003/sig0000006d ;
  wire \blk00000003/sig0000006c ;
  wire \blk00000003/sig0000006b ;
  wire \blk00000003/blk00000047/sig000001d1 ;
  wire \blk00000003/blk00000047/sig000001d0 ;
  wire \blk00000003/blk00000047/sig000001cf ;
  wire \blk00000003/blk00000047/sig000001ce ;
  wire \blk00000003/blk00000047/sig000001cd ;
  wire \blk00000003/blk00000047/sig000001cc ;
  wire \blk00000003/blk00000047/sig000001cb ;
  wire \blk00000003/blk00000047/sig000001ca ;
  wire \blk00000003/blk00000047/sig000001c9 ;
  wire \blk00000003/blk00000047/sig000001c8 ;
  wire \blk00000003/blk00000047/sig000001c7 ;
  wire \blk00000003/blk00000047/sig000001c6 ;
  wire \blk00000003/blk00000047/sig000001c5 ;
  wire \blk00000003/blk00000047/sig000001c4 ;
  wire \blk00000003/blk00000047/sig000001c3 ;
  wire \blk00000003/blk00000047/sig000001c2 ;
  wire \blk00000003/blk00000047/sig000001c1 ;
  wire \blk00000003/blk00000047/sig000001c0 ;
  wire \blk00000003/blk00000047/sig000001bf ;
  wire \blk00000003/blk00000047/sig000001be ;
  wire \blk00000003/blk00000047/sig000001bd ;
  wire \blk00000003/blk00000047/sig000001bc ;
  wire \blk00000003/blk00000047/sig000001bb ;
  wire \blk00000003/blk00000047/sig000001ba ;
  wire \blk00000003/blk00000047/sig000001b9 ;
  wire \blk00000003/blk00000047/sig000001b8 ;
  wire \blk00000003/blk00000047/sig000001b7 ;
  wire \blk00000003/blk00000047/sig000001b6 ;
  wire \blk00000003/blk00000047/sig000001b5 ;
  wire \blk00000003/blk00000047/sig000001b4 ;
  wire \blk00000003/blk00000047/sig000001b3 ;
  wire \blk00000003/blk00000047/sig000001b2 ;
  wire \blk00000003/blk00000047/sig000001b1 ;
  wire \blk00000003/blk00000047/sig000001b0 ;
  wire \blk00000003/blk00000047/sig000001af ;
  wire \blk00000003/blk00000047/sig000001ae ;
  wire \blk00000003/blk00000047/sig000001ad ;
  wire \blk00000003/blk00000047/sig000001ac ;
  wire \blk00000003/blk00000047/sig000001ab ;
  wire \blk00000003/blk00000047/sig000001aa ;
  wire \blk00000003/blk00000047/sig000001a9 ;
  wire \blk00000003/blk00000047/sig000001a8 ;
  wire \blk00000003/blk00000047/sig000001a7 ;
  wire \blk00000003/blk00000047/sig000001a6 ;
  wire \blk00000003/blk00000047/sig000001a5 ;
  wire \blk00000003/blk00000047/sig000001a4 ;
  wire \blk00000003/blk00000047/sig000001a3 ;
  wire \blk00000003/blk00000047/sig000001a2 ;
  wire \blk00000003/blk00000047/sig000001a1 ;
  wire \blk00000003/blk00000047/sig000001a0 ;
  wire \blk00000003/blk00000047/sig0000019f ;
  wire \blk00000003/blk00000047/sig0000019e ;
  wire \blk00000003/blk00000047/sig0000019d ;
  wire \blk00000003/blk00000047/sig0000019c ;
  wire \blk00000003/blk00000047/sig0000019b ;
  wire \blk00000003/blk00000047/sig0000019a ;
  wire \blk00000003/blk00000047/sig00000199 ;
  wire \blk00000003/blk00000047/sig00000198 ;
  wire \blk00000003/blk00000047/sig00000197 ;
  wire \blk00000003/blk00000047/sig00000196 ;
  wire \blk00000003/blk00000047/sig00000195 ;
  wire \blk00000003/blk00000047/sig00000194 ;
  wire \blk00000003/blk00000047/sig00000193 ;
  wire \blk00000003/blk000000a8/sig00000272 ;
  wire \blk00000003/blk000000a8/sig00000271 ;
  wire \blk00000003/blk000000a8/sig00000270 ;
  wire \blk00000003/blk000000a8/sig0000026f ;
  wire \blk00000003/blk000000a8/sig0000026e ;
  wire \blk00000003/blk000000a8/sig0000026d ;
  wire \blk00000003/blk000000a8/sig0000026c ;
  wire \blk00000003/blk000000a8/sig0000026b ;
  wire \blk00000003/blk000000a8/sig0000026a ;
  wire \blk00000003/blk000000a8/sig00000269 ;
  wire \blk00000003/blk000000a8/sig00000268 ;
  wire \blk00000003/blk000000a8/sig00000267 ;
  wire \blk00000003/blk000000a8/sig00000266 ;
  wire \blk00000003/blk000000a8/sig00000265 ;
  wire \blk00000003/blk000000a8/sig00000264 ;
  wire \blk00000003/blk000000a8/sig00000263 ;
  wire \blk00000003/blk000000a8/sig00000262 ;
  wire \blk00000003/blk000000a8/sig00000261 ;
  wire \blk00000003/blk000000a8/sig00000260 ;
  wire \blk00000003/blk000000a8/sig0000025f ;
  wire \blk00000003/blk000000a8/sig0000025e ;
  wire \blk00000003/blk000000a8/sig0000025d ;
  wire \blk00000003/blk000000a8/sig0000025c ;
  wire \blk00000003/blk000000a8/sig0000025b ;
  wire \blk00000003/blk000000a8/sig0000025a ;
  wire \blk00000003/blk000000a8/sig00000259 ;
  wire \blk00000003/blk000000a8/sig00000258 ;
  wire \blk00000003/blk000000a8/sig00000257 ;
  wire \blk00000003/blk000000a8/sig00000256 ;
  wire \blk00000003/blk000000a8/sig00000255 ;
  wire \blk00000003/blk000000a8/sig00000254 ;
  wire \blk00000003/blk000000a8/sig00000253 ;
  wire \blk00000003/blk000000a8/sig00000252 ;
  wire \blk00000003/blk000000a8/sig00000251 ;
  wire \blk00000003/blk000000a8/sig00000250 ;
  wire \blk00000003/blk000000a8/sig0000024f ;
  wire \blk00000003/blk000000a8/sig0000024e ;
  wire \blk00000003/blk000000a8/sig0000024d ;
  wire \blk00000003/blk000000a8/sig0000024c ;
  wire \blk00000003/blk000000a8/sig0000024b ;
  wire \blk00000003/blk000000a8/sig0000024a ;
  wire \blk00000003/blk000000a8/sig00000249 ;
  wire \blk00000003/blk000000a8/sig00000248 ;
  wire \blk00000003/blk000000a8/sig00000247 ;
  wire \blk00000003/blk000000a8/sig00000246 ;
  wire \blk00000003/blk000000a8/sig00000245 ;
  wire \blk00000003/blk000000a8/sig00000244 ;
  wire \blk00000003/blk000000a8/sig00000243 ;
  wire \blk00000003/blk000000a8/sig00000242 ;
  wire \blk00000003/blk000000a8/sig00000241 ;
  wire \blk00000003/blk000000a8/sig00000240 ;
  wire \blk00000003/blk000000a8/sig0000023f ;
  wire \blk00000003/blk000000a8/sig0000023e ;
  wire \blk00000003/blk000000a8/sig0000023d ;
  wire \blk00000003/blk000000a8/sig0000023c ;
  wire \blk00000003/blk000000a8/sig0000023b ;
  wire \blk00000003/blk000000a8/sig0000023a ;
  wire \blk00000003/blk000000a8/sig00000239 ;
  wire \blk00000003/blk000000a8/sig00000238 ;
  wire \blk00000003/blk000000a8/sig00000237 ;
  wire \blk00000003/blk000000a8/sig00000236 ;
  wire \blk00000003/blk000000a8/sig00000235 ;
  wire \blk00000003/blk000000a8/sig00000234 ;
  wire NLW_blk00000001_P_UNCONNECTED;
  wire NLW_blk00000002_G_UNCONNECTED;
  wire \NLW_blk00000003/blk0000016a_DOADO<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOADO<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOPBDOP<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOPBDOP<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_ADDRAWRADDR<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_ADDRAWRADDR<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_ADDRAWRADDR<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIPBDIP<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIPBDIP<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<7>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<6>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<5>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<4>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<3>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIBDI<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIADI<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_ADDRBRDADDR<2>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_ADDRBRDADDR<1>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_ADDRBRDADDR<0>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<15>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<14>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<13>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<12>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<11>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<10>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<9>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DOBDO<8>_UNCONNECTED ;
  wire \NLW_blk00000003/blk0000016a_DIPADIP<1>_UNCONNECTED ;
  wire [31 : 0] pinc_in_0;
  wire [31 : 0] poff_in_1;
  wire [7 : 0] cosine_2;
  wire [31 : 0] phase_out_3;
  assign
    pinc_in_0[31] = pinc_in[31],
    pinc_in_0[30] = pinc_in[30],
    pinc_in_0[29] = pinc_in[29],
    pinc_in_0[28] = pinc_in[28],
    pinc_in_0[27] = pinc_in[27],
    pinc_in_0[26] = pinc_in[26],
    pinc_in_0[25] = pinc_in[25],
    pinc_in_0[24] = pinc_in[24],
    pinc_in_0[23] = pinc_in[23],
    pinc_in_0[22] = pinc_in[22],
    pinc_in_0[21] = pinc_in[21],
    pinc_in_0[20] = pinc_in[20],
    pinc_in_0[19] = pinc_in[19],
    pinc_in_0[18] = pinc_in[18],
    pinc_in_0[17] = pinc_in[17],
    pinc_in_0[16] = pinc_in[16],
    pinc_in_0[15] = pinc_in[15],
    pinc_in_0[14] = pinc_in[14],
    pinc_in_0[13] = pinc_in[13],
    pinc_in_0[12] = pinc_in[12],
    pinc_in_0[11] = pinc_in[11],
    pinc_in_0[10] = pinc_in[10],
    pinc_in_0[9] = pinc_in[9],
    pinc_in_0[8] = pinc_in[8],
    pinc_in_0[7] = pinc_in[7],
    pinc_in_0[6] = pinc_in[6],
    pinc_in_0[5] = pinc_in[5],
    pinc_in_0[4] = pinc_in[4],
    pinc_in_0[3] = pinc_in[3],
    pinc_in_0[2] = pinc_in[2],
    pinc_in_0[1] = pinc_in[1],
    pinc_in_0[0] = pinc_in[0],
    cosine[7] = cosine_2[7],
    cosine[6] = cosine_2[6],
    cosine[5] = cosine_2[5],
    cosine[4] = cosine_2[4],
    cosine[3] = cosine_2[3],
    cosine[2] = cosine_2[2],
    cosine[1] = cosine_2[1],
    cosine[0] = cosine_2[0],
    phase_out[31] = phase_out_3[31],
    phase_out[30] = phase_out_3[30],
    phase_out[29] = phase_out_3[29],
    phase_out[28] = phase_out_3[28],
    phase_out[27] = phase_out_3[27],
    phase_out[26] = phase_out_3[26],
    phase_out[25] = phase_out_3[25],
    phase_out[24] = phase_out_3[24],
    phase_out[23] = phase_out_3[23],
    phase_out[22] = phase_out_3[22],
    phase_out[21] = phase_out_3[21],
    phase_out[20] = phase_out_3[20],
    phase_out[19] = phase_out_3[19],
    phase_out[18] = phase_out_3[18],
    phase_out[17] = phase_out_3[17],
    phase_out[16] = phase_out_3[16],
    phase_out[15] = phase_out_3[15],
    phase_out[14] = phase_out_3[14],
    phase_out[13] = phase_out_3[13],
    phase_out[12] = phase_out_3[12],
    phase_out[11] = phase_out_3[11],
    phase_out[10] = phase_out_3[10],
    phase_out[9] = phase_out_3[9],
    phase_out[8] = phase_out_3[8],
    phase_out[7] = phase_out_3[7],
    phase_out[6] = phase_out_3[6],
    phase_out[5] = phase_out_3[5],
    phase_out[4] = phase_out_3[4],
    phase_out[3] = phase_out_3[3],
    phase_out[2] = phase_out_3[2],
    phase_out[1] = phase_out_3[1],
    phase_out[0] = phase_out_3[0],
    poff_in_1[31] = poff_in[31],
    poff_in_1[30] = poff_in[30],
    poff_in_1[29] = poff_in[29],
    poff_in_1[28] = poff_in[28],
    poff_in_1[27] = poff_in[27],
    poff_in_1[26] = poff_in[26],
    poff_in_1[25] = poff_in[25],
    poff_in_1[24] = poff_in[24],
    poff_in_1[23] = poff_in[23],
    poff_in_1[22] = poff_in[22],
    poff_in_1[21] = poff_in[21],
    poff_in_1[20] = poff_in[20],
    poff_in_1[19] = poff_in[19],
    poff_in_1[18] = poff_in[18],
    poff_in_1[17] = poff_in[17],
    poff_in_1[16] = poff_in[16],
    poff_in_1[15] = poff_in[15],
    poff_in_1[14] = poff_in[14],
    poff_in_1[13] = poff_in[13],
    poff_in_1[12] = poff_in[12],
    poff_in_1[11] = poff_in[11],
    poff_in_1[10] = poff_in[10],
    poff_in_1[9] = poff_in[9],
    poff_in_1[8] = poff_in[8],
    poff_in_1[7] = poff_in[7],
    poff_in_1[6] = poff_in[6],
    poff_in_1[5] = poff_in[5],
    poff_in_1[4] = poff_in[4],
    poff_in_1[3] = poff_in[3],
    poff_in_1[2] = poff_in[2],
    poff_in_1[1] = poff_in[1],
    poff_in_1[0] = poff_in[0];
  VCC   blk00000001 (
    .P(NLW_blk00000001_P_UNCONNECTED)
  );
  GND   blk00000002 (
    .G(NLW_blk00000002_G_UNCONNECTED)
  );
  RAMB8BWER #(
    .INIT_00 ( 256'h585653514F4C4A4745423F3D3A3734322F2C292623201D1A1714110E0B080502 ),
    .INIT_01 ( 256'h7E7E7E7E7D7D7C7C7B7B7A7978777675747371706E6D6B6A68666462605E5C5A ),
    .INIT_02 ( 256'h5A5C5E60626466686A6B6D6E7071737475767778797A7B7B7C7C7D7D7E7E7E7E ),
    .INIT_03 ( 256'h0205080B0E1114171A1D202326292C2F3234373A3D3F4245474A4C4F51535658 ),
    .INIT_04 ( 256'hA8AAADAFB1B4B6B9BBBEC1C3C6C9CCCED1D4D7DADDE0E3E6E9ECEFF2F5F8FBFE ),
    .INIT_05 ( 256'h82828282838384848585868788898A8B8C8D8F9092939596989A9C9EA0A2A4A6 ),
    .INIT_06 ( 256'hA6A4A2A09E9C9A9896959392908F8D8C8B8A8988878685858484838382828282 ),
    .INIT_07 ( 256'hFEFBF8F5F2EFECE9E6E3E0DDDAD7D4D1CECCC9C6C3C1BEBBB9B6B4B1AFADAAA8 ),
    .INIT_08 ( 256'h5A5C5E60626466686A6B6D6E7071737475767778797A7B7B7C7C7D7D7E7E7E7E ),
    .INIT_09 ( 256'h0205080B0E1114171A1D202326292C2F3234373A3D3F4245474A4C4F51535658 ),
    .INIT_0A ( 256'hA8AAADAFB1B4B6B9BBBEC1C3C6C9CCCED1D4D7DADDE0E3E6E9ECEFF2F5F8FBFE ),
    .INIT_0B ( 256'h82828282838384848585868788898A8B8C8D8F9092939596989A9C9EA0A2A4A6 ),
    .INIT_0C ( 256'hA6A4A2A09E9C9A9896959392908F8D8C8B8A8988878685858484838382828282 ),
    .INIT_0D ( 256'hFEFBF8F5F2EFECE9E6E3E0DDDAD7D4D1CECCC9C6C3C1BEBBB9B6B4B1AFADAAA8 ),
    .INIT_0E ( 256'h585653514F4C4A4745423F3D3A3734322F2C292623201D1A1714110E0B080502 ),
    .INIT_0F ( 256'h7E7E7E7E7D7D7C7C7B7B7A7978777675747371706E6D6B6A68666462605E5C5A ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DATA_WIDTH_A ( 9 ),
    .DATA_WIDTH_B ( 9 ),
    .DOA_REG ( 1 ),
    .DOB_REG ( 1 ),
    .EN_RSTRAM_A ( "TRUE" ),
    .EN_RSTRAM_B ( "TRUE" ),
    .INITP_00 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_01 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_02 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_10 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_11 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_12 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_13 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_14 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_15 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .RAM_MODE ( "TDP" ),
    .RST_PRIORITY_A ( "CE" ),
    .RST_PRIORITY_B ( "CE" ),
    .RSTTYPE ( "SYNC" ),
    .SRVAL_A ( 18'h00000 ),
    .SRVAL_B ( 18'h00000 ),
    .INIT_FILE ( "NONE" ),
    .SIM_COLLISION_CHECK ( "ALL" ))
  \blk00000003/blk0000016a  (
    .RSTBRST(\blk00000003/sig0000006b ),
    .ENBRDEN(\blk00000003/sig0000006c ),
    .REGCEA(\blk00000003/sig0000006c ),
    .ENAWREN(\blk00000003/sig0000006c ),
    .CLKAWRCLK(clk),
    .CLKBRDCLK(clk),
    .REGCEBREGCE(\blk00000003/sig0000006c ),
    .RSTA(\blk00000003/sig0000006b ),
    .WEAWEL({\blk00000003/sig0000006b , \blk00000003/sig0000006b }),
    .DOADO({\NLW_blk00000003/blk0000016a_DOADO<15>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOADO<13>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOADO<11>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOADO<9>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<8>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOADO<7>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<6>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOADO<5>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<4>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOADO<3>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<2>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOADO<1>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOADO<0>_UNCONNECTED }),
    .DOPADOP({\NLW_blk00000003/blk0000016a_DOPADOP<1>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\NLW_blk00000003/blk0000016a_DOPBDOP<1>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOPBDOP<0>_UNCONNECTED }),
    .WEBWEU({\blk00000003/sig0000006b , \blk00000003/sig0000006b }),
    .ADDRAWRADDR({\blk00000003/sig0000006b , \blk00000003/sig0000006b , \blk00000003/sig000000f1 , \blk00000003/sig000000f2 , 
\blk00000003/sig000000f3 , \blk00000003/sig000000f4 , \blk00000003/sig000000f5 , \blk00000003/sig000000f6 , \blk00000003/sig000000f7 , 
\blk00000003/sig000000f8 , \NLW_blk00000003/blk0000016a_ADDRAWRADDR<2>_UNCONNECTED , \NLW_blk00000003/blk0000016a_ADDRAWRADDR<1>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_ADDRAWRADDR<0>_UNCONNECTED }),
    .DIPBDIP({\NLW_blk00000003/blk0000016a_DIPBDIP<1>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIPBDIP<0>_UNCONNECTED }),
    .DIBDI({\NLW_blk00000003/blk0000016a_DIBDI<15>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIBDI<13>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIBDI<11>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIBDI<9>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<8>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIBDI<7>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<6>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIBDI<5>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<4>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIBDI<3>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<2>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIBDI<1>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIBDI<0>_UNCONNECTED }),
    .DIADI({\NLW_blk00000003/blk0000016a_DIADI<15>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIADI<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIADI<13>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIADI<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIADI<11>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIADI<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DIADI<9>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DIADI<8>_UNCONNECTED , \blk00000003/sig0000006b , 
\blk00000003/sig0000006b , \blk00000003/sig0000006b , \blk00000003/sig0000006b , \blk00000003/sig0000006b , \blk00000003/sig0000006b , 
\blk00000003/sig0000006b , \blk00000003/sig0000006b }),
    .ADDRBRDADDR({\blk00000003/sig0000006b , \blk00000003/sig0000006c , \blk00000003/sig000000f1 , \blk00000003/sig000000f2 , 
\blk00000003/sig000000f3 , \blk00000003/sig000000f4 , \blk00000003/sig000000f5 , \blk00000003/sig000000f6 , \blk00000003/sig000000f7 , 
\blk00000003/sig000000f8 , \NLW_blk00000003/blk0000016a_ADDRBRDADDR<2>_UNCONNECTED , \NLW_blk00000003/blk0000016a_ADDRBRDADDR<1>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_ADDRBRDADDR<0>_UNCONNECTED }),
    .DOBDO({\NLW_blk00000003/blk0000016a_DOBDO<15>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOBDO<14>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOBDO<13>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOBDO<12>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOBDO<11>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOBDO<10>_UNCONNECTED , 
\NLW_blk00000003/blk0000016a_DOBDO<9>_UNCONNECTED , \NLW_blk00000003/blk0000016a_DOBDO<8>_UNCONNECTED , cosine_2[7], cosine_2[6], cosine_2[5], 
cosine_2[4], cosine_2[3], cosine_2[2], cosine_2[1], cosine_2[0]}),
    .DIPADIP({\NLW_blk00000003/blk0000016a_DIPADIP<1>_UNCONNECTED , \blk00000003/sig0000006b })
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000169  (
    .C(clk),
    .D(\blk00000003/sig00000110 ),
    .Q(\blk00000003/sig00000130 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000168  (
    .C(clk),
    .D(\blk00000003/sig0000010f ),
    .Q(\blk00000003/sig0000012f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000167  (
    .C(clk),
    .D(\blk00000003/sig0000010e ),
    .Q(\blk00000003/sig0000012e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000166  (
    .C(clk),
    .D(\blk00000003/sig0000010d ),
    .Q(\blk00000003/sig0000012d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000165  (
    .C(clk),
    .D(\blk00000003/sig0000010c ),
    .Q(\blk00000003/sig0000012c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000164  (
    .C(clk),
    .D(\blk00000003/sig0000010b ),
    .Q(\blk00000003/sig0000012b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000163  (
    .C(clk),
    .D(\blk00000003/sig0000010a ),
    .Q(\blk00000003/sig0000012a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000162  (
    .C(clk),
    .D(\blk00000003/sig00000109 ),
    .Q(\blk00000003/sig00000129 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000161  (
    .C(clk),
    .D(\blk00000003/sig00000108 ),
    .Q(\blk00000003/sig00000128 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000160  (
    .C(clk),
    .D(\blk00000003/sig00000107 ),
    .Q(\blk00000003/sig00000127 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000015f  (
    .C(clk),
    .D(\blk00000003/sig00000106 ),
    .Q(\blk00000003/sig00000126 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000015e  (
    .C(clk),
    .D(\blk00000003/sig00000105 ),
    .Q(\blk00000003/sig00000125 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000015d  (
    .C(clk),
    .D(\blk00000003/sig00000104 ),
    .Q(\blk00000003/sig00000124 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000015c  (
    .C(clk),
    .D(\blk00000003/sig00000103 ),
    .Q(\blk00000003/sig00000123 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000015b  (
    .C(clk),
    .D(\blk00000003/sig00000102 ),
    .Q(\blk00000003/sig00000122 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000015a  (
    .C(clk),
    .D(\blk00000003/sig00000101 ),
    .Q(\blk00000003/sig00000121 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000159  (
    .C(clk),
    .D(\blk00000003/sig00000100 ),
    .Q(\blk00000003/sig00000120 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000158  (
    .C(clk),
    .D(\blk00000003/sig000000ff ),
    .Q(\blk00000003/sig0000011f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000157  (
    .C(clk),
    .D(\blk00000003/sig000000fe ),
    .Q(\blk00000003/sig0000011e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000156  (
    .C(clk),
    .D(\blk00000003/sig000000fd ),
    .Q(\blk00000003/sig0000011d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000155  (
    .C(clk),
    .D(\blk00000003/sig000000fc ),
    .Q(\blk00000003/sig0000011c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000154  (
    .C(clk),
    .D(\blk00000003/sig000000fb ),
    .Q(\blk00000003/sig0000011b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000153  (
    .C(clk),
    .D(\blk00000003/sig000000fa ),
    .Q(\blk00000003/sig0000011a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000152  (
    .C(clk),
    .D(\blk00000003/sig000000f9 ),
    .Q(\blk00000003/sig00000119 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000151  (
    .C(clk),
    .D(\blk00000003/sig000000f8 ),
    .Q(\blk00000003/sig00000118 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000150  (
    .C(clk),
    .D(\blk00000003/sig000000f7 ),
    .Q(\blk00000003/sig00000117 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000014f  (
    .C(clk),
    .D(\blk00000003/sig000000f6 ),
    .Q(\blk00000003/sig00000116 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000014e  (
    .C(clk),
    .D(\blk00000003/sig000000f5 ),
    .Q(\blk00000003/sig00000115 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000014d  (
    .C(clk),
    .D(\blk00000003/sig000000f4 ),
    .Q(\blk00000003/sig00000114 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000014c  (
    .C(clk),
    .D(\blk00000003/sig000000f3 ),
    .Q(\blk00000003/sig00000113 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000014b  (
    .C(clk),
    .D(\blk00000003/sig000000f2 ),
    .Q(\blk00000003/sig00000112 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000014a  (
    .C(clk),
    .D(\blk00000003/sig000000f1 ),
    .Q(\blk00000003/sig00000111 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000149  (
    .C(clk),
    .D(\blk00000003/sig00000130 ),
    .Q(phase_out_3[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000148  (
    .C(clk),
    .D(\blk00000003/sig0000012f ),
    .Q(phase_out_3[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000147  (
    .C(clk),
    .D(\blk00000003/sig0000012e ),
    .Q(phase_out_3[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000146  (
    .C(clk),
    .D(\blk00000003/sig0000012d ),
    .Q(phase_out_3[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000145  (
    .C(clk),
    .D(\blk00000003/sig0000012c ),
    .Q(phase_out_3[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000144  (
    .C(clk),
    .D(\blk00000003/sig0000012b ),
    .Q(phase_out_3[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000143  (
    .C(clk),
    .D(\blk00000003/sig0000012a ),
    .Q(phase_out_3[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000142  (
    .C(clk),
    .D(\blk00000003/sig00000129 ),
    .Q(phase_out_3[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000141  (
    .C(clk),
    .D(\blk00000003/sig00000128 ),
    .Q(phase_out_3[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000140  (
    .C(clk),
    .D(\blk00000003/sig00000127 ),
    .Q(phase_out_3[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000013f  (
    .C(clk),
    .D(\blk00000003/sig00000126 ),
    .Q(phase_out_3[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000013e  (
    .C(clk),
    .D(\blk00000003/sig00000125 ),
    .Q(phase_out_3[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000013d  (
    .C(clk),
    .D(\blk00000003/sig00000124 ),
    .Q(phase_out_3[12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000013c  (
    .C(clk),
    .D(\blk00000003/sig00000123 ),
    .Q(phase_out_3[13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000013b  (
    .C(clk),
    .D(\blk00000003/sig00000122 ),
    .Q(phase_out_3[14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000013a  (
    .C(clk),
    .D(\blk00000003/sig00000121 ),
    .Q(phase_out_3[15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000139  (
    .C(clk),
    .D(\blk00000003/sig00000120 ),
    .Q(phase_out_3[16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000138  (
    .C(clk),
    .D(\blk00000003/sig0000011f ),
    .Q(phase_out_3[17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000137  (
    .C(clk),
    .D(\blk00000003/sig0000011e ),
    .Q(phase_out_3[18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000136  (
    .C(clk),
    .D(\blk00000003/sig0000011d ),
    .Q(phase_out_3[19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000135  (
    .C(clk),
    .D(\blk00000003/sig0000011c ),
    .Q(phase_out_3[20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000134  (
    .C(clk),
    .D(\blk00000003/sig0000011b ),
    .Q(phase_out_3[21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000133  (
    .C(clk),
    .D(\blk00000003/sig0000011a ),
    .Q(phase_out_3[22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000132  (
    .C(clk),
    .D(\blk00000003/sig00000119 ),
    .Q(phase_out_3[23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000131  (
    .C(clk),
    .D(\blk00000003/sig00000118 ),
    .Q(phase_out_3[24])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000130  (
    .C(clk),
    .D(\blk00000003/sig00000117 ),
    .Q(phase_out_3[25])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000012f  (
    .C(clk),
    .D(\blk00000003/sig00000116 ),
    .Q(phase_out_3[26])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000012e  (
    .C(clk),
    .D(\blk00000003/sig00000115 ),
    .Q(phase_out_3[27])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000012d  (
    .C(clk),
    .D(\blk00000003/sig00000114 ),
    .Q(phase_out_3[28])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000012c  (
    .C(clk),
    .D(\blk00000003/sig00000113 ),
    .Q(phase_out_3[29])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000012b  (
    .C(clk),
    .D(\blk00000003/sig00000112 ),
    .Q(phase_out_3[30])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000012a  (
    .C(clk),
    .D(\blk00000003/sig00000111 ),
    .Q(phase_out_3[31])
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000129  (
    .C(clk),
    .D(\blk00000003/sig000000ef ),
    .Q(\blk00000003/sig00000110 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000128  (
    .C(clk),
    .D(\blk00000003/sig000000ee ),
    .Q(\blk00000003/sig0000010f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000127  (
    .C(clk),
    .D(\blk00000003/sig000000ed ),
    .Q(\blk00000003/sig0000010e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000126  (
    .C(clk),
    .D(\blk00000003/sig000000ec ),
    .Q(\blk00000003/sig0000010d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000125  (
    .C(clk),
    .D(\blk00000003/sig000000eb ),
    .Q(\blk00000003/sig0000010c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000124  (
    .C(clk),
    .D(\blk00000003/sig000000ea ),
    .Q(\blk00000003/sig0000010b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000123  (
    .C(clk),
    .D(\blk00000003/sig000000e9 ),
    .Q(\blk00000003/sig0000010a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000122  (
    .C(clk),
    .D(\blk00000003/sig000000e8 ),
    .Q(\blk00000003/sig00000109 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000121  (
    .C(clk),
    .D(\blk00000003/sig000000e7 ),
    .Q(\blk00000003/sig00000108 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000120  (
    .C(clk),
    .D(\blk00000003/sig000000e6 ),
    .Q(\blk00000003/sig00000107 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000011f  (
    .C(clk),
    .D(\blk00000003/sig000000e5 ),
    .Q(\blk00000003/sig00000106 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000011e  (
    .C(clk),
    .D(\blk00000003/sig000000e4 ),
    .Q(\blk00000003/sig00000105 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000011d  (
    .C(clk),
    .D(\blk00000003/sig000000e3 ),
    .Q(\blk00000003/sig00000104 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000011c  (
    .C(clk),
    .D(\blk00000003/sig000000e2 ),
    .Q(\blk00000003/sig00000103 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000011b  (
    .C(clk),
    .D(\blk00000003/sig000000e1 ),
    .Q(\blk00000003/sig00000102 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000011a  (
    .C(clk),
    .D(\blk00000003/sig000000e0 ),
    .Q(\blk00000003/sig00000101 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000119  (
    .C(clk),
    .D(\blk00000003/sig000000df ),
    .Q(\blk00000003/sig00000100 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000118  (
    .C(clk),
    .D(\blk00000003/sig000000de ),
    .Q(\blk00000003/sig000000ff )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000117  (
    .C(clk),
    .D(\blk00000003/sig000000dd ),
    .Q(\blk00000003/sig000000fe )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000116  (
    .C(clk),
    .D(\blk00000003/sig000000dc ),
    .Q(\blk00000003/sig000000fd )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000115  (
    .C(clk),
    .D(\blk00000003/sig000000db ),
    .Q(\blk00000003/sig000000fc )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000114  (
    .C(clk),
    .D(\blk00000003/sig000000da ),
    .Q(\blk00000003/sig000000fb )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000113  (
    .C(clk),
    .D(\blk00000003/sig000000d9 ),
    .Q(\blk00000003/sig000000fa )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000112  (
    .C(clk),
    .D(\blk00000003/sig000000d8 ),
    .Q(\blk00000003/sig000000f9 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000111  (
    .C(clk),
    .D(\blk00000003/sig000000d7 ),
    .Q(\blk00000003/sig000000f8 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000110  (
    .C(clk),
    .D(\blk00000003/sig000000d6 ),
    .Q(\blk00000003/sig000000f7 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000010f  (
    .C(clk),
    .D(\blk00000003/sig000000d5 ),
    .Q(\blk00000003/sig000000f6 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000010e  (
    .C(clk),
    .D(\blk00000003/sig000000d4 ),
    .Q(\blk00000003/sig000000f5 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000010d  (
    .C(clk),
    .D(\blk00000003/sig000000d3 ),
    .Q(\blk00000003/sig000000f4 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000010c  (
    .C(clk),
    .D(\blk00000003/sig000000d2 ),
    .Q(\blk00000003/sig000000f3 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000010b  (
    .C(clk),
    .D(\blk00000003/sig000000d1 ),
    .Q(\blk00000003/sig000000f2 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000010a  (
    .C(clk),
    .D(\blk00000003/sig000000d0 ),
    .Q(\blk00000003/sig000000f1 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000109  (
    .C(clk),
    .D(\blk00000003/sig000000cf ),
    .Q(\blk00000003/sig000000f0 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000046  (
    .C(clk),
    .D(\blk00000003/sig000000cd ),
    .R(sclr),
    .Q(\blk00000003/sig000000ce )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000045  (
    .C(clk),
    .D(\blk00000003/sig000000cb ),
    .R(sclr),
    .Q(\blk00000003/sig000000cc )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000044  (
    .C(clk),
    .D(\blk00000003/sig000000c9 ),
    .R(sclr),
    .Q(\blk00000003/sig000000ca )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000043  (
    .C(clk),
    .D(\blk00000003/sig000000c7 ),
    .R(sclr),
    .Q(\blk00000003/sig000000c8 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000042  (
    .C(clk),
    .D(\blk00000003/sig000000c5 ),
    .R(sclr),
    .Q(\blk00000003/sig000000c6 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000041  (
    .C(clk),
    .D(\blk00000003/sig000000c3 ),
    .R(sclr),
    .Q(\blk00000003/sig000000c4 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000040  (
    .C(clk),
    .D(\blk00000003/sig000000c1 ),
    .R(sclr),
    .Q(\blk00000003/sig000000c2 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003f  (
    .C(clk),
    .D(\blk00000003/sig000000bf ),
    .R(sclr),
    .Q(\blk00000003/sig000000c0 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003e  (
    .C(clk),
    .D(\blk00000003/sig000000bd ),
    .R(sclr),
    .Q(\blk00000003/sig000000be )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003d  (
    .C(clk),
    .D(\blk00000003/sig000000bb ),
    .R(sclr),
    .Q(\blk00000003/sig000000bc )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003c  (
    .C(clk),
    .D(\blk00000003/sig000000b9 ),
    .R(sclr),
    .Q(\blk00000003/sig000000ba )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003b  (
    .C(clk),
    .D(\blk00000003/sig000000b7 ),
    .R(sclr),
    .Q(\blk00000003/sig000000b8 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000003a  (
    .C(clk),
    .D(\blk00000003/sig000000b5 ),
    .R(sclr),
    .Q(\blk00000003/sig000000b6 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000039  (
    .C(clk),
    .D(\blk00000003/sig000000b3 ),
    .R(sclr),
    .Q(\blk00000003/sig000000b4 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000038  (
    .C(clk),
    .D(\blk00000003/sig000000b1 ),
    .R(sclr),
    .Q(\blk00000003/sig000000b2 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000037  (
    .C(clk),
    .D(\blk00000003/sig000000af ),
    .R(sclr),
    .Q(\blk00000003/sig000000b0 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000036  (
    .C(clk),
    .D(\blk00000003/sig000000ad ),
    .R(sclr),
    .Q(\blk00000003/sig000000ae )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000035  (
    .C(clk),
    .D(\blk00000003/sig000000ab ),
    .R(sclr),
    .Q(\blk00000003/sig000000ac )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000034  (
    .C(clk),
    .D(\blk00000003/sig000000a9 ),
    .R(sclr),
    .Q(\blk00000003/sig000000aa )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000033  (
    .C(clk),
    .D(\blk00000003/sig000000a7 ),
    .R(sclr),
    .Q(\blk00000003/sig000000a8 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000032  (
    .C(clk),
    .D(\blk00000003/sig000000a5 ),
    .R(sclr),
    .Q(\blk00000003/sig000000a6 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000031  (
    .C(clk),
    .D(\blk00000003/sig000000a3 ),
    .R(sclr),
    .Q(\blk00000003/sig000000a4 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000030  (
    .C(clk),
    .D(\blk00000003/sig000000a1 ),
    .R(sclr),
    .Q(\blk00000003/sig000000a2 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002f  (
    .C(clk),
    .D(\blk00000003/sig0000009f ),
    .R(sclr),
    .Q(\blk00000003/sig000000a0 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002e  (
    .C(clk),
    .D(\blk00000003/sig0000009d ),
    .R(sclr),
    .Q(\blk00000003/sig0000009e )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002d  (
    .C(clk),
    .D(\blk00000003/sig0000009b ),
    .R(sclr),
    .Q(\blk00000003/sig0000009c )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002c  (
    .C(clk),
    .D(\blk00000003/sig00000099 ),
    .R(sclr),
    .Q(\blk00000003/sig0000009a )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002b  (
    .C(clk),
    .D(\blk00000003/sig00000097 ),
    .R(sclr),
    .Q(\blk00000003/sig00000098 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000002a  (
    .C(clk),
    .D(\blk00000003/sig00000095 ),
    .R(sclr),
    .Q(\blk00000003/sig00000096 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000029  (
    .C(clk),
    .D(\blk00000003/sig00000093 ),
    .R(sclr),
    .Q(\blk00000003/sig00000094 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000028  (
    .C(clk),
    .D(\blk00000003/sig00000091 ),
    .R(sclr),
    .Q(\blk00000003/sig00000092 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000027  (
    .C(clk),
    .D(\blk00000003/sig0000008f ),
    .R(sclr),
    .Q(\blk00000003/sig00000090 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000026  (
    .C(clk),
    .D(\blk00000003/sig0000008d ),
    .R(sclr),
    .Q(\blk00000003/sig0000008e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000025  (
    .C(clk),
    .D(poff_in_1[0]),
    .Q(\blk00000003/sig0000008c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000024  (
    .C(clk),
    .D(poff_in_1[1]),
    .Q(\blk00000003/sig0000008b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000023  (
    .C(clk),
    .D(poff_in_1[2]),
    .Q(\blk00000003/sig0000008a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000022  (
    .C(clk),
    .D(poff_in_1[3]),
    .Q(\blk00000003/sig00000089 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000021  (
    .C(clk),
    .D(poff_in_1[4]),
    .Q(\blk00000003/sig00000088 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000020  (
    .C(clk),
    .D(poff_in_1[5]),
    .Q(\blk00000003/sig00000087 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001f  (
    .C(clk),
    .D(poff_in_1[6]),
    .Q(\blk00000003/sig00000086 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001e  (
    .C(clk),
    .D(poff_in_1[7]),
    .Q(\blk00000003/sig00000085 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001d  (
    .C(clk),
    .D(poff_in_1[8]),
    .Q(\blk00000003/sig00000084 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001c  (
    .C(clk),
    .D(poff_in_1[9]),
    .Q(\blk00000003/sig00000083 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001b  (
    .C(clk),
    .D(poff_in_1[10]),
    .Q(\blk00000003/sig00000082 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000001a  (
    .C(clk),
    .D(poff_in_1[11]),
    .Q(\blk00000003/sig00000081 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000019  (
    .C(clk),
    .D(poff_in_1[12]),
    .Q(\blk00000003/sig00000080 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000018  (
    .C(clk),
    .D(poff_in_1[13]),
    .Q(\blk00000003/sig0000007f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000017  (
    .C(clk),
    .D(poff_in_1[14]),
    .Q(\blk00000003/sig0000007e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000016  (
    .C(clk),
    .D(poff_in_1[15]),
    .Q(\blk00000003/sig0000007d )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000015  (
    .C(clk),
    .D(poff_in_1[16]),
    .Q(\blk00000003/sig0000007c )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000014  (
    .C(clk),
    .D(poff_in_1[17]),
    .Q(\blk00000003/sig0000007b )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000013  (
    .C(clk),
    .D(poff_in_1[18]),
    .Q(\blk00000003/sig0000007a )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000012  (
    .C(clk),
    .D(poff_in_1[19]),
    .Q(\blk00000003/sig00000079 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000011  (
    .C(clk),
    .D(poff_in_1[20]),
    .Q(\blk00000003/sig00000078 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000010  (
    .C(clk),
    .D(poff_in_1[21]),
    .Q(\blk00000003/sig00000077 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000f  (
    .C(clk),
    .D(poff_in_1[22]),
    .Q(\blk00000003/sig00000076 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000e  (
    .C(clk),
    .D(poff_in_1[23]),
    .Q(\blk00000003/sig00000075 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000d  (
    .C(clk),
    .D(poff_in_1[24]),
    .Q(\blk00000003/sig00000074 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000c  (
    .C(clk),
    .D(poff_in_1[25]),
    .Q(\blk00000003/sig00000073 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000b  (
    .C(clk),
    .D(poff_in_1[26]),
    .Q(\blk00000003/sig00000072 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk0000000a  (
    .C(clk),
    .D(poff_in_1[27]),
    .Q(\blk00000003/sig00000071 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000009  (
    .C(clk),
    .D(poff_in_1[28]),
    .Q(\blk00000003/sig00000070 )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000008  (
    .C(clk),
    .D(poff_in_1[29]),
    .Q(\blk00000003/sig0000006f )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000007  (
    .C(clk),
    .D(poff_in_1[30]),
    .Q(\blk00000003/sig0000006e )
  );
  FD #(
    .INIT ( 1'b0 ))
  \blk00000003/blk00000006  (
    .C(clk),
    .D(poff_in_1[31]),
    .Q(\blk00000003/sig0000006d )
  );
  VCC   \blk00000003/blk00000005  (
    .P(\blk00000003/sig0000006c )
  );
  GND   \blk00000003/blk00000004  (
    .G(\blk00000003/sig0000006b )
  );
  XORCY   \blk00000003/blk00000047/blk000000a7  (
    .CI(\blk00000003/blk00000047/sig000001d0 ),
    .LI(\blk00000003/blk00000047/sig000001d1 ),
    .O(\blk00000003/sig0000008f )
  );
  MUXCY   \blk00000003/blk00000047/blk000000a6  (
    .CI(\blk00000003/blk00000047/sig000001d0 ),
    .DI(\blk00000003/sig00000090 ),
    .S(\blk00000003/blk00000047/sig000001d1 ),
    .O(\blk00000003/sig0000008d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk000000a5  (
    .I0(\blk00000003/sig00000090 ),
    .I1(pinc_in_0[31]),
    .O(\blk00000003/blk00000047/sig000001d1 )
  );
  XORCY   \blk00000003/blk00000047/blk000000a4  (
    .CI(\blk00000003/blk00000047/sig000001ce ),
    .LI(\blk00000003/blk00000047/sig000001cf ),
    .O(\blk00000003/sig00000091 )
  );
  MUXCY   \blk00000003/blk00000047/blk000000a3  (
    .CI(\blk00000003/blk00000047/sig000001ce ),
    .DI(\blk00000003/sig00000092 ),
    .S(\blk00000003/blk00000047/sig000001cf ),
    .O(\blk00000003/blk00000047/sig000001d0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk000000a2  (
    .I0(\blk00000003/sig00000092 ),
    .I1(pinc_in_0[30]),
    .O(\blk00000003/blk00000047/sig000001cf )
  );
  XORCY   \blk00000003/blk00000047/blk000000a1  (
    .CI(\blk00000003/blk00000047/sig000001cc ),
    .LI(\blk00000003/blk00000047/sig000001cd ),
    .O(\blk00000003/sig00000093 )
  );
  MUXCY   \blk00000003/blk00000047/blk000000a0  (
    .CI(\blk00000003/blk00000047/sig000001cc ),
    .DI(\blk00000003/sig00000094 ),
    .S(\blk00000003/blk00000047/sig000001cd ),
    .O(\blk00000003/blk00000047/sig000001ce )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000009f  (
    .I0(\blk00000003/sig00000094 ),
    .I1(pinc_in_0[29]),
    .O(\blk00000003/blk00000047/sig000001cd )
  );
  XORCY   \blk00000003/blk00000047/blk0000009e  (
    .CI(\blk00000003/blk00000047/sig000001ca ),
    .LI(\blk00000003/blk00000047/sig000001cb ),
    .O(\blk00000003/sig00000095 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000009d  (
    .CI(\blk00000003/blk00000047/sig000001ca ),
    .DI(\blk00000003/sig00000096 ),
    .S(\blk00000003/blk00000047/sig000001cb ),
    .O(\blk00000003/blk00000047/sig000001cc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000009c  (
    .I0(\blk00000003/sig00000096 ),
    .I1(pinc_in_0[28]),
    .O(\blk00000003/blk00000047/sig000001cb )
  );
  XORCY   \blk00000003/blk00000047/blk0000009b  (
    .CI(\blk00000003/blk00000047/sig000001c8 ),
    .LI(\blk00000003/blk00000047/sig000001c9 ),
    .O(\blk00000003/sig00000097 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000009a  (
    .CI(\blk00000003/blk00000047/sig000001c8 ),
    .DI(\blk00000003/sig00000098 ),
    .S(\blk00000003/blk00000047/sig000001c9 ),
    .O(\blk00000003/blk00000047/sig000001ca )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000099  (
    .I0(pinc_in_0[27]),
    .I1(\blk00000003/sig00000098 ),
    .O(\blk00000003/blk00000047/sig000001c9 )
  );
  XORCY   \blk00000003/blk00000047/blk00000098  (
    .CI(\blk00000003/blk00000047/sig000001c6 ),
    .LI(\blk00000003/blk00000047/sig000001c7 ),
    .O(\blk00000003/sig00000099 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000097  (
    .CI(\blk00000003/blk00000047/sig000001c6 ),
    .DI(\blk00000003/sig0000009a ),
    .S(\blk00000003/blk00000047/sig000001c7 ),
    .O(\blk00000003/blk00000047/sig000001c8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000096  (
    .I0(pinc_in_0[26]),
    .I1(\blk00000003/sig0000009a ),
    .O(\blk00000003/blk00000047/sig000001c7 )
  );
  XORCY   \blk00000003/blk00000047/blk00000095  (
    .CI(\blk00000003/blk00000047/sig000001c4 ),
    .LI(\blk00000003/blk00000047/sig000001c5 ),
    .O(\blk00000003/sig0000009b )
  );
  MUXCY   \blk00000003/blk00000047/blk00000094  (
    .CI(\blk00000003/blk00000047/sig000001c4 ),
    .DI(\blk00000003/sig0000009c ),
    .S(\blk00000003/blk00000047/sig000001c5 ),
    .O(\blk00000003/blk00000047/sig000001c6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000093  (
    .I0(pinc_in_0[25]),
    .I1(\blk00000003/sig0000009c ),
    .O(\blk00000003/blk00000047/sig000001c5 )
  );
  XORCY   \blk00000003/blk00000047/blk00000092  (
    .CI(\blk00000003/blk00000047/sig000001c2 ),
    .LI(\blk00000003/blk00000047/sig000001c3 ),
    .O(\blk00000003/sig0000009d )
  );
  MUXCY   \blk00000003/blk00000047/blk00000091  (
    .CI(\blk00000003/blk00000047/sig000001c2 ),
    .DI(\blk00000003/sig0000009e ),
    .S(\blk00000003/blk00000047/sig000001c3 ),
    .O(\blk00000003/blk00000047/sig000001c4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000090  (
    .I0(pinc_in_0[24]),
    .I1(\blk00000003/sig0000009e ),
    .O(\blk00000003/blk00000047/sig000001c3 )
  );
  XORCY   \blk00000003/blk00000047/blk0000008f  (
    .CI(\blk00000003/blk00000047/sig000001c0 ),
    .LI(\blk00000003/blk00000047/sig000001c1 ),
    .O(\blk00000003/sig0000009f )
  );
  MUXCY   \blk00000003/blk00000047/blk0000008e  (
    .CI(\blk00000003/blk00000047/sig000001c0 ),
    .DI(\blk00000003/sig000000a0 ),
    .S(\blk00000003/blk00000047/sig000001c1 ),
    .O(\blk00000003/blk00000047/sig000001c2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000008d  (
    .I0(pinc_in_0[23]),
    .I1(\blk00000003/sig000000a0 ),
    .O(\blk00000003/blk00000047/sig000001c1 )
  );
  XORCY   \blk00000003/blk00000047/blk0000008c  (
    .CI(\blk00000003/blk00000047/sig000001be ),
    .LI(\blk00000003/blk00000047/sig000001bf ),
    .O(\blk00000003/sig000000a1 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000008b  (
    .CI(\blk00000003/blk00000047/sig000001be ),
    .DI(\blk00000003/sig000000a2 ),
    .S(\blk00000003/blk00000047/sig000001bf ),
    .O(\blk00000003/blk00000047/sig000001c0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000008a  (
    .I0(pinc_in_0[22]),
    .I1(\blk00000003/sig000000a2 ),
    .O(\blk00000003/blk00000047/sig000001bf )
  );
  XORCY   \blk00000003/blk00000047/blk00000089  (
    .CI(\blk00000003/blk00000047/sig000001bc ),
    .LI(\blk00000003/blk00000047/sig000001bd ),
    .O(\blk00000003/sig000000a3 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000088  (
    .CI(\blk00000003/blk00000047/sig000001bc ),
    .DI(\blk00000003/sig000000a4 ),
    .S(\blk00000003/blk00000047/sig000001bd ),
    .O(\blk00000003/blk00000047/sig000001be )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000087  (
    .I0(pinc_in_0[21]),
    .I1(\blk00000003/sig000000a4 ),
    .O(\blk00000003/blk00000047/sig000001bd )
  );
  XORCY   \blk00000003/blk00000047/blk00000086  (
    .CI(\blk00000003/blk00000047/sig000001ba ),
    .LI(\blk00000003/blk00000047/sig000001bb ),
    .O(\blk00000003/sig000000a5 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000085  (
    .CI(\blk00000003/blk00000047/sig000001ba ),
    .DI(\blk00000003/sig000000a6 ),
    .S(\blk00000003/blk00000047/sig000001bb ),
    .O(\blk00000003/blk00000047/sig000001bc )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000084  (
    .I0(pinc_in_0[20]),
    .I1(\blk00000003/sig000000a6 ),
    .O(\blk00000003/blk00000047/sig000001bb )
  );
  XORCY   \blk00000003/blk00000047/blk00000083  (
    .CI(\blk00000003/blk00000047/sig000001b8 ),
    .LI(\blk00000003/blk00000047/sig000001b9 ),
    .O(\blk00000003/sig000000a7 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000082  (
    .CI(\blk00000003/blk00000047/sig000001b8 ),
    .DI(\blk00000003/sig000000a8 ),
    .S(\blk00000003/blk00000047/sig000001b9 ),
    .O(\blk00000003/blk00000047/sig000001ba )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000081  (
    .I0(pinc_in_0[19]),
    .I1(\blk00000003/sig000000a8 ),
    .O(\blk00000003/blk00000047/sig000001b9 )
  );
  XORCY   \blk00000003/blk00000047/blk00000080  (
    .CI(\blk00000003/blk00000047/sig000001b6 ),
    .LI(\blk00000003/blk00000047/sig000001b7 ),
    .O(\blk00000003/sig000000a9 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000007f  (
    .CI(\blk00000003/blk00000047/sig000001b6 ),
    .DI(\blk00000003/sig000000aa ),
    .S(\blk00000003/blk00000047/sig000001b7 ),
    .O(\blk00000003/blk00000047/sig000001b8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000007e  (
    .I0(pinc_in_0[18]),
    .I1(\blk00000003/sig000000aa ),
    .O(\blk00000003/blk00000047/sig000001b7 )
  );
  XORCY   \blk00000003/blk00000047/blk0000007d  (
    .CI(\blk00000003/blk00000047/sig000001b4 ),
    .LI(\blk00000003/blk00000047/sig000001b5 ),
    .O(\blk00000003/sig000000ab )
  );
  MUXCY   \blk00000003/blk00000047/blk0000007c  (
    .CI(\blk00000003/blk00000047/sig000001b4 ),
    .DI(\blk00000003/sig000000ac ),
    .S(\blk00000003/blk00000047/sig000001b5 ),
    .O(\blk00000003/blk00000047/sig000001b6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000007b  (
    .I0(pinc_in_0[17]),
    .I1(\blk00000003/sig000000ac ),
    .O(\blk00000003/blk00000047/sig000001b5 )
  );
  XORCY   \blk00000003/blk00000047/blk0000007a  (
    .CI(\blk00000003/blk00000047/sig000001b2 ),
    .LI(\blk00000003/blk00000047/sig000001b3 ),
    .O(\blk00000003/sig000000ad )
  );
  MUXCY   \blk00000003/blk00000047/blk00000079  (
    .CI(\blk00000003/blk00000047/sig000001b2 ),
    .DI(\blk00000003/sig000000ae ),
    .S(\blk00000003/blk00000047/sig000001b3 ),
    .O(\blk00000003/blk00000047/sig000001b4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000078  (
    .I0(pinc_in_0[16]),
    .I1(\blk00000003/sig000000ae ),
    .O(\blk00000003/blk00000047/sig000001b3 )
  );
  XORCY   \blk00000003/blk00000047/blk00000077  (
    .CI(\blk00000003/blk00000047/sig000001b0 ),
    .LI(\blk00000003/blk00000047/sig000001b1 ),
    .O(\blk00000003/sig000000af )
  );
  MUXCY   \blk00000003/blk00000047/blk00000076  (
    .CI(\blk00000003/blk00000047/sig000001b0 ),
    .DI(\blk00000003/sig000000b0 ),
    .S(\blk00000003/blk00000047/sig000001b1 ),
    .O(\blk00000003/blk00000047/sig000001b2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000075  (
    .I0(pinc_in_0[15]),
    .I1(\blk00000003/sig000000b0 ),
    .O(\blk00000003/blk00000047/sig000001b1 )
  );
  XORCY   \blk00000003/blk00000047/blk00000074  (
    .CI(\blk00000003/blk00000047/sig000001ae ),
    .LI(\blk00000003/blk00000047/sig000001af ),
    .O(\blk00000003/sig000000b1 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000073  (
    .CI(\blk00000003/blk00000047/sig000001ae ),
    .DI(\blk00000003/sig000000b2 ),
    .S(\blk00000003/blk00000047/sig000001af ),
    .O(\blk00000003/blk00000047/sig000001b0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000072  (
    .I0(pinc_in_0[14]),
    .I1(\blk00000003/sig000000b2 ),
    .O(\blk00000003/blk00000047/sig000001af )
  );
  XORCY   \blk00000003/blk00000047/blk00000071  (
    .CI(\blk00000003/blk00000047/sig000001ac ),
    .LI(\blk00000003/blk00000047/sig000001ad ),
    .O(\blk00000003/sig000000b3 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000070  (
    .CI(\blk00000003/blk00000047/sig000001ac ),
    .DI(\blk00000003/sig000000b4 ),
    .S(\blk00000003/blk00000047/sig000001ad ),
    .O(\blk00000003/blk00000047/sig000001ae )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000006f  (
    .I0(pinc_in_0[13]),
    .I1(\blk00000003/sig000000b4 ),
    .O(\blk00000003/blk00000047/sig000001ad )
  );
  XORCY   \blk00000003/blk00000047/blk0000006e  (
    .CI(\blk00000003/blk00000047/sig000001aa ),
    .LI(\blk00000003/blk00000047/sig000001ab ),
    .O(\blk00000003/sig000000b5 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000006d  (
    .CI(\blk00000003/blk00000047/sig000001aa ),
    .DI(\blk00000003/sig000000b6 ),
    .S(\blk00000003/blk00000047/sig000001ab ),
    .O(\blk00000003/blk00000047/sig000001ac )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000006c  (
    .I0(pinc_in_0[12]),
    .I1(\blk00000003/sig000000b6 ),
    .O(\blk00000003/blk00000047/sig000001ab )
  );
  XORCY   \blk00000003/blk00000047/blk0000006b  (
    .CI(\blk00000003/blk00000047/sig000001a8 ),
    .LI(\blk00000003/blk00000047/sig000001a9 ),
    .O(\blk00000003/sig000000b7 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000006a  (
    .CI(\blk00000003/blk00000047/sig000001a8 ),
    .DI(\blk00000003/sig000000b8 ),
    .S(\blk00000003/blk00000047/sig000001a9 ),
    .O(\blk00000003/blk00000047/sig000001aa )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000069  (
    .I0(pinc_in_0[11]),
    .I1(\blk00000003/sig000000b8 ),
    .O(\blk00000003/blk00000047/sig000001a9 )
  );
  XORCY   \blk00000003/blk00000047/blk00000068  (
    .CI(\blk00000003/blk00000047/sig000001a6 ),
    .LI(\blk00000003/blk00000047/sig000001a7 ),
    .O(\blk00000003/sig000000b9 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000067  (
    .CI(\blk00000003/blk00000047/sig000001a6 ),
    .DI(\blk00000003/sig000000ba ),
    .S(\blk00000003/blk00000047/sig000001a7 ),
    .O(\blk00000003/blk00000047/sig000001a8 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000066  (
    .I0(pinc_in_0[10]),
    .I1(\blk00000003/sig000000ba ),
    .O(\blk00000003/blk00000047/sig000001a7 )
  );
  XORCY   \blk00000003/blk00000047/blk00000065  (
    .CI(\blk00000003/blk00000047/sig000001a4 ),
    .LI(\blk00000003/blk00000047/sig000001a5 ),
    .O(\blk00000003/sig000000bb )
  );
  MUXCY   \blk00000003/blk00000047/blk00000064  (
    .CI(\blk00000003/blk00000047/sig000001a4 ),
    .DI(\blk00000003/sig000000bc ),
    .S(\blk00000003/blk00000047/sig000001a5 ),
    .O(\blk00000003/blk00000047/sig000001a6 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000063  (
    .I0(pinc_in_0[9]),
    .I1(\blk00000003/sig000000bc ),
    .O(\blk00000003/blk00000047/sig000001a5 )
  );
  XORCY   \blk00000003/blk00000047/blk00000062  (
    .CI(\blk00000003/blk00000047/sig000001a2 ),
    .LI(\blk00000003/blk00000047/sig000001a3 ),
    .O(\blk00000003/sig000000bd )
  );
  MUXCY   \blk00000003/blk00000047/blk00000061  (
    .CI(\blk00000003/blk00000047/sig000001a2 ),
    .DI(\blk00000003/sig000000be ),
    .S(\blk00000003/blk00000047/sig000001a3 ),
    .O(\blk00000003/blk00000047/sig000001a4 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000060  (
    .I0(pinc_in_0[8]),
    .I1(\blk00000003/sig000000be ),
    .O(\blk00000003/blk00000047/sig000001a3 )
  );
  XORCY   \blk00000003/blk00000047/blk0000005f  (
    .CI(\blk00000003/blk00000047/sig000001a0 ),
    .LI(\blk00000003/blk00000047/sig000001a1 ),
    .O(\blk00000003/sig000000bf )
  );
  MUXCY   \blk00000003/blk00000047/blk0000005e  (
    .CI(\blk00000003/blk00000047/sig000001a0 ),
    .DI(\blk00000003/sig000000c0 ),
    .S(\blk00000003/blk00000047/sig000001a1 ),
    .O(\blk00000003/blk00000047/sig000001a2 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000005d  (
    .I0(pinc_in_0[7]),
    .I1(\blk00000003/sig000000c0 ),
    .O(\blk00000003/blk00000047/sig000001a1 )
  );
  XORCY   \blk00000003/blk00000047/blk0000005c  (
    .CI(\blk00000003/blk00000047/sig0000019e ),
    .LI(\blk00000003/blk00000047/sig0000019f ),
    .O(\blk00000003/sig000000c1 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000005b  (
    .CI(\blk00000003/blk00000047/sig0000019e ),
    .DI(\blk00000003/sig000000c2 ),
    .S(\blk00000003/blk00000047/sig0000019f ),
    .O(\blk00000003/blk00000047/sig000001a0 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000005a  (
    .I0(pinc_in_0[6]),
    .I1(\blk00000003/sig000000c2 ),
    .O(\blk00000003/blk00000047/sig0000019f )
  );
  XORCY   \blk00000003/blk00000047/blk00000059  (
    .CI(\blk00000003/blk00000047/sig0000019c ),
    .LI(\blk00000003/blk00000047/sig0000019d ),
    .O(\blk00000003/sig000000c3 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000058  (
    .CI(\blk00000003/blk00000047/sig0000019c ),
    .DI(\blk00000003/sig000000c4 ),
    .S(\blk00000003/blk00000047/sig0000019d ),
    .O(\blk00000003/blk00000047/sig0000019e )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000057  (
    .I0(pinc_in_0[5]),
    .I1(\blk00000003/sig000000c4 ),
    .O(\blk00000003/blk00000047/sig0000019d )
  );
  XORCY   \blk00000003/blk00000047/blk00000056  (
    .CI(\blk00000003/blk00000047/sig0000019a ),
    .LI(\blk00000003/blk00000047/sig0000019b ),
    .O(\blk00000003/sig000000c5 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000055  (
    .CI(\blk00000003/blk00000047/sig0000019a ),
    .DI(\blk00000003/sig000000c6 ),
    .S(\blk00000003/blk00000047/sig0000019b ),
    .O(\blk00000003/blk00000047/sig0000019c )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000054  (
    .I0(pinc_in_0[4]),
    .I1(\blk00000003/sig000000c6 ),
    .O(\blk00000003/blk00000047/sig0000019b )
  );
  XORCY   \blk00000003/blk00000047/blk00000053  (
    .CI(\blk00000003/blk00000047/sig00000198 ),
    .LI(\blk00000003/blk00000047/sig00000199 ),
    .O(\blk00000003/sig000000c7 )
  );
  MUXCY   \blk00000003/blk00000047/blk00000052  (
    .CI(\blk00000003/blk00000047/sig00000198 ),
    .DI(\blk00000003/sig000000c8 ),
    .S(\blk00000003/blk00000047/sig00000199 ),
    .O(\blk00000003/blk00000047/sig0000019a )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000051  (
    .I0(pinc_in_0[3]),
    .I1(\blk00000003/sig000000c8 ),
    .O(\blk00000003/blk00000047/sig00000199 )
  );
  XORCY   \blk00000003/blk00000047/blk00000050  (
    .CI(\blk00000003/blk00000047/sig00000196 ),
    .LI(\blk00000003/blk00000047/sig00000197 ),
    .O(\blk00000003/sig000000c9 )
  );
  MUXCY   \blk00000003/blk00000047/blk0000004f  (
    .CI(\blk00000003/blk00000047/sig00000196 ),
    .DI(\blk00000003/sig000000ca ),
    .S(\blk00000003/blk00000047/sig00000197 ),
    .O(\blk00000003/blk00000047/sig00000198 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000004e  (
    .I0(pinc_in_0[2]),
    .I1(\blk00000003/sig000000ca ),
    .O(\blk00000003/blk00000047/sig00000197 )
  );
  XORCY   \blk00000003/blk00000047/blk0000004d  (
    .CI(\blk00000003/blk00000047/sig00000194 ),
    .LI(\blk00000003/blk00000047/sig00000195 ),
    .O(\blk00000003/sig000000cb )
  );
  MUXCY   \blk00000003/blk00000047/blk0000004c  (
    .CI(\blk00000003/blk00000047/sig00000194 ),
    .DI(\blk00000003/sig000000cc ),
    .S(\blk00000003/blk00000047/sig00000195 ),
    .O(\blk00000003/blk00000047/sig00000196 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk0000004b  (
    .I0(pinc_in_0[1]),
    .I1(\blk00000003/sig000000cc ),
    .O(\blk00000003/blk00000047/sig00000195 )
  );
  XORCY   \blk00000003/blk00000047/blk0000004a  (
    .CI(\blk00000003/sig0000006b ),
    .LI(\blk00000003/blk00000047/sig00000193 ),
    .O(\blk00000003/sig000000cd )
  );
  MUXCY   \blk00000003/blk00000047/blk00000049  (
    .CI(\blk00000003/sig0000006b ),
    .DI(\blk00000003/sig000000ce ),
    .S(\blk00000003/blk00000047/sig00000193 ),
    .O(\blk00000003/blk00000047/sig00000194 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk00000047/blk00000048  (
    .I0(pinc_in_0[0]),
    .I1(\blk00000003/sig000000ce ),
    .O(\blk00000003/blk00000047/sig00000193 )
  );
  XORCY   \blk00000003/blk000000a8/blk00000108  (
    .CI(\blk00000003/blk000000a8/sig00000271 ),
    .LI(\blk00000003/blk000000a8/sig00000272 ),
    .O(\blk00000003/sig000000d0 )
  );
  MUXCY   \blk00000003/blk000000a8/blk00000107  (
    .CI(\blk00000003/blk000000a8/sig00000271 ),
    .DI(\blk00000003/sig00000090 ),
    .S(\blk00000003/blk000000a8/sig00000272 ),
    .O(\blk00000003/sig000000cf )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk00000106  (
    .I0(\blk00000003/sig00000090 ),
    .I1(\blk00000003/sig0000006d ),
    .O(\blk00000003/blk000000a8/sig00000272 )
  );
  XORCY   \blk00000003/blk000000a8/blk00000105  (
    .CI(\blk00000003/blk000000a8/sig0000026f ),
    .LI(\blk00000003/blk000000a8/sig00000270 ),
    .O(\blk00000003/sig000000d1 )
  );
  MUXCY   \blk00000003/blk000000a8/blk00000104  (
    .CI(\blk00000003/blk000000a8/sig0000026f ),
    .DI(\blk00000003/sig00000092 ),
    .S(\blk00000003/blk000000a8/sig00000270 ),
    .O(\blk00000003/blk000000a8/sig00000271 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk00000103  (
    .I0(\blk00000003/sig00000092 ),
    .I1(\blk00000003/sig0000006e ),
    .O(\blk00000003/blk000000a8/sig00000270 )
  );
  XORCY   \blk00000003/blk000000a8/blk00000102  (
    .CI(\blk00000003/blk000000a8/sig0000026d ),
    .LI(\blk00000003/blk000000a8/sig0000026e ),
    .O(\blk00000003/sig000000d2 )
  );
  MUXCY   \blk00000003/blk000000a8/blk00000101  (
    .CI(\blk00000003/blk000000a8/sig0000026d ),
    .DI(\blk00000003/sig00000094 ),
    .S(\blk00000003/blk000000a8/sig0000026e ),
    .O(\blk00000003/blk000000a8/sig0000026f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk00000100  (
    .I0(\blk00000003/sig00000094 ),
    .I1(\blk00000003/sig0000006f ),
    .O(\blk00000003/blk000000a8/sig0000026e )
  );
  XORCY   \blk00000003/blk000000a8/blk000000ff  (
    .CI(\blk00000003/blk000000a8/sig0000026b ),
    .LI(\blk00000003/blk000000a8/sig0000026c ),
    .O(\blk00000003/sig000000d3 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000fe  (
    .CI(\blk00000003/blk000000a8/sig0000026b ),
    .DI(\blk00000003/sig00000096 ),
    .S(\blk00000003/blk000000a8/sig0000026c ),
    .O(\blk00000003/blk000000a8/sig0000026d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000fd  (
    .I0(\blk00000003/sig00000096 ),
    .I1(\blk00000003/sig00000070 ),
    .O(\blk00000003/blk000000a8/sig0000026c )
  );
  XORCY   \blk00000003/blk000000a8/blk000000fc  (
    .CI(\blk00000003/blk000000a8/sig00000269 ),
    .LI(\blk00000003/blk000000a8/sig0000026a ),
    .O(\blk00000003/sig000000d4 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000fb  (
    .CI(\blk00000003/blk000000a8/sig00000269 ),
    .DI(\blk00000003/sig00000098 ),
    .S(\blk00000003/blk000000a8/sig0000026a ),
    .O(\blk00000003/blk000000a8/sig0000026b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000fa  (
    .I0(\blk00000003/sig00000071 ),
    .I1(\blk00000003/sig00000098 ),
    .O(\blk00000003/blk000000a8/sig0000026a )
  );
  XORCY   \blk00000003/blk000000a8/blk000000f9  (
    .CI(\blk00000003/blk000000a8/sig00000267 ),
    .LI(\blk00000003/blk000000a8/sig00000268 ),
    .O(\blk00000003/sig000000d5 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000f8  (
    .CI(\blk00000003/blk000000a8/sig00000267 ),
    .DI(\blk00000003/sig0000009a ),
    .S(\blk00000003/blk000000a8/sig00000268 ),
    .O(\blk00000003/blk000000a8/sig00000269 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000f7  (
    .I0(\blk00000003/sig00000072 ),
    .I1(\blk00000003/sig0000009a ),
    .O(\blk00000003/blk000000a8/sig00000268 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000f6  (
    .CI(\blk00000003/blk000000a8/sig00000265 ),
    .LI(\blk00000003/blk000000a8/sig00000266 ),
    .O(\blk00000003/sig000000d6 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000f5  (
    .CI(\blk00000003/blk000000a8/sig00000265 ),
    .DI(\blk00000003/sig0000009c ),
    .S(\blk00000003/blk000000a8/sig00000266 ),
    .O(\blk00000003/blk000000a8/sig00000267 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000f4  (
    .I0(\blk00000003/sig00000073 ),
    .I1(\blk00000003/sig0000009c ),
    .O(\blk00000003/blk000000a8/sig00000266 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000f3  (
    .CI(\blk00000003/blk000000a8/sig00000263 ),
    .LI(\blk00000003/blk000000a8/sig00000264 ),
    .O(\blk00000003/sig000000d7 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000f2  (
    .CI(\blk00000003/blk000000a8/sig00000263 ),
    .DI(\blk00000003/sig0000009e ),
    .S(\blk00000003/blk000000a8/sig00000264 ),
    .O(\blk00000003/blk000000a8/sig00000265 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000f1  (
    .I0(\blk00000003/sig00000074 ),
    .I1(\blk00000003/sig0000009e ),
    .O(\blk00000003/blk000000a8/sig00000264 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000f0  (
    .CI(\blk00000003/blk000000a8/sig00000261 ),
    .LI(\blk00000003/blk000000a8/sig00000262 ),
    .O(\blk00000003/sig000000d8 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000ef  (
    .CI(\blk00000003/blk000000a8/sig00000261 ),
    .DI(\blk00000003/sig000000a0 ),
    .S(\blk00000003/blk000000a8/sig00000262 ),
    .O(\blk00000003/blk000000a8/sig00000263 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000ee  (
    .I0(\blk00000003/sig00000075 ),
    .I1(\blk00000003/sig000000a0 ),
    .O(\blk00000003/blk000000a8/sig00000262 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000ed  (
    .CI(\blk00000003/blk000000a8/sig0000025f ),
    .LI(\blk00000003/blk000000a8/sig00000260 ),
    .O(\blk00000003/sig000000d9 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000ec  (
    .CI(\blk00000003/blk000000a8/sig0000025f ),
    .DI(\blk00000003/sig000000a2 ),
    .S(\blk00000003/blk000000a8/sig00000260 ),
    .O(\blk00000003/blk000000a8/sig00000261 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000eb  (
    .I0(\blk00000003/sig00000076 ),
    .I1(\blk00000003/sig000000a2 ),
    .O(\blk00000003/blk000000a8/sig00000260 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000ea  (
    .CI(\blk00000003/blk000000a8/sig0000025d ),
    .LI(\blk00000003/blk000000a8/sig0000025e ),
    .O(\blk00000003/sig000000da )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000e9  (
    .CI(\blk00000003/blk000000a8/sig0000025d ),
    .DI(\blk00000003/sig000000a4 ),
    .S(\blk00000003/blk000000a8/sig0000025e ),
    .O(\blk00000003/blk000000a8/sig0000025f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000e8  (
    .I0(\blk00000003/sig00000077 ),
    .I1(\blk00000003/sig000000a4 ),
    .O(\blk00000003/blk000000a8/sig0000025e )
  );
  XORCY   \blk00000003/blk000000a8/blk000000e7  (
    .CI(\blk00000003/blk000000a8/sig0000025b ),
    .LI(\blk00000003/blk000000a8/sig0000025c ),
    .O(\blk00000003/sig000000db )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000e6  (
    .CI(\blk00000003/blk000000a8/sig0000025b ),
    .DI(\blk00000003/sig000000a6 ),
    .S(\blk00000003/blk000000a8/sig0000025c ),
    .O(\blk00000003/blk000000a8/sig0000025d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000e5  (
    .I0(\blk00000003/sig00000078 ),
    .I1(\blk00000003/sig000000a6 ),
    .O(\blk00000003/blk000000a8/sig0000025c )
  );
  XORCY   \blk00000003/blk000000a8/blk000000e4  (
    .CI(\blk00000003/blk000000a8/sig00000259 ),
    .LI(\blk00000003/blk000000a8/sig0000025a ),
    .O(\blk00000003/sig000000dc )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000e3  (
    .CI(\blk00000003/blk000000a8/sig00000259 ),
    .DI(\blk00000003/sig000000a8 ),
    .S(\blk00000003/blk000000a8/sig0000025a ),
    .O(\blk00000003/blk000000a8/sig0000025b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000e2  (
    .I0(\blk00000003/sig00000079 ),
    .I1(\blk00000003/sig000000a8 ),
    .O(\blk00000003/blk000000a8/sig0000025a )
  );
  XORCY   \blk00000003/blk000000a8/blk000000e1  (
    .CI(\blk00000003/blk000000a8/sig00000257 ),
    .LI(\blk00000003/blk000000a8/sig00000258 ),
    .O(\blk00000003/sig000000dd )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000e0  (
    .CI(\blk00000003/blk000000a8/sig00000257 ),
    .DI(\blk00000003/sig000000aa ),
    .S(\blk00000003/blk000000a8/sig00000258 ),
    .O(\blk00000003/blk000000a8/sig00000259 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000df  (
    .I0(\blk00000003/sig0000007a ),
    .I1(\blk00000003/sig000000aa ),
    .O(\blk00000003/blk000000a8/sig00000258 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000de  (
    .CI(\blk00000003/blk000000a8/sig00000255 ),
    .LI(\blk00000003/blk000000a8/sig00000256 ),
    .O(\blk00000003/sig000000de )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000dd  (
    .CI(\blk00000003/blk000000a8/sig00000255 ),
    .DI(\blk00000003/sig000000ac ),
    .S(\blk00000003/blk000000a8/sig00000256 ),
    .O(\blk00000003/blk000000a8/sig00000257 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000dc  (
    .I0(\blk00000003/sig0000007b ),
    .I1(\blk00000003/sig000000ac ),
    .O(\blk00000003/blk000000a8/sig00000256 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000db  (
    .CI(\blk00000003/blk000000a8/sig00000253 ),
    .LI(\blk00000003/blk000000a8/sig00000254 ),
    .O(\blk00000003/sig000000df )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000da  (
    .CI(\blk00000003/blk000000a8/sig00000253 ),
    .DI(\blk00000003/sig000000ae ),
    .S(\blk00000003/blk000000a8/sig00000254 ),
    .O(\blk00000003/blk000000a8/sig00000255 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000d9  (
    .I0(\blk00000003/sig0000007c ),
    .I1(\blk00000003/sig000000ae ),
    .O(\blk00000003/blk000000a8/sig00000254 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000d8  (
    .CI(\blk00000003/blk000000a8/sig00000251 ),
    .LI(\blk00000003/blk000000a8/sig00000252 ),
    .O(\blk00000003/sig000000e0 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000d7  (
    .CI(\blk00000003/blk000000a8/sig00000251 ),
    .DI(\blk00000003/sig000000b0 ),
    .S(\blk00000003/blk000000a8/sig00000252 ),
    .O(\blk00000003/blk000000a8/sig00000253 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000d6  (
    .I0(\blk00000003/sig0000007d ),
    .I1(\blk00000003/sig000000b0 ),
    .O(\blk00000003/blk000000a8/sig00000252 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000d5  (
    .CI(\blk00000003/blk000000a8/sig0000024f ),
    .LI(\blk00000003/blk000000a8/sig00000250 ),
    .O(\blk00000003/sig000000e1 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000d4  (
    .CI(\blk00000003/blk000000a8/sig0000024f ),
    .DI(\blk00000003/sig000000b2 ),
    .S(\blk00000003/blk000000a8/sig00000250 ),
    .O(\blk00000003/blk000000a8/sig00000251 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000d3  (
    .I0(\blk00000003/sig0000007e ),
    .I1(\blk00000003/sig000000b2 ),
    .O(\blk00000003/blk000000a8/sig00000250 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000d2  (
    .CI(\blk00000003/blk000000a8/sig0000024d ),
    .LI(\blk00000003/blk000000a8/sig0000024e ),
    .O(\blk00000003/sig000000e2 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000d1  (
    .CI(\blk00000003/blk000000a8/sig0000024d ),
    .DI(\blk00000003/sig000000b4 ),
    .S(\blk00000003/blk000000a8/sig0000024e ),
    .O(\blk00000003/blk000000a8/sig0000024f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000d0  (
    .I0(\blk00000003/sig0000007f ),
    .I1(\blk00000003/sig000000b4 ),
    .O(\blk00000003/blk000000a8/sig0000024e )
  );
  XORCY   \blk00000003/blk000000a8/blk000000cf  (
    .CI(\blk00000003/blk000000a8/sig0000024b ),
    .LI(\blk00000003/blk000000a8/sig0000024c ),
    .O(\blk00000003/sig000000e3 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000ce  (
    .CI(\blk00000003/blk000000a8/sig0000024b ),
    .DI(\blk00000003/sig000000b6 ),
    .S(\blk00000003/blk000000a8/sig0000024c ),
    .O(\blk00000003/blk000000a8/sig0000024d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000cd  (
    .I0(\blk00000003/sig00000080 ),
    .I1(\blk00000003/sig000000b6 ),
    .O(\blk00000003/blk000000a8/sig0000024c )
  );
  XORCY   \blk00000003/blk000000a8/blk000000cc  (
    .CI(\blk00000003/blk000000a8/sig00000249 ),
    .LI(\blk00000003/blk000000a8/sig0000024a ),
    .O(\blk00000003/sig000000e4 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000cb  (
    .CI(\blk00000003/blk000000a8/sig00000249 ),
    .DI(\blk00000003/sig000000b8 ),
    .S(\blk00000003/blk000000a8/sig0000024a ),
    .O(\blk00000003/blk000000a8/sig0000024b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000ca  (
    .I0(\blk00000003/sig00000081 ),
    .I1(\blk00000003/sig000000b8 ),
    .O(\blk00000003/blk000000a8/sig0000024a )
  );
  XORCY   \blk00000003/blk000000a8/blk000000c9  (
    .CI(\blk00000003/blk000000a8/sig00000247 ),
    .LI(\blk00000003/blk000000a8/sig00000248 ),
    .O(\blk00000003/sig000000e5 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000c8  (
    .CI(\blk00000003/blk000000a8/sig00000247 ),
    .DI(\blk00000003/sig000000ba ),
    .S(\blk00000003/blk000000a8/sig00000248 ),
    .O(\blk00000003/blk000000a8/sig00000249 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000c7  (
    .I0(\blk00000003/sig00000082 ),
    .I1(\blk00000003/sig000000ba ),
    .O(\blk00000003/blk000000a8/sig00000248 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000c6  (
    .CI(\blk00000003/blk000000a8/sig00000245 ),
    .LI(\blk00000003/blk000000a8/sig00000246 ),
    .O(\blk00000003/sig000000e6 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000c5  (
    .CI(\blk00000003/blk000000a8/sig00000245 ),
    .DI(\blk00000003/sig000000bc ),
    .S(\blk00000003/blk000000a8/sig00000246 ),
    .O(\blk00000003/blk000000a8/sig00000247 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000c4  (
    .I0(\blk00000003/sig00000083 ),
    .I1(\blk00000003/sig000000bc ),
    .O(\blk00000003/blk000000a8/sig00000246 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000c3  (
    .CI(\blk00000003/blk000000a8/sig00000243 ),
    .LI(\blk00000003/blk000000a8/sig00000244 ),
    .O(\blk00000003/sig000000e7 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000c2  (
    .CI(\blk00000003/blk000000a8/sig00000243 ),
    .DI(\blk00000003/sig000000be ),
    .S(\blk00000003/blk000000a8/sig00000244 ),
    .O(\blk00000003/blk000000a8/sig00000245 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000c1  (
    .I0(\blk00000003/sig00000084 ),
    .I1(\blk00000003/sig000000be ),
    .O(\blk00000003/blk000000a8/sig00000244 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000c0  (
    .CI(\blk00000003/blk000000a8/sig00000241 ),
    .LI(\blk00000003/blk000000a8/sig00000242 ),
    .O(\blk00000003/sig000000e8 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000bf  (
    .CI(\blk00000003/blk000000a8/sig00000241 ),
    .DI(\blk00000003/sig000000c0 ),
    .S(\blk00000003/blk000000a8/sig00000242 ),
    .O(\blk00000003/blk000000a8/sig00000243 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000be  (
    .I0(\blk00000003/sig00000085 ),
    .I1(\blk00000003/sig000000c0 ),
    .O(\blk00000003/blk000000a8/sig00000242 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000bd  (
    .CI(\blk00000003/blk000000a8/sig0000023f ),
    .LI(\blk00000003/blk000000a8/sig00000240 ),
    .O(\blk00000003/sig000000e9 )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000bc  (
    .CI(\blk00000003/blk000000a8/sig0000023f ),
    .DI(\blk00000003/sig000000c2 ),
    .S(\blk00000003/blk000000a8/sig00000240 ),
    .O(\blk00000003/blk000000a8/sig00000241 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000bb  (
    .I0(\blk00000003/sig00000086 ),
    .I1(\blk00000003/sig000000c2 ),
    .O(\blk00000003/blk000000a8/sig00000240 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000ba  (
    .CI(\blk00000003/blk000000a8/sig0000023d ),
    .LI(\blk00000003/blk000000a8/sig0000023e ),
    .O(\blk00000003/sig000000ea )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000b9  (
    .CI(\blk00000003/blk000000a8/sig0000023d ),
    .DI(\blk00000003/sig000000c4 ),
    .S(\blk00000003/blk000000a8/sig0000023e ),
    .O(\blk00000003/blk000000a8/sig0000023f )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000b8  (
    .I0(\blk00000003/sig00000087 ),
    .I1(\blk00000003/sig000000c4 ),
    .O(\blk00000003/blk000000a8/sig0000023e )
  );
  XORCY   \blk00000003/blk000000a8/blk000000b7  (
    .CI(\blk00000003/blk000000a8/sig0000023b ),
    .LI(\blk00000003/blk000000a8/sig0000023c ),
    .O(\blk00000003/sig000000eb )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000b6  (
    .CI(\blk00000003/blk000000a8/sig0000023b ),
    .DI(\blk00000003/sig000000c6 ),
    .S(\blk00000003/blk000000a8/sig0000023c ),
    .O(\blk00000003/blk000000a8/sig0000023d )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000b5  (
    .I0(\blk00000003/sig00000088 ),
    .I1(\blk00000003/sig000000c6 ),
    .O(\blk00000003/blk000000a8/sig0000023c )
  );
  XORCY   \blk00000003/blk000000a8/blk000000b4  (
    .CI(\blk00000003/blk000000a8/sig00000239 ),
    .LI(\blk00000003/blk000000a8/sig0000023a ),
    .O(\blk00000003/sig000000ec )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000b3  (
    .CI(\blk00000003/blk000000a8/sig00000239 ),
    .DI(\blk00000003/sig000000c8 ),
    .S(\blk00000003/blk000000a8/sig0000023a ),
    .O(\blk00000003/blk000000a8/sig0000023b )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000b2  (
    .I0(\blk00000003/sig00000089 ),
    .I1(\blk00000003/sig000000c8 ),
    .O(\blk00000003/blk000000a8/sig0000023a )
  );
  XORCY   \blk00000003/blk000000a8/blk000000b1  (
    .CI(\blk00000003/blk000000a8/sig00000237 ),
    .LI(\blk00000003/blk000000a8/sig00000238 ),
    .O(\blk00000003/sig000000ed )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000b0  (
    .CI(\blk00000003/blk000000a8/sig00000237 ),
    .DI(\blk00000003/sig000000ca ),
    .S(\blk00000003/blk000000a8/sig00000238 ),
    .O(\blk00000003/blk000000a8/sig00000239 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000af  (
    .I0(\blk00000003/sig0000008a ),
    .I1(\blk00000003/sig000000ca ),
    .O(\blk00000003/blk000000a8/sig00000238 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000ae  (
    .CI(\blk00000003/blk000000a8/sig00000235 ),
    .LI(\blk00000003/blk000000a8/sig00000236 ),
    .O(\blk00000003/sig000000ee )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000ad  (
    .CI(\blk00000003/blk000000a8/sig00000235 ),
    .DI(\blk00000003/sig000000cc ),
    .S(\blk00000003/blk000000a8/sig00000236 ),
    .O(\blk00000003/blk000000a8/sig00000237 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000ac  (
    .I0(\blk00000003/sig0000008b ),
    .I1(\blk00000003/sig000000cc ),
    .O(\blk00000003/blk000000a8/sig00000236 )
  );
  XORCY   \blk00000003/blk000000a8/blk000000ab  (
    .CI(\blk00000003/sig0000006b ),
    .LI(\blk00000003/blk000000a8/sig00000234 ),
    .O(\blk00000003/sig000000ef )
  );
  MUXCY   \blk00000003/blk000000a8/blk000000aa  (
    .CI(\blk00000003/sig0000006b ),
    .DI(\blk00000003/sig000000ce ),
    .S(\blk00000003/blk000000a8/sig00000234 ),
    .O(\blk00000003/blk000000a8/sig00000235 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \blk00000003/blk000000a8/blk000000a9  (
    .I0(\blk00000003/sig0000008c ),
    .I1(\blk00000003/sig000000ce ),
    .O(\blk00000003/blk000000a8/sig00000234 )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

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

// synthesis translate_on
