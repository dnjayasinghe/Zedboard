////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: multiplier.v
// /___/   /\     Timestamp: Mon Aug 16 19:57:19 2021
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog "D:/Onedrive/OneDrive - UNSW/My Onedrive/PhD/Src/New-Delay-Sensor/Ripple-Adder/ZEDBoard/ZEDBOARD-OrigTDCSensor-Mult-dsp/ZEDBOARD-OrigTDCSensor-8del-new/ipcore_dir/tmp/_cg/multiplier.ngc" "D:/Onedrive/OneDrive - UNSW/My Onedrive/PhD/Src/New-Delay-Sensor/Ripple-Adder/ZEDBoard/ZEDBOARD-OrigTDCSensor-Mult-dsp/ZEDBOARD-OrigTDCSensor-8del-new/ipcore_dir/tmp/_cg/multiplier.v" 
// Device	: 7z020clg484-1
// Input file	: D:/Onedrive/OneDrive - UNSW/My Onedrive/PhD/Src/New-Delay-Sensor/Ripple-Adder/ZEDBoard/ZEDBOARD-OrigTDCSensor-Mult-dsp/ZEDBOARD-OrigTDCSensor-8del-new/ipcore_dir/tmp/_cg/multiplier.ngc
// Output file	: D:/Onedrive/OneDrive - UNSW/My Onedrive/PhD/Src/New-Delay-Sensor/Ripple-Adder/ZEDBoard/ZEDBOARD-OrigTDCSensor-Mult-dsp/ZEDBOARD-OrigTDCSensor-8del-new/ipcore_dir/tmp/_cg/multiplier.v
// # of Modules	: 1
// Design Name	: multiplier
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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

module multiplier (
a, b, p
)/* synthesis syn_black_box syn_noprune=1 */;
  input [23 : 0] a;
  input [3 : 0] b;
  output [27 : 0] p;
  
  // synthesis translate_off
  
  wire \blk00000001/sig0000003a ;
  wire \blk00000001/sig00000039 ;
  wire \NLW_blk00000001/blk00000004_PATTERNBDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_MULTSIGNOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_MULTSIGNIN_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYCASCOUT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_UNDERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PATTERNDETECT_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_OVERFLOW_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYCASCIN_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCIN<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_CARRYOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCIN<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_BCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_P<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<47>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<46>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<45>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<44>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<43>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<42>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<41>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<40>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<39>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<38>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<37>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<36>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<35>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<34>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<33>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<32>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<31>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<30>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_PCOUT<0>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<29>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<28>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<27>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<26>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<25>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<24>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<23>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<22>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<21>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<20>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<19>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<18>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<17>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<16>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<15>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<14>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<13>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<12>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<11>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<10>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<9>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<8>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<7>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<6>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<5>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<4>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<3>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<2>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<1>_UNCONNECTED ;
  wire \NLW_blk00000001/blk00000004_ACIN<0>_UNCONNECTED ;
  DSP48E1 #(
    .USE_DPORT ( "FALSE" ),
    .ADREG ( 0 ),
    .AREG ( 0 ),
    .ACASCREG ( 0 ),
    .BREG ( 0 ),
    .BCASCREG ( 0 ),
    .CREG ( 0 ),
    .MREG ( 0 ),
    .PREG ( 0 ),
    .CARRYINREG ( 0 ),
    .OPMODEREG ( 0 ),
    .ALUMODEREG ( 0 ),
    .CARRYINSELREG ( 0 ),
    .INMODEREG ( 0 ),
    .USE_MULT ( "MULTIPLY" ),
    .A_INPUT ( "DIRECT" ),
    .B_INPUT ( "DIRECT" ),
    .DREG ( 0 ),
    .SEL_PATTERN ( "PATTERN" ),
    .MASK ( 48'h3fffffffffff ),
    .USE_PATTERN_DETECT ( "NO_PATDET" ),
    .PATTERN ( 48'h000000000000 ),
    .USE_SIMD ( "ONE48" ),
    .AUTORESET_PATDET ( "NO_RESET" ),
    .SEL_MASK ( "MASK" ))
  \blk00000001/blk00000004  (
    .PATTERNBDETECT(\NLW_blk00000001/blk00000004_PATTERNBDETECT_UNCONNECTED ),
    .RSTC(\blk00000001/sig0000003a ),
    .CEB1(\blk00000001/sig0000003a ),
    .CEAD(\blk00000001/sig0000003a ),
    .MULTSIGNOUT(\NLW_blk00000001/blk00000004_MULTSIGNOUT_UNCONNECTED ),
    .CEC(\blk00000001/sig0000003a ),
    .RSTM(\blk00000001/sig0000003a ),
    .MULTSIGNIN(\NLW_blk00000001/blk00000004_MULTSIGNIN_UNCONNECTED ),
    .CEB2(\blk00000001/sig0000003a ),
    .RSTCTRL(\blk00000001/sig0000003a ),
    .CEP(\blk00000001/sig0000003a ),
    .CARRYCASCOUT(\NLW_blk00000001/blk00000004_CARRYCASCOUT_UNCONNECTED ),
    .RSTA(\blk00000001/sig0000003a ),
    .CECARRYIN(\blk00000001/sig0000003a ),
    .UNDERFLOW(\NLW_blk00000001/blk00000004_UNDERFLOW_UNCONNECTED ),
    .PATTERNDETECT(\NLW_blk00000001/blk00000004_PATTERNDETECT_UNCONNECTED ),
    .RSTALUMODE(\blk00000001/sig0000003a ),
    .RSTALLCARRYIN(\blk00000001/sig0000003a ),
    .CED(\blk00000001/sig0000003a ),
    .RSTD(\blk00000001/sig0000003a ),
    .CEALUMODE(\blk00000001/sig0000003a ),
    .CEA2(\blk00000001/sig0000003a ),
    .CLK(\blk00000001/sig0000003a ),
    .CEA1(\blk00000001/sig0000003a ),
    .RSTB(\blk00000001/sig0000003a ),
    .OVERFLOW(\NLW_blk00000001/blk00000004_OVERFLOW_UNCONNECTED ),
    .CECTRL(\blk00000001/sig0000003a ),
    .CEM(\blk00000001/sig0000003a ),
    .CARRYIN(\blk00000001/sig0000003a ),
    .CARRYCASCIN(\NLW_blk00000001/blk00000004_CARRYCASCIN_UNCONNECTED ),
    .RSTINMODE(\blk00000001/sig0000003a ),
    .CEINMODE(\blk00000001/sig0000003a ),
    .RSTP(\blk00000001/sig0000003a ),
    .ACOUT({\NLW_blk00000001/blk00000004_ACOUT<29>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<27>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<26>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<25>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<24>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<23>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<21>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<20>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<19>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<18>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACOUT<0>_UNCONNECTED }),
    .OPMODE({\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig00000039 , 
\blk00000001/sig0000003a , \blk00000001/sig00000039 }),
    .PCIN({\NLW_blk00000001/blk00000004_PCIN<47>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<46>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<45>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<44>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<43>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<42>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<41>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<40>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<39>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<38>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<37>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<36>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<35>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<33>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<32>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<31>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<30>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<29>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<27>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<26>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<25>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<24>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<23>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<21>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<20>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<19>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<18>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCIN<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCIN<0>_UNCONNECTED }),
    .ALUMODE({\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a }),
    .C({\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 }),
    .CARRYOUT({\NLW_blk00000001/blk00000004_CARRYOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_CARRYOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_CARRYOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_CARRYOUT<0>_UNCONNECTED }),
    .INMODE({\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig00000039 , \blk00000001/sig0000003a , \blk00000001/sig0000003a }),
    .BCIN({\NLW_blk00000001/blk00000004_BCIN<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCIN<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCIN<0>_UNCONNECTED }),
    .B({\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , 
\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , 
\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , b[3], b[2], b[1], b[0]}),
    .BCOUT({\NLW_blk00000001/blk00000004_BCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_BCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_BCOUT<0>_UNCONNECTED }),
    .D({\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , 
\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , 
\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , 
\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , 
\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a }),
    .P({\NLW_blk00000001/blk00000004_P<47>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<46>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<45>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<44>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<43>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<42>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<41>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<40>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<39>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<38>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<37>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<36>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<35>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<33>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<32>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<31>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_P<30>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<29>_UNCONNECTED , \NLW_blk00000001/blk00000004_P<28>_UNCONNECTED , 
p[27], p[26], p[25], p[24], p[23], p[22], p[21], p[20], p[19], p[18], p[17], p[16], p[15], p[14], p[13], p[12], p[11], p[10], p[9], p[8], p[7], p[6], 
p[5], p[4], p[3], p[2], p[1], p[0]}),
    .A({\blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , \blk00000001/sig00000039 , 
\blk00000001/sig0000003a , a[23], a[22], a[21], a[20], a[19], a[18], a[17], a[16], a[15], a[14], a[13], a[12], a[11], a[10], a[9], a[8], a[7], a[6], 
a[5], a[4], a[3], a[2], a[1], a[0]}),
    .PCOUT({\NLW_blk00000001/blk00000004_PCOUT<47>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<46>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<45>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<44>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<43>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<42>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<41>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<40>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<39>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<38>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<37>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<36>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<35>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<34>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<33>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<32>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<31>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<30>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<29>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<27>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<26>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<25>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<24>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<23>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<21>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<20>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<19>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<18>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_PCOUT<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_PCOUT<0>_UNCONNECTED }),
    .ACIN({\NLW_blk00000001/blk00000004_ACIN<29>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<28>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<27>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<26>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<25>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<24>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<23>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<22>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<21>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<20>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<19>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<18>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<17>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<16>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<15>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<14>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<13>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<12>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<11>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<10>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<9>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<8>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<7>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<6>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<5>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<4>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<3>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<2>_UNCONNECTED , 
\NLW_blk00000001/blk00000004_ACIN<1>_UNCONNECTED , \NLW_blk00000001/blk00000004_ACIN<0>_UNCONNECTED }),
    .CARRYINSEL({\blk00000001/sig0000003a , \blk00000001/sig0000003a , \blk00000001/sig0000003a })
  );
  GND   \blk00000001/blk00000003  (
    .G(\blk00000001/sig0000003a )
  );
  VCC   \blk00000001/blk00000002  (
    .P(\blk00000001/sig00000039 )
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
