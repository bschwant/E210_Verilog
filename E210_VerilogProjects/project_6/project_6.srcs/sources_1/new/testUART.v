// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Mar 18 16:39:50 2019
// Host        : hognose.sice.indiana.edu running 64-bit Red Hat Enterprise Linux Workstation release 7.6 (Maipo)
// Command     : write_verilog /nfs/nfs7/home/micblacc/UARTs19.v
// Design      : myuart
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35ticpg236-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module myRX
   (Q,
    rx_ready_OBUF,
    SR,
    CLK,
    uart_rx_in_IBUF);
  output [7:0]Q;
  output rx_ready_OBUF;
  input [0:0]SR;
  input CLK;
  input uart_rx_in_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire \FSM_sequential_rx_currState[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_12_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_13_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_1_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_5_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_currState[3]_i_9_n_0 ;
  wire [7:0]Q;
  wire [0:0]SR;
  wire next_rxCounter0_carry__0_i_1_n_0;
  wire next_rxCounter0_carry__0_i_2_n_0;
  wire next_rxCounter0_carry__0_i_3_n_0;
  wire next_rxCounter0_carry__0_i_4_n_0;
  wire next_rxCounter0_carry__0_n_0;
  wire next_rxCounter0_carry__0_n_1;
  wire next_rxCounter0_carry__0_n_2;
  wire next_rxCounter0_carry__0_n_3;
  wire next_rxCounter0_carry__0_n_4;
  wire next_rxCounter0_carry__0_n_5;
  wire next_rxCounter0_carry__0_n_6;
  wire next_rxCounter0_carry__0_n_7;
  wire next_rxCounter0_carry__1_i_1_n_0;
  wire next_rxCounter0_carry__1_i_2_n_0;
  wire next_rxCounter0_carry__1_i_3_n_0;
  wire next_rxCounter0_carry__1_i_4_n_0;
  wire next_rxCounter0_carry__1_n_0;
  wire next_rxCounter0_carry__1_n_1;
  wire next_rxCounter0_carry__1_n_2;
  wire next_rxCounter0_carry__1_n_3;
  wire next_rxCounter0_carry__1_n_4;
  wire next_rxCounter0_carry__1_n_5;
  wire next_rxCounter0_carry__1_n_6;
  wire next_rxCounter0_carry__1_n_7;
  wire next_rxCounter0_carry__2_i_1_n_0;
  wire next_rxCounter0_carry__2_i_2_n_0;
  wire next_rxCounter0_carry__2_i_3_n_0;
  wire next_rxCounter0_carry__2_i_4_n_0;
  wire next_rxCounter0_carry__2_n_0;
  wire next_rxCounter0_carry__2_n_1;
  wire next_rxCounter0_carry__2_n_2;
  wire next_rxCounter0_carry__2_n_3;
  wire next_rxCounter0_carry__2_n_4;
  wire next_rxCounter0_carry__2_n_5;
  wire next_rxCounter0_carry__2_n_6;
  wire next_rxCounter0_carry__2_n_7;
  wire next_rxCounter0_carry__3_i_1_n_0;
  wire next_rxCounter0_carry__3_i_2_n_0;
  wire next_rxCounter0_carry__3_i_3_n_0;
  wire next_rxCounter0_carry__3_i_4_n_0;
  wire next_rxCounter0_carry__3_n_0;
  wire next_rxCounter0_carry__3_n_1;
  wire next_rxCounter0_carry__3_n_2;
  wire next_rxCounter0_carry__3_n_3;
  wire next_rxCounter0_carry__3_n_4;
  wire next_rxCounter0_carry__3_n_5;
  wire next_rxCounter0_carry__3_n_6;
  wire next_rxCounter0_carry__3_n_7;
  wire next_rxCounter0_carry__4_i_1_n_0;
  wire next_rxCounter0_carry__4_i_2_n_0;
  wire next_rxCounter0_carry__4_i_3_n_0;
  wire next_rxCounter0_carry__4_i_4_n_0;
  wire next_rxCounter0_carry__4_n_0;
  wire next_rxCounter0_carry__4_n_1;
  wire next_rxCounter0_carry__4_n_2;
  wire next_rxCounter0_carry__4_n_3;
  wire next_rxCounter0_carry__4_n_4;
  wire next_rxCounter0_carry__4_n_5;
  wire next_rxCounter0_carry__4_n_6;
  wire next_rxCounter0_carry__4_n_7;
  wire next_rxCounter0_carry__5_i_1_n_0;
  wire next_rxCounter0_carry__5_i_2_n_0;
  wire next_rxCounter0_carry__5_i_3_n_0;
  wire next_rxCounter0_carry__5_i_4_n_0;
  wire next_rxCounter0_carry__5_n_0;
  wire next_rxCounter0_carry__5_n_1;
  wire next_rxCounter0_carry__5_n_2;
  wire next_rxCounter0_carry__5_n_3;
  wire next_rxCounter0_carry__5_n_4;
  wire next_rxCounter0_carry__5_n_5;
  wire next_rxCounter0_carry__5_n_6;
  wire next_rxCounter0_carry__5_n_7;
  wire next_rxCounter0_carry__6_i_1_n_0;
  wire next_rxCounter0_carry__6_i_2_n_0;
  wire next_rxCounter0_carry__6_i_3_n_0;
  wire next_rxCounter0_carry__6_n_2;
  wire next_rxCounter0_carry__6_n_3;
  wire next_rxCounter0_carry__6_n_5;
  wire next_rxCounter0_carry__6_n_6;
  wire next_rxCounter0_carry__6_n_7;
  wire next_rxCounter0_carry_i_1_n_0;
  wire next_rxCounter0_carry_i_2_n_0;
  wire next_rxCounter0_carry_i_3_n_0;
  wire next_rxCounter0_carry_i_4_n_0;
  wire next_rxCounter0_carry_n_0;
  wire next_rxCounter0_carry_n_1;
  wire next_rxCounter0_carry_n_2;
  wire next_rxCounter0_carry_n_3;
  wire next_rxCounter0_carry_n_4;
  wire next_rxCounter0_carry_n_5;
  wire next_rxCounter0_carry_n_6;
  wire next_rxCounter0_carry_n_7;
  wire [31:0]rxCounter;
  wire \rxCounter[0]_i_1_n_0 ;
  wire \rxCounter[10]_i_1_n_0 ;
  wire \rxCounter[11]_i_1_n_0 ;
  wire \rxCounter[12]_i_1_n_0 ;
  wire \rxCounter[13]_i_1_n_0 ;
  wire \rxCounter[13]_i_2_n_0 ;
  wire \rxCounter[13]_i_3_n_0 ;
  wire \rxCounter[13]_i_4_n_0 ;
  wire \rxCounter[14]_i_1_n_0 ;
  wire \rxCounter[15]_i_1_n_0 ;
  wire \rxCounter[16]_i_1_n_0 ;
  wire \rxCounter[17]_i_1_n_0 ;
  wire \rxCounter[18]_i_1_n_0 ;
  wire \rxCounter[19]_i_1_n_0 ;
  wire \rxCounter[1]_i_1_n_0 ;
  wire \rxCounter[20]_i_1_n_0 ;
  wire \rxCounter[21]_i_1_n_0 ;
  wire \rxCounter[22]_i_1_n_0 ;
  wire \rxCounter[23]_i_1_n_0 ;
  wire \rxCounter[24]_i_1_n_0 ;
  wire \rxCounter[25]_i_1_n_0 ;
  wire \rxCounter[26]_i_1_n_0 ;
  wire \rxCounter[27]_i_1_n_0 ;
  wire \rxCounter[28]_i_1_n_0 ;
  wire \rxCounter[29]_i_1_n_0 ;
  wire \rxCounter[2]_i_1_n_0 ;
  wire \rxCounter[30]_i_1_n_0 ;
  wire \rxCounter[31]_i_1_n_0 ;
  wire \rxCounter[31]_i_2_n_0 ;
  wire \rxCounter[31]_i_3_n_0 ;
  wire \rxCounter[31]_i_4_n_0 ;
  wire \rxCounter[31]_i_5_n_0 ;
  wire \rxCounter[3]_i_1_n_0 ;
  wire \rxCounter[4]_i_1_n_0 ;
  wire \rxCounter[5]_i_1_n_0 ;
  wire \rxCounter[6]_i_1_n_0 ;
  wire \rxCounter[7]_i_1_n_0 ;
  wire \rxCounter[8]_i_1_n_0 ;
  wire \rxCounter[9]_i_1_n_0 ;
  (* RTL_KEEP = "yes" *) wire [3:0]rx_currState;
  wire [3:0]rx_nextState__0;
  wire rx_ready_OBUF;
  wire shift;
  wire \shiftData[7]_i_2_n_0 ;
  wire \shiftData[7]_i_3_n_0 ;
  wire \shiftData[7]_i_4_n_0 ;
  wire uart_rx_in_IBUF;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_sequential_rx_currState[0]_i_1 
       (.I0(rx_currState[0]),
        .O(rx_nextState__0[0]));
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_rx_currState[1]_i_1 
       (.I0(rx_currState[0]),
        .I1(rx_currState[1]),
        .I2(rx_currState[3]),
        .O(rx_nextState__0[1]));
  LUT4 #(
    .INIT(16'h0078)) 
    \FSM_sequential_rx_currState[2]_i_1 
       (.I0(rx_currState[0]),
        .I1(rx_currState[1]),
        .I2(rx_currState[2]),
        .I3(rx_currState[3]),
        .O(rx_nextState__0[2]));
  LUT6 #(
    .INIT(64'h000000F000F011D1)) 
    \FSM_sequential_rx_currState[3]_i_1 
       (.I0(uart_rx_in_IBUF),
        .I1(rx_currState[0]),
        .I2(\FSM_sequential_rx_currState[3]_i_3_n_0 ),
        .I3(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I4(rx_currState[3]),
        .I5(\FSM_sequential_rx_currState[3]_i_5_n_0 ),
        .O(\FSM_sequential_rx_currState[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_rx_currState[3]_i_10 
       (.I0(rxCounter[20]),
        .I1(rxCounter[21]),
        .I2(rxCounter[22]),
        .I3(rxCounter[23]),
        .O(\FSM_sequential_rx_currState[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_rx_currState[3]_i_11 
       (.I0(rxCounter[16]),
        .I1(rxCounter[17]),
        .I2(rxCounter[18]),
        .I3(rxCounter[19]),
        .O(\FSM_sequential_rx_currState[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_rx_currState[3]_i_12 
       (.I0(rxCounter[28]),
        .I1(rxCounter[29]),
        .I2(rxCounter[31]),
        .I3(rxCounter[30]),
        .O(\FSM_sequential_rx_currState[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_rx_currState[3]_i_13 
       (.I0(rxCounter[24]),
        .I1(rxCounter[25]),
        .I2(rxCounter[26]),
        .I3(rxCounter[27]),
        .O(\FSM_sequential_rx_currState[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h3830)) 
    \FSM_sequential_rx_currState[3]_i_2 
       (.I0(rx_currState[1]),
        .I1(rx_currState[0]),
        .I2(rx_currState[3]),
        .I3(rx_currState[2]),
        .O(rx_nextState__0[3]));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_rx_currState[3]_i_3 
       (.I0(\FSM_sequential_rx_currState[3]_i_6_n_0 ),
        .I1(\FSM_sequential_rx_currState[3]_i_7_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_8_n_0 ),
        .I3(\FSM_sequential_rx_currState[3]_i_9_n_0 ),
        .O(\FSM_sequential_rx_currState[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_rx_currState[3]_i_4 
       (.I0(\FSM_sequential_rx_currState[3]_i_10_n_0 ),
        .I1(\FSM_sequential_rx_currState[3]_i_11_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_12_n_0 ),
        .I3(\FSM_sequential_rx_currState[3]_i_13_n_0 ),
        .O(\FSM_sequential_rx_currState[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_rx_currState[3]_i_5 
       (.I0(rx_currState[1]),
        .I1(rx_currState[2]),
        .O(\FSM_sequential_rx_currState[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_rx_currState[3]_i_6 
       (.I0(rxCounter[7]),
        .I1(rxCounter[6]),
        .I2(rxCounter[5]),
        .I3(rxCounter[4]),
        .O(\FSM_sequential_rx_currState[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_rx_currState[3]_i_7 
       (.I0(rxCounter[1]),
        .I1(rxCounter[0]),
        .I2(rxCounter[3]),
        .I3(rxCounter[2]),
        .O(\FSM_sequential_rx_currState[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_rx_currState[3]_i_8 
       (.I0(rxCounter[11]),
        .I1(rxCounter[10]),
        .I2(rxCounter[9]),
        .I3(rxCounter[8]),
        .O(\FSM_sequential_rx_currState[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_rx_currState[3]_i_9 
       (.I0(rxCounter[15]),
        .I1(rxCounter[14]),
        .I2(rxCounter[13]),
        .I3(rxCounter[12]),
        .O(\FSM_sequential_rx_currState[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "rx_1:0010,rx_2:0011,rx_0:0001,rx_STOP:1001,rx_IDLE:0000,rx_5:0110,rx_7:1000,rx_4:0101,rx_6:0111,rx_3:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_currState_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_rx_currState[3]_i_1_n_0 ),
        .D(rx_nextState__0[0]),
        .Q(rx_currState[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "rx_1:0010,rx_2:0011,rx_0:0001,rx_STOP:1001,rx_IDLE:0000,rx_5:0110,rx_7:1000,rx_4:0101,rx_6:0111,rx_3:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_currState_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_rx_currState[3]_i_1_n_0 ),
        .D(rx_nextState__0[1]),
        .Q(rx_currState[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "rx_1:0010,rx_2:0011,rx_0:0001,rx_STOP:1001,rx_IDLE:0000,rx_5:0110,rx_7:1000,rx_4:0101,rx_6:0111,rx_3:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_currState_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_rx_currState[3]_i_1_n_0 ),
        .D(rx_nextState__0[2]),
        .Q(rx_currState[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "rx_1:0010,rx_2:0011,rx_0:0001,rx_STOP:1001,rx_IDLE:0000,rx_5:0110,rx_7:1000,rx_4:0101,rx_6:0111,rx_3:0100" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_currState_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_rx_currState[3]_i_1_n_0 ),
        .D(rx_nextState__0[3]),
        .Q(rx_currState[3]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 next_rxCounter0_carry
       (.CI(\<const0> ),
        .CO({next_rxCounter0_carry_n_0,next_rxCounter0_carry_n_1,next_rxCounter0_carry_n_2,next_rxCounter0_carry_n_3}),
        .CYINIT(rxCounter[0]),
        .DI(rxCounter[4:1]),
        .O({next_rxCounter0_carry_n_4,next_rxCounter0_carry_n_5,next_rxCounter0_carry_n_6,next_rxCounter0_carry_n_7}),
        .S({next_rxCounter0_carry_i_1_n_0,next_rxCounter0_carry_i_2_n_0,next_rxCounter0_carry_i_3_n_0,next_rxCounter0_carry_i_4_n_0}));
  CARRY4 next_rxCounter0_carry__0
       (.CI(next_rxCounter0_carry_n_0),
        .CO({next_rxCounter0_carry__0_n_0,next_rxCounter0_carry__0_n_1,next_rxCounter0_carry__0_n_2,next_rxCounter0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(rxCounter[8:5]),
        .O({next_rxCounter0_carry__0_n_4,next_rxCounter0_carry__0_n_5,next_rxCounter0_carry__0_n_6,next_rxCounter0_carry__0_n_7}),
        .S({next_rxCounter0_carry__0_i_1_n_0,next_rxCounter0_carry__0_i_2_n_0,next_rxCounter0_carry__0_i_3_n_0,next_rxCounter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__0_i_1
       (.I0(rxCounter[8]),
        .O(next_rxCounter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__0_i_2
       (.I0(rxCounter[7]),
        .O(next_rxCounter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__0_i_3
       (.I0(rxCounter[6]),
        .O(next_rxCounter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__0_i_4
       (.I0(rxCounter[5]),
        .O(next_rxCounter0_carry__0_i_4_n_0));
  CARRY4 next_rxCounter0_carry__1
       (.CI(next_rxCounter0_carry__0_n_0),
        .CO({next_rxCounter0_carry__1_n_0,next_rxCounter0_carry__1_n_1,next_rxCounter0_carry__1_n_2,next_rxCounter0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(rxCounter[12:9]),
        .O({next_rxCounter0_carry__1_n_4,next_rxCounter0_carry__1_n_5,next_rxCounter0_carry__1_n_6,next_rxCounter0_carry__1_n_7}),
        .S({next_rxCounter0_carry__1_i_1_n_0,next_rxCounter0_carry__1_i_2_n_0,next_rxCounter0_carry__1_i_3_n_0,next_rxCounter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__1_i_1
       (.I0(rxCounter[12]),
        .O(next_rxCounter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__1_i_2
       (.I0(rxCounter[11]),
        .O(next_rxCounter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__1_i_3
       (.I0(rxCounter[10]),
        .O(next_rxCounter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__1_i_4
       (.I0(rxCounter[9]),
        .O(next_rxCounter0_carry__1_i_4_n_0));
  CARRY4 next_rxCounter0_carry__2
       (.CI(next_rxCounter0_carry__1_n_0),
        .CO({next_rxCounter0_carry__2_n_0,next_rxCounter0_carry__2_n_1,next_rxCounter0_carry__2_n_2,next_rxCounter0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(rxCounter[16:13]),
        .O({next_rxCounter0_carry__2_n_4,next_rxCounter0_carry__2_n_5,next_rxCounter0_carry__2_n_6,next_rxCounter0_carry__2_n_7}),
        .S({next_rxCounter0_carry__2_i_1_n_0,next_rxCounter0_carry__2_i_2_n_0,next_rxCounter0_carry__2_i_3_n_0,next_rxCounter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__2_i_1
       (.I0(rxCounter[16]),
        .O(next_rxCounter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__2_i_2
       (.I0(rxCounter[15]),
        .O(next_rxCounter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__2_i_3
       (.I0(rxCounter[14]),
        .O(next_rxCounter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__2_i_4
       (.I0(rxCounter[13]),
        .O(next_rxCounter0_carry__2_i_4_n_0));
  CARRY4 next_rxCounter0_carry__3
       (.CI(next_rxCounter0_carry__2_n_0),
        .CO({next_rxCounter0_carry__3_n_0,next_rxCounter0_carry__3_n_1,next_rxCounter0_carry__3_n_2,next_rxCounter0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(rxCounter[20:17]),
        .O({next_rxCounter0_carry__3_n_4,next_rxCounter0_carry__3_n_5,next_rxCounter0_carry__3_n_6,next_rxCounter0_carry__3_n_7}),
        .S({next_rxCounter0_carry__3_i_1_n_0,next_rxCounter0_carry__3_i_2_n_0,next_rxCounter0_carry__3_i_3_n_0,next_rxCounter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__3_i_1
       (.I0(rxCounter[20]),
        .O(next_rxCounter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__3_i_2
       (.I0(rxCounter[19]),
        .O(next_rxCounter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__3_i_3
       (.I0(rxCounter[18]),
        .O(next_rxCounter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__3_i_4
       (.I0(rxCounter[17]),
        .O(next_rxCounter0_carry__3_i_4_n_0));
  CARRY4 next_rxCounter0_carry__4
       (.CI(next_rxCounter0_carry__3_n_0),
        .CO({next_rxCounter0_carry__4_n_0,next_rxCounter0_carry__4_n_1,next_rxCounter0_carry__4_n_2,next_rxCounter0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(rxCounter[24:21]),
        .O({next_rxCounter0_carry__4_n_4,next_rxCounter0_carry__4_n_5,next_rxCounter0_carry__4_n_6,next_rxCounter0_carry__4_n_7}),
        .S({next_rxCounter0_carry__4_i_1_n_0,next_rxCounter0_carry__4_i_2_n_0,next_rxCounter0_carry__4_i_3_n_0,next_rxCounter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__4_i_1
       (.I0(rxCounter[24]),
        .O(next_rxCounter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__4_i_2
       (.I0(rxCounter[23]),
        .O(next_rxCounter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__4_i_3
       (.I0(rxCounter[22]),
        .O(next_rxCounter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__4_i_4
       (.I0(rxCounter[21]),
        .O(next_rxCounter0_carry__4_i_4_n_0));
  CARRY4 next_rxCounter0_carry__5
       (.CI(next_rxCounter0_carry__4_n_0),
        .CO({next_rxCounter0_carry__5_n_0,next_rxCounter0_carry__5_n_1,next_rxCounter0_carry__5_n_2,next_rxCounter0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(rxCounter[28:25]),
        .O({next_rxCounter0_carry__5_n_4,next_rxCounter0_carry__5_n_5,next_rxCounter0_carry__5_n_6,next_rxCounter0_carry__5_n_7}),
        .S({next_rxCounter0_carry__5_i_1_n_0,next_rxCounter0_carry__5_i_2_n_0,next_rxCounter0_carry__5_i_3_n_0,next_rxCounter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__5_i_1
       (.I0(rxCounter[28]),
        .O(next_rxCounter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__5_i_2
       (.I0(rxCounter[27]),
        .O(next_rxCounter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__5_i_3
       (.I0(rxCounter[26]),
        .O(next_rxCounter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__5_i_4
       (.I0(rxCounter[25]),
        .O(next_rxCounter0_carry__5_i_4_n_0));
  CARRY4 next_rxCounter0_carry__6
       (.CI(next_rxCounter0_carry__5_n_0),
        .CO({next_rxCounter0_carry__6_n_2,next_rxCounter0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,rxCounter[30:29]}),
        .O({next_rxCounter0_carry__6_n_5,next_rxCounter0_carry__6_n_6,next_rxCounter0_carry__6_n_7}),
        .S({\<const0> ,next_rxCounter0_carry__6_i_1_n_0,next_rxCounter0_carry__6_i_2_n_0,next_rxCounter0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__6_i_1
       (.I0(rxCounter[31]),
        .O(next_rxCounter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__6_i_2
       (.I0(rxCounter[30]),
        .O(next_rxCounter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry__6_i_3
       (.I0(rxCounter[29]),
        .O(next_rxCounter0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry_i_1
       (.I0(rxCounter[4]),
        .O(next_rxCounter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry_i_2
       (.I0(rxCounter[3]),
        .O(next_rxCounter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry_i_3
       (.I0(rxCounter[2]),
        .O(next_rxCounter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_rxCounter0_carry_i_4
       (.I0(rxCounter[1]),
        .O(next_rxCounter0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000EAEEEEEE)) 
    \rxCounter[0]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(rxCounter[0]),
        .O(\rxCounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8AAAAAA)) 
    \rxCounter[10]_i_1 
       (.I0(next_rxCounter0_carry__1_n_6),
        .I1(\rxCounter[13]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(\rxCounter[13]_i_2_n_0 ),
        .O(\rxCounter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEAEEEEAAEA)) 
    \rxCounter[11]_i_1 
       (.I0(\rxCounter[13]_i_2_n_0 ),
        .I1(\rxCounter[13]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_3_n_0 ),
        .I3(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I4(next_rxCounter0_carry__1_n_5),
        .I5(\rxCounter[13]_i_4_n_0 ),
        .O(\rxCounter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8AAAAAA)) 
    \rxCounter[12]_i_1 
       (.I0(next_rxCounter0_carry__1_n_4),
        .I1(\rxCounter[13]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(\rxCounter[13]_i_2_n_0 ),
        .O(\rxCounter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFAAEAEEEEAAEA)) 
    \rxCounter[13]_i_1 
       (.I0(\rxCounter[13]_i_2_n_0 ),
        .I1(\rxCounter[13]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_3_n_0 ),
        .I3(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I4(next_rxCounter0_carry__2_n_7),
        .I5(\rxCounter[13]_i_4_n_0 ),
        .O(\rxCounter[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \rxCounter[13]_i_2 
       (.I0(rx_currState[3]),
        .I1(rx_currState[0]),
        .I2(rx_currState[2]),
        .I3(rx_currState[1]),
        .I4(uart_rx_in_IBUF),
        .O(\rxCounter[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h7776)) 
    \rxCounter[13]_i_3 
       (.I0(rx_currState[3]),
        .I1(rx_currState[0]),
        .I2(rx_currState[2]),
        .I3(rx_currState[1]),
        .O(\rxCounter[13]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8889)) 
    \rxCounter[13]_i_4 
       (.I0(rx_currState[3]),
        .I1(rx_currState[0]),
        .I2(rx_currState[2]),
        .I3(rx_currState[1]),
        .O(\rxCounter[13]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[14]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__2_n_6),
        .O(\rxCounter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[15]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__2_n_5),
        .O(\rxCounter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[16]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__2_n_4),
        .O(\rxCounter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[17]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__3_n_7),
        .O(\rxCounter[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[18]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__3_n_6),
        .O(\rxCounter[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[19]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__3_n_5),
        .O(\rxCounter[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[1]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry_n_7),
        .O(\rxCounter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[20]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__3_n_4),
        .O(\rxCounter[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[21]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__4_n_7),
        .O(\rxCounter[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[22]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__4_n_6),
        .O(\rxCounter[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[23]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__4_n_5),
        .O(\rxCounter[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[24]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__4_n_4),
        .O(\rxCounter[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[25]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__5_n_7),
        .O(\rxCounter[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[26]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__5_n_6),
        .O(\rxCounter[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[27]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__5_n_5),
        .O(\rxCounter[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[28]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__5_n_4),
        .O(\rxCounter[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[29]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__6_n_7),
        .O(\rxCounter[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[2]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry_n_6),
        .O(\rxCounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[30]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__6_n_6),
        .O(\rxCounter[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[31]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__6_n_5),
        .O(\rxCounter[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF000010)) 
    \rxCounter[31]_i_2 
       (.I0(rx_currState[1]),
        .I1(rx_currState[2]),
        .I2(uart_rx_in_IBUF),
        .I3(rx_currState[3]),
        .I4(rx_currState[0]),
        .O(\rxCounter[31]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \rxCounter[31]_i_3 
       (.I0(rx_currState[1]),
        .I1(rx_currState[2]),
        .I2(rx_currState[0]),
        .I3(rx_currState[3]),
        .O(\rxCounter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rxCounter[31]_i_4 
       (.I0(rxCounter[2]),
        .I1(rxCounter[3]),
        .I2(rxCounter[0]),
        .I3(rxCounter[1]),
        .I4(\FSM_sequential_rx_currState[3]_i_6_n_0 ),
        .O(\rxCounter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \rxCounter[31]_i_5 
       (.I0(rxCounter[12]),
        .I1(rxCounter[13]),
        .I2(rxCounter[14]),
        .I3(rxCounter[15]),
        .I4(\FSM_sequential_rx_currState[3]_i_8_n_0 ),
        .O(\rxCounter[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8AAAAAA)) 
    \rxCounter[3]_i_1 
       (.I0(next_rxCounter0_carry_n_5),
        .I1(\rxCounter[13]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(\rxCounter[13]_i_2_n_0 ),
        .O(\rxCounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000FF004000)) 
    \rxCounter[4]_i_1 
       (.I0(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I1(\rxCounter[31]_i_4_n_0 ),
        .I2(\rxCounter[31]_i_5_n_0 ),
        .I3(\rxCounter[13]_i_3_n_0 ),
        .I4(next_rxCounter0_carry_n_4),
        .I5(\rxCounter[31]_i_2_n_0 ),
        .O(\rxCounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000FF004000)) 
    \rxCounter[5]_i_1 
       (.I0(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I1(\rxCounter[31]_i_4_n_0 ),
        .I2(\rxCounter[31]_i_5_n_0 ),
        .I3(\rxCounter[13]_i_3_n_0 ),
        .I4(next_rxCounter0_carry__0_n_7),
        .I5(\rxCounter[31]_i_2_n_0 ),
        .O(\rxCounter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[6]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__0_n_6),
        .O(\rxCounter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF4000FF004000)) 
    \rxCounter[7]_i_1 
       (.I0(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I1(\rxCounter[31]_i_4_n_0 ),
        .I2(\rxCounter[31]_i_5_n_0 ),
        .I3(\rxCounter[13]_i_3_n_0 ),
        .I4(next_rxCounter0_carry__0_n_5),
        .I5(\rxCounter[31]_i_2_n_0 ),
        .O(\rxCounter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFA8AAAAAA)) 
    \rxCounter[8]_i_1 
       (.I0(next_rxCounter0_carry__0_n_4),
        .I1(\rxCounter[13]_i_4_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(\rxCounter[13]_i_2_n_0 ),
        .O(\rxCounter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEAEEEEEE00000000)) 
    \rxCounter[9]_i_1 
       (.I0(\rxCounter[31]_i_2_n_0 ),
        .I1(\rxCounter[31]_i_3_n_0 ),
        .I2(\FSM_sequential_rx_currState[3]_i_4_n_0 ),
        .I3(\rxCounter[31]_i_4_n_0 ),
        .I4(\rxCounter[31]_i_5_n_0 ),
        .I5(next_rxCounter0_carry__1_n_7),
        .O(\rxCounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[0]_i_1_n_0 ),
        .Q(rxCounter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[10]_i_1_n_0 ),
        .Q(rxCounter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[11]_i_1_n_0 ),
        .Q(rxCounter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[12]_i_1_n_0 ),
        .Q(rxCounter[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[13]_i_1_n_0 ),
        .Q(rxCounter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[14]_i_1_n_0 ),
        .Q(rxCounter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[15]_i_1_n_0 ),
        .Q(rxCounter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[16]_i_1_n_0 ),
        .Q(rxCounter[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[17] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[17]_i_1_n_0 ),
        .Q(rxCounter[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[18] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[18]_i_1_n_0 ),
        .Q(rxCounter[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[19] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[19]_i_1_n_0 ),
        .Q(rxCounter[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[1]_i_1_n_0 ),
        .Q(rxCounter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[20] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[20]_i_1_n_0 ),
        .Q(rxCounter[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[21] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[21]_i_1_n_0 ),
        .Q(rxCounter[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[22] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[22]_i_1_n_0 ),
        .Q(rxCounter[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[23] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[23]_i_1_n_0 ),
        .Q(rxCounter[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[24] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[24]_i_1_n_0 ),
        .Q(rxCounter[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[25] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[25]_i_1_n_0 ),
        .Q(rxCounter[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[26] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[26]_i_1_n_0 ),
        .Q(rxCounter[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[27] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[27]_i_1_n_0 ),
        .Q(rxCounter[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[28] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[28]_i_1_n_0 ),
        .Q(rxCounter[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[29] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[29]_i_1_n_0 ),
        .Q(rxCounter[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[2]_i_1_n_0 ),
        .Q(rxCounter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[30] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[30]_i_1_n_0 ),
        .Q(rxCounter[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[31] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[31]_i_1_n_0 ),
        .Q(rxCounter[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[3]_i_1_n_0 ),
        .Q(rxCounter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[4]_i_1_n_0 ),
        .Q(rxCounter[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[5]_i_1_n_0 ),
        .Q(rxCounter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[6]_i_1_n_0 ),
        .Q(rxCounter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[7]_i_1_n_0 ),
        .Q(rxCounter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[8]_i_1_n_0 ),
        .Q(rxCounter[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \rxCounter_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\rxCounter[9]_i_1_n_0 ),
        .Q(rxCounter[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0008)) 
    rx_ready_OBUF_inst_i_1
       (.I0(rx_currState[3]),
        .I1(rx_currState[0]),
        .I2(rx_currState[2]),
        .I3(rx_currState[1]),
        .O(rx_ready_OBUF));
  LUT6 #(
    .INIT(64'h0000000800080000)) 
    \shiftData[7]_i_1 
       (.I0(\rxCounter[31]_i_5_n_0 ),
        .I1(\rxCounter[31]_i_4_n_0 ),
        .I2(\shiftData[7]_i_2_n_0 ),
        .I3(\shiftData[7]_i_3_n_0 ),
        .I4(\shiftData[7]_i_4_n_0 ),
        .I5(rx_currState[3]),
        .O(shift));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \shiftData[7]_i_2 
       (.I0(rxCounter[27]),
        .I1(rxCounter[26]),
        .I2(rxCounter[25]),
        .I3(rxCounter[24]),
        .I4(\FSM_sequential_rx_currState[3]_i_12_n_0 ),
        .O(\shiftData[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \shiftData[7]_i_3 
       (.I0(rxCounter[19]),
        .I1(rxCounter[18]),
        .I2(rxCounter[17]),
        .I3(rxCounter[16]),
        .I4(\FSM_sequential_rx_currState[3]_i_10_n_0 ),
        .O(\shiftData[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \shiftData[7]_i_4 
       (.I0(rx_currState[2]),
        .I1(rx_currState[1]),
        .I2(rx_currState[0]),
        .O(\shiftData[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[0] 
       (.C(CLK),
        .CE(shift),
        .D(Q[1]),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[1] 
       (.C(CLK),
        .CE(shift),
        .D(Q[2]),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[2] 
       (.C(CLK),
        .CE(shift),
        .D(Q[3]),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[3] 
       (.C(CLK),
        .CE(shift),
        .D(Q[4]),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[4] 
       (.C(CLK),
        .CE(shift),
        .D(Q[5]),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[5] 
       (.C(CLK),
        .CE(shift),
        .D(Q[6]),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[6] 
       (.C(CLK),
        .CE(shift),
        .D(Q[7]),
        .Q(Q[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shiftData_reg[7] 
       (.C(CLK),
        .CE(shift),
        .D(uart_rx_in_IBUF),
        .Q(Q[7]),
        .R(SR));
endmodule

module myTX
   (tx_empty_OBUF,
    tx_err_OBUF,
    uart_tx_out_OBUF,
    SR,
    CLK,
    D,
    tx_req_IBUF);
  output tx_empty_OBUF;
  output tx_err_OBUF;
  output uart_tx_out_OBUF;
  input [0:0]SR;
  input CLK;
  input [7:0]D;
  input tx_req_IBUF;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire \FSM_sequential_tx_currState[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_10_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_11_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_12_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_13_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_14_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_1_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_3_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_4_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_7_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_8_n_0 ;
  wire \FSM_sequential_tx_currState[3]_i_9_n_0 ;
  wire [0:0]SR;
  wire [31:1]data0;
  wire latchTxData;
  wire next_txCounter0_carry__0_i_1_n_0;
  wire next_txCounter0_carry__0_i_2_n_0;
  wire next_txCounter0_carry__0_i_3_n_0;
  wire next_txCounter0_carry__0_i_4_n_0;
  wire next_txCounter0_carry__0_n_0;
  wire next_txCounter0_carry__0_n_1;
  wire next_txCounter0_carry__0_n_2;
  wire next_txCounter0_carry__0_n_3;
  wire next_txCounter0_carry__1_i_1_n_0;
  wire next_txCounter0_carry__1_i_2_n_0;
  wire next_txCounter0_carry__1_i_3_n_0;
  wire next_txCounter0_carry__1_i_4_n_0;
  wire next_txCounter0_carry__1_n_0;
  wire next_txCounter0_carry__1_n_1;
  wire next_txCounter0_carry__1_n_2;
  wire next_txCounter0_carry__1_n_3;
  wire next_txCounter0_carry__2_i_1_n_0;
  wire next_txCounter0_carry__2_i_2_n_0;
  wire next_txCounter0_carry__2_i_3_n_0;
  wire next_txCounter0_carry__2_i_4_n_0;
  wire next_txCounter0_carry__2_n_0;
  wire next_txCounter0_carry__2_n_1;
  wire next_txCounter0_carry__2_n_2;
  wire next_txCounter0_carry__2_n_3;
  wire next_txCounter0_carry__3_i_1_n_0;
  wire next_txCounter0_carry__3_i_2_n_0;
  wire next_txCounter0_carry__3_i_3_n_0;
  wire next_txCounter0_carry__3_i_4_n_0;
  wire next_txCounter0_carry__3_n_0;
  wire next_txCounter0_carry__3_n_1;
  wire next_txCounter0_carry__3_n_2;
  wire next_txCounter0_carry__3_n_3;
  wire next_txCounter0_carry__4_i_1_n_0;
  wire next_txCounter0_carry__4_i_2_n_0;
  wire next_txCounter0_carry__4_i_3_n_0;
  wire next_txCounter0_carry__4_i_4_n_0;
  wire next_txCounter0_carry__4_n_0;
  wire next_txCounter0_carry__4_n_1;
  wire next_txCounter0_carry__4_n_2;
  wire next_txCounter0_carry__4_n_3;
  wire next_txCounter0_carry__5_i_1_n_0;
  wire next_txCounter0_carry__5_i_2_n_0;
  wire next_txCounter0_carry__5_i_3_n_0;
  wire next_txCounter0_carry__5_i_4_n_0;
  wire next_txCounter0_carry__5_n_0;
  wire next_txCounter0_carry__5_n_1;
  wire next_txCounter0_carry__5_n_2;
  wire next_txCounter0_carry__5_n_3;
  wire next_txCounter0_carry__6_i_1_n_0;
  wire next_txCounter0_carry__6_i_2_n_0;
  wire next_txCounter0_carry__6_i_3_n_0;
  wire next_txCounter0_carry__6_n_2;
  wire next_txCounter0_carry__6_n_3;
  wire next_txCounter0_carry_i_1_n_0;
  wire next_txCounter0_carry_i_2_n_0;
  wire next_txCounter0_carry_i_3_n_0;
  wire next_txCounter0_carry_i_4_n_0;
  wire next_txCounter0_carry_n_0;
  wire next_txCounter0_carry_n_1;
  wire next_txCounter0_carry_n_2;
  wire next_txCounter0_carry_n_3;
  wire p_0_in;
  wire p_1_in;
  wire p_2_in;
  wire p_3_in;
  wire p_4_in;
  wire p_5_in;
  wire p_6_in;
  wire [31:0]txCounter;
  wire \txCounter[0]_i_1_n_0 ;
  wire \txCounter[10]_i_1_n_0 ;
  wire \txCounter[11]_i_1_n_0 ;
  wire \txCounter[12]_i_1_n_0 ;
  wire \txCounter[13]_i_1_n_0 ;
  wire \txCounter[14]_i_1_n_0 ;
  wire \txCounter[15]_i_1_n_0 ;
  wire \txCounter[16]_i_1_n_0 ;
  wire \txCounter[17]_i_1_n_0 ;
  wire \txCounter[18]_i_1_n_0 ;
  wire \txCounter[19]_i_1_n_0 ;
  wire \txCounter[1]_i_1_n_0 ;
  wire \txCounter[20]_i_1_n_0 ;
  wire \txCounter[21]_i_1_n_0 ;
  wire \txCounter[22]_i_1_n_0 ;
  wire \txCounter[23]_i_1_n_0 ;
  wire \txCounter[24]_i_1_n_0 ;
  wire \txCounter[25]_i_1_n_0 ;
  wire \txCounter[26]_i_1_n_0 ;
  wire \txCounter[27]_i_1_n_0 ;
  wire \txCounter[28]_i_1_n_0 ;
  wire \txCounter[29]_i_1_n_0 ;
  wire \txCounter[2]_i_1_n_0 ;
  wire \txCounter[30]_i_1_n_0 ;
  wire \txCounter[31]_i_1_n_0 ;
  wire \txCounter[31]_i_2_n_0 ;
  wire \txCounter[31]_i_3_n_0 ;
  wire \txCounter[3]_i_1_n_0 ;
  wire \txCounter[4]_i_1_n_0 ;
  wire \txCounter[5]_i_1_n_0 ;
  wire \txCounter[6]_i_1_n_0 ;
  wire \txCounter[7]_i_1_n_0 ;
  wire \txCounter[8]_i_1_n_0 ;
  wire \txCounter[9]_i_1_n_0 ;
  wire \txDataFF_reg_n_0_[0] ;
  (* RTL_KEEP = "yes" *) wire [3:0]tx_currState;
  wire tx_empty_OBUF;
  wire tx_err_OBUF;
  wire [3:1]tx_nextState__0;
  wire tx_req_IBUF;
  wire uart_tx_out_OBUF;
  wire uart_tx_out_OBUF_inst_i_2_n_0;
  wire uart_tx_out_OBUF_inst_i_3_n_0;
  wire uart_tx_out_OBUF_inst_i_4_n_0;
  wire uart_tx_out_OBUF_inst_i_5_n_0;

  LUT3 #(
    .INIT(8'h15)) 
    \FSM_sequential_tx_currState[0]_i_1 
       (.I0(tx_currState[0]),
        .I1(tx_currState[1]),
        .I2(tx_currState[3]),
        .O(\FSM_sequential_tx_currState[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1C)) 
    \FSM_sequential_tx_currState[1]_i_1 
       (.I0(tx_currState[3]),
        .I1(tx_currState[0]),
        .I2(tx_currState[1]),
        .O(tx_nextState__0[1]));
  LUT4 #(
    .INIT(16'h006A)) 
    \FSM_sequential_tx_currState[2]_i_1 
       (.I0(tx_currState[2]),
        .I1(tx_currState[0]),
        .I2(tx_currState[1]),
        .I3(tx_currState[3]),
        .O(tx_nextState__0[2]));
  LUT6 #(
    .INIT(64'h101030FF10103000)) 
    \FSM_sequential_tx_currState[3]_i_1 
       (.I0(\FSM_sequential_tx_currState[3]_i_3_n_0 ),
        .I1(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I2(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_6_n_0 ),
        .I4(tx_currState[3]),
        .I5(tx_req_IBUF),
        .O(\FSM_sequential_tx_currState[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_10 
       (.I0(txCounter[23]),
        .I1(txCounter[20]),
        .I2(txCounter[22]),
        .I3(txCounter[21]),
        .O(\FSM_sequential_tx_currState[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_11 
       (.I0(txCounter[11]),
        .I1(txCounter[8]),
        .I2(txCounter[10]),
        .I3(txCounter[9]),
        .O(\FSM_sequential_tx_currState[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_tx_currState[3]_i_12 
       (.I0(txCounter[27]),
        .I1(txCounter[24]),
        .I2(txCounter[26]),
        .I3(txCounter[25]),
        .O(\FSM_sequential_tx_currState[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_13 
       (.I0(txCounter[30]),
        .I1(txCounter[28]),
        .I2(txCounter[31]),
        .I3(txCounter[29]),
        .O(\FSM_sequential_tx_currState[3]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_14 
       (.I0(txCounter[15]),
        .I1(txCounter[12]),
        .I2(txCounter[14]),
        .I3(txCounter[13]),
        .O(\FSM_sequential_tx_currState[3]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_tx_currState[3]_i_2 
       (.I0(tx_currState[2]),
        .I1(tx_currState[0]),
        .I2(tx_currState[1]),
        .I3(tx_currState[3]),
        .O(tx_nextState__0[3]));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_tx_currState[3]_i_3 
       (.I0(tx_currState[2]),
        .I1(tx_currState[0]),
        .I2(tx_currState[1]),
        .O(\FSM_sequential_tx_currState[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_4 
       (.I0(\FSM_sequential_tx_currState[3]_i_7_n_0 ),
        .I1(\FSM_sequential_tx_currState[3]_i_8_n_0 ),
        .I2(\FSM_sequential_tx_currState[3]_i_9_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_10_n_0 ),
        .O(\FSM_sequential_tx_currState[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_tx_currState[3]_i_5 
       (.I0(\FSM_sequential_tx_currState[3]_i_11_n_0 ),
        .I1(\FSM_sequential_tx_currState[3]_i_12_n_0 ),
        .I2(\FSM_sequential_tx_currState[3]_i_13_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_14_n_0 ),
        .O(\FSM_sequential_tx_currState[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \FSM_sequential_tx_currState[3]_i_6 
       (.I0(tx_currState[2]),
        .I1(tx_currState[0]),
        .I2(tx_currState[1]),
        .O(\FSM_sequential_tx_currState[3]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_7 
       (.I0(txCounter[19]),
        .I1(txCounter[16]),
        .I2(txCounter[18]),
        .I3(txCounter[17]),
        .O(\FSM_sequential_tx_currState[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_8 
       (.I0(txCounter[3]),
        .I1(txCounter[1]),
        .I2(txCounter[2]),
        .I3(txCounter[0]),
        .O(\FSM_sequential_tx_currState[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_tx_currState[3]_i_9 
       (.I0(txCounter[7]),
        .I1(txCounter[4]),
        .I2(txCounter[6]),
        .I3(txCounter[5]),
        .O(\FSM_sequential_tx_currState[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "tx_1:0011,tx_2:0100,tx_0:0010,tx_STOP:1010,tx_start:0001,tx_IDLE:0000,tx_7:1001,tx_5:0111,tx_6:1000,tx_4:0110,tx_3:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_currState_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_tx_currState[3]_i_1_n_0 ),
        .D(\FSM_sequential_tx_currState[0]_i_1_n_0 ),
        .Q(tx_currState[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "tx_1:0011,tx_2:0100,tx_0:0010,tx_STOP:1010,tx_start:0001,tx_IDLE:0000,tx_7:1001,tx_5:0111,tx_6:1000,tx_4:0110,tx_3:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_currState_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_tx_currState[3]_i_1_n_0 ),
        .D(tx_nextState__0[1]),
        .Q(tx_currState[1]),
        .R(SR));
  (* FSM_ENCODED_STATES = "tx_1:0011,tx_2:0100,tx_0:0010,tx_STOP:1010,tx_start:0001,tx_IDLE:0000,tx_7:1001,tx_5:0111,tx_6:1000,tx_4:0110,tx_3:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_currState_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_tx_currState[3]_i_1_n_0 ),
        .D(tx_nextState__0[2]),
        .Q(tx_currState[2]),
        .R(SR));
  (* FSM_ENCODED_STATES = "tx_1:0011,tx_2:0100,tx_0:0010,tx_STOP:1010,tx_start:0001,tx_IDLE:0000,tx_7:1001,tx_5:0111,tx_6:1000,tx_4:0110,tx_3:0101" *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_currState_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_tx_currState[3]_i_1_n_0 ),
        .D(tx_nextState__0[3]),
        .Q(tx_currState[3]),
        .R(SR));
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  CARRY4 next_txCounter0_carry
       (.CI(\<const0> ),
        .CO({next_txCounter0_carry_n_0,next_txCounter0_carry_n_1,next_txCounter0_carry_n_2,next_txCounter0_carry_n_3}),
        .CYINIT(txCounter[0]),
        .DI(txCounter[4:1]),
        .O(data0[4:1]),
        .S({next_txCounter0_carry_i_1_n_0,next_txCounter0_carry_i_2_n_0,next_txCounter0_carry_i_3_n_0,next_txCounter0_carry_i_4_n_0}));
  CARRY4 next_txCounter0_carry__0
       (.CI(next_txCounter0_carry_n_0),
        .CO({next_txCounter0_carry__0_n_0,next_txCounter0_carry__0_n_1,next_txCounter0_carry__0_n_2,next_txCounter0_carry__0_n_3}),
        .CYINIT(\<const0> ),
        .DI(txCounter[8:5]),
        .O(data0[8:5]),
        .S({next_txCounter0_carry__0_i_1_n_0,next_txCounter0_carry__0_i_2_n_0,next_txCounter0_carry__0_i_3_n_0,next_txCounter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__0_i_1
       (.I0(txCounter[8]),
        .O(next_txCounter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__0_i_2
       (.I0(txCounter[7]),
        .O(next_txCounter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__0_i_3
       (.I0(txCounter[6]),
        .O(next_txCounter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__0_i_4
       (.I0(txCounter[5]),
        .O(next_txCounter0_carry__0_i_4_n_0));
  CARRY4 next_txCounter0_carry__1
       (.CI(next_txCounter0_carry__0_n_0),
        .CO({next_txCounter0_carry__1_n_0,next_txCounter0_carry__1_n_1,next_txCounter0_carry__1_n_2,next_txCounter0_carry__1_n_3}),
        .CYINIT(\<const0> ),
        .DI(txCounter[12:9]),
        .O(data0[12:9]),
        .S({next_txCounter0_carry__1_i_1_n_0,next_txCounter0_carry__1_i_2_n_0,next_txCounter0_carry__1_i_3_n_0,next_txCounter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__1_i_1
       (.I0(txCounter[12]),
        .O(next_txCounter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__1_i_2
       (.I0(txCounter[11]),
        .O(next_txCounter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__1_i_3
       (.I0(txCounter[10]),
        .O(next_txCounter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__1_i_4
       (.I0(txCounter[9]),
        .O(next_txCounter0_carry__1_i_4_n_0));
  CARRY4 next_txCounter0_carry__2
       (.CI(next_txCounter0_carry__1_n_0),
        .CO({next_txCounter0_carry__2_n_0,next_txCounter0_carry__2_n_1,next_txCounter0_carry__2_n_2,next_txCounter0_carry__2_n_3}),
        .CYINIT(\<const0> ),
        .DI(txCounter[16:13]),
        .O(data0[16:13]),
        .S({next_txCounter0_carry__2_i_1_n_0,next_txCounter0_carry__2_i_2_n_0,next_txCounter0_carry__2_i_3_n_0,next_txCounter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__2_i_1
       (.I0(txCounter[16]),
        .O(next_txCounter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__2_i_2
       (.I0(txCounter[15]),
        .O(next_txCounter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__2_i_3
       (.I0(txCounter[14]),
        .O(next_txCounter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__2_i_4
       (.I0(txCounter[13]),
        .O(next_txCounter0_carry__2_i_4_n_0));
  CARRY4 next_txCounter0_carry__3
       (.CI(next_txCounter0_carry__2_n_0),
        .CO({next_txCounter0_carry__3_n_0,next_txCounter0_carry__3_n_1,next_txCounter0_carry__3_n_2,next_txCounter0_carry__3_n_3}),
        .CYINIT(\<const0> ),
        .DI(txCounter[20:17]),
        .O(data0[20:17]),
        .S({next_txCounter0_carry__3_i_1_n_0,next_txCounter0_carry__3_i_2_n_0,next_txCounter0_carry__3_i_3_n_0,next_txCounter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__3_i_1
       (.I0(txCounter[20]),
        .O(next_txCounter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__3_i_2
       (.I0(txCounter[19]),
        .O(next_txCounter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__3_i_3
       (.I0(txCounter[18]),
        .O(next_txCounter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__3_i_4
       (.I0(txCounter[17]),
        .O(next_txCounter0_carry__3_i_4_n_0));
  CARRY4 next_txCounter0_carry__4
       (.CI(next_txCounter0_carry__3_n_0),
        .CO({next_txCounter0_carry__4_n_0,next_txCounter0_carry__4_n_1,next_txCounter0_carry__4_n_2,next_txCounter0_carry__4_n_3}),
        .CYINIT(\<const0> ),
        .DI(txCounter[24:21]),
        .O(data0[24:21]),
        .S({next_txCounter0_carry__4_i_1_n_0,next_txCounter0_carry__4_i_2_n_0,next_txCounter0_carry__4_i_3_n_0,next_txCounter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__4_i_1
       (.I0(txCounter[24]),
        .O(next_txCounter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__4_i_2
       (.I0(txCounter[23]),
        .O(next_txCounter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__4_i_3
       (.I0(txCounter[22]),
        .O(next_txCounter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__4_i_4
       (.I0(txCounter[21]),
        .O(next_txCounter0_carry__4_i_4_n_0));
  CARRY4 next_txCounter0_carry__5
       (.CI(next_txCounter0_carry__4_n_0),
        .CO({next_txCounter0_carry__5_n_0,next_txCounter0_carry__5_n_1,next_txCounter0_carry__5_n_2,next_txCounter0_carry__5_n_3}),
        .CYINIT(\<const0> ),
        .DI(txCounter[28:25]),
        .O(data0[28:25]),
        .S({next_txCounter0_carry__5_i_1_n_0,next_txCounter0_carry__5_i_2_n_0,next_txCounter0_carry__5_i_3_n_0,next_txCounter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__5_i_1
       (.I0(txCounter[28]),
        .O(next_txCounter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__5_i_2
       (.I0(txCounter[27]),
        .O(next_txCounter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__5_i_3
       (.I0(txCounter[26]),
        .O(next_txCounter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__5_i_4
       (.I0(txCounter[25]),
        .O(next_txCounter0_carry__5_i_4_n_0));
  CARRY4 next_txCounter0_carry__6
       (.CI(next_txCounter0_carry__5_n_0),
        .CO({next_txCounter0_carry__6_n_2,next_txCounter0_carry__6_n_3}),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,txCounter[30:29]}),
        .O(data0[31:29]),
        .S({\<const0> ,next_txCounter0_carry__6_i_1_n_0,next_txCounter0_carry__6_i_2_n_0,next_txCounter0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__6_i_1
       (.I0(txCounter[31]),
        .O(next_txCounter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__6_i_2
       (.I0(txCounter[30]),
        .O(next_txCounter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry__6_i_3
       (.I0(txCounter[29]),
        .O(next_txCounter0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry_i_1
       (.I0(txCounter[4]),
        .O(next_txCounter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry_i_2
       (.I0(txCounter[3]),
        .O(next_txCounter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry_i_3
       (.I0(txCounter[2]),
        .O(next_txCounter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    next_txCounter0_carry_i_4
       (.I0(txCounter[1]),
        .O(next_txCounter0_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000030333233)) 
    \txCounter[0]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I4(\txCounter[31]_i_3_n_0 ),
        .I5(txCounter[0]),
        .O(\txCounter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[10]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[10]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECCCFCC)) 
    \txCounter[11]_i_1 
       (.I0(\txCounter[31]_i_3_n_0 ),
        .I1(data0[11]),
        .I2(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I4(\txCounter[31]_i_2_n_0 ),
        .I5(latchTxData),
        .O(\txCounter[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[12]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[12]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECCCFCC)) 
    \txCounter[13]_i_1 
       (.I0(\txCounter[31]_i_3_n_0 ),
        .I1(data0[13]),
        .I2(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I4(\txCounter[31]_i_2_n_0 ),
        .I5(latchTxData),
        .O(\txCounter[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[14]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[14]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[15]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[15]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[16]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[16]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[17]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[17]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[18]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[18]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[19]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[19]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[1]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[1]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[20]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[20]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[21]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[21]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[22]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[22]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[23]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[23]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[24]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[24]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[25]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[25]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[26]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[26]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[27]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[27]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[28]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[28]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[29]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[29]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[2]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[2]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[30]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[30]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[31]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[31]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \txCounter[31]_i_2 
       (.I0(tx_currState[3]),
        .I1(tx_currState[1]),
        .I2(tx_currState[0]),
        .I3(tx_currState[2]),
        .O(\txCounter[31]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \txCounter[31]_i_3 
       (.I0(tx_currState[3]),
        .I1(tx_currState[1]),
        .O(\txCounter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[3]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[3]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECCCFCC)) 
    \txCounter[4]_i_1 
       (.I0(\txCounter[31]_i_3_n_0 ),
        .I1(data0[4]),
        .I2(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I4(\txCounter[31]_i_2_n_0 ),
        .I5(latchTxData),
        .O(\txCounter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECCCFCC)) 
    \txCounter[5]_i_1 
       (.I0(\txCounter[31]_i_3_n_0 ),
        .I1(data0[5]),
        .I2(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I4(\txCounter[31]_i_2_n_0 ),
        .I5(latchTxData),
        .O(\txCounter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[6]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[6]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFCECCCFCC)) 
    \txCounter[7]_i_1 
       (.I0(\txCounter[31]_i_3_n_0 ),
        .I1(data0[7]),
        .I2(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I3(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I4(\txCounter[31]_i_2_n_0 ),
        .I5(latchTxData),
        .O(\txCounter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[8]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[8]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3000303030203030)) 
    \txCounter[9]_i_1 
       (.I0(\txCounter[31]_i_2_n_0 ),
        .I1(latchTxData),
        .I2(data0[9]),
        .I3(\FSM_sequential_tx_currState[3]_i_4_n_0 ),
        .I4(\FSM_sequential_tx_currState[3]_i_5_n_0 ),
        .I5(\txCounter[31]_i_3_n_0 ),
        .O(\txCounter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[0]_i_1_n_0 ),
        .Q(txCounter[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[10]_i_1_n_0 ),
        .Q(txCounter[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \txCounter_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[11]_i_1_n_0 ),
        .Q(txCounter[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[12]_i_1_n_0 ),
        .Q(txCounter[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \txCounter_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[13]_i_1_n_0 ),
        .Q(txCounter[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[14]_i_1_n_0 ),
        .Q(txCounter[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[15]_i_1_n_0 ),
        .Q(txCounter[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[16] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[16]_i_1_n_0 ),
        .Q(txCounter[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[17] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[17]_i_1_n_0 ),
        .Q(txCounter[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[18] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[18]_i_1_n_0 ),
        .Q(txCounter[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[19] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[19]_i_1_n_0 ),
        .Q(txCounter[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[1]_i_1_n_0 ),
        .Q(txCounter[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[20] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[20]_i_1_n_0 ),
        .Q(txCounter[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[21] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[21]_i_1_n_0 ),
        .Q(txCounter[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[22] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[22]_i_1_n_0 ),
        .Q(txCounter[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[23] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[23]_i_1_n_0 ),
        .Q(txCounter[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[24] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[24]_i_1_n_0 ),
        .Q(txCounter[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[25] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[25]_i_1_n_0 ),
        .Q(txCounter[25]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[26] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[26]_i_1_n_0 ),
        .Q(txCounter[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[27] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[27]_i_1_n_0 ),
        .Q(txCounter[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[28] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[28]_i_1_n_0 ),
        .Q(txCounter[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[29] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[29]_i_1_n_0 ),
        .Q(txCounter[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[2]_i_1_n_0 ),
        .Q(txCounter[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[30] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[30]_i_1_n_0 ),
        .Q(txCounter[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[31] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[31]_i_1_n_0 ),
        .Q(txCounter[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[3]_i_1_n_0 ),
        .Q(txCounter[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \txCounter_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[4]_i_1_n_0 ),
        .Q(txCounter[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \txCounter_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[5]_i_1_n_0 ),
        .Q(txCounter[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[6]_i_1_n_0 ),
        .Q(txCounter[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b1)) 
    \txCounter_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[7]_i_1_n_0 ),
        .Q(txCounter[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[8]_i_1_n_0 ),
        .Q(txCounter[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txCounter_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\txCounter[9]_i_1_n_0 ),
        .Q(txCounter[9]),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000002)) 
    \txDataFF[7]_i_1 
       (.I0(tx_req_IBUF),
        .I1(tx_currState[2]),
        .I2(tx_currState[0]),
        .I3(tx_currState[1]),
        .I4(tx_currState[3]),
        .O(latchTxData));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[0] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[0]),
        .Q(\txDataFF_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[1] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[1]),
        .Q(p_6_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[2] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[2]),
        .Q(p_5_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[3] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[3]),
        .Q(p_4_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[4] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[4]),
        .Q(p_3_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[5] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[5]),
        .Q(p_2_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[6] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[6]),
        .Q(p_1_in),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \txDataFF_reg[7] 
       (.C(CLK),
        .CE(latchTxData),
        .D(D[7]),
        .Q(p_0_in),
        .R(SR));
  LUT4 #(
    .INIT(16'h0001)) 
    tx_empty_OBUF_inst_i_1
       (.I0(tx_currState[3]),
        .I1(tx_currState[1]),
        .I2(tx_currState[0]),
        .I3(tx_currState[2]),
        .O(tx_empty_OBUF));
  LUT5 #(
    .INIT(32'hAAAAAAA8)) 
    tx_err_OBUF_inst_i_1
       (.I0(tx_req_IBUF),
        .I1(tx_currState[2]),
        .I2(tx_currState[0]),
        .I3(tx_currState[1]),
        .I4(tx_currState[3]),
        .O(tx_err_OBUF));
  MUXF7 uart_tx_out_OBUF_inst_i_1
       (.I0(uart_tx_out_OBUF_inst_i_2_n_0),
        .I1(uart_tx_out_OBUF_inst_i_3_n_0),
        .O(uart_tx_out_OBUF),
        .S(tx_currState[3]));
  LUT6 #(
    .INIT(64'hB888B888BBBB88BB)) 
    uart_tx_out_OBUF_inst_i_2
       (.I0(uart_tx_out_OBUF_inst_i_4_n_0),
        .I1(uart_tx_out_OBUF_inst_i_5_n_0),
        .I2(p_6_in),
        .I3(tx_currState[1]),
        .I4(\txDataFF_reg_n_0_[0] ),
        .I5(tx_currState[0]),
        .O(uart_tx_out_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFE2E2E2FFE2)) 
    uart_tx_out_OBUF_inst_i_3
       (.I0(tx_currState[2]),
        .I1(tx_currState[3]),
        .I2(tx_currState[1]),
        .I3(p_1_in),
        .I4(tx_currState[0]),
        .I5(p_0_in),
        .O(uart_tx_out_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_tx_out_OBUF_inst_i_4
       (.I0(p_2_in),
        .I1(p_3_in),
        .I2(tx_currState[1]),
        .I3(p_4_in),
        .I4(tx_currState[0]),
        .I5(p_5_in),
        .O(uart_tx_out_OBUF_inst_i_4_n_0));
  LUT3 #(
    .INIT(8'hB8)) 
    uart_tx_out_OBUF_inst_i_5
       (.I0(tx_currState[1]),
        .I1(tx_currState[3]),
        .I2(tx_currState[2]),
        .O(uart_tx_out_OBUF_inst_i_5_n_0));
endmodule

(* STRUCTURAL_NETLIST = "yes" *)
module myuart
   (clk,
    rst,
    uart_rx_in,
    uart_tx_out,
    tx_data,
    tx_req,
    tx_empty,
    tx_err,
    rx_data,
    rx_ready);
  input clk;
  input rst;
  input uart_rx_in;
  output uart_tx_out;
  input [7:0]tx_data;
  input tx_req;
  output tx_empty;
  output tx_err;
  output [7:0]rx_data;
  output rx_ready;

  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire rst;
  wire rst_IBUF;
  wire [7:0]rx_data;
  wire [7:0]rx_data_OBUF;
  wire rx_ready;
  wire rx_ready_OBUF;
  wire [7:0]tx_data;
  wire [7:0]tx_data_IBUF;
  wire tx_empty;
  wire tx_empty_OBUF;
  wire tx_err;
  wire tx_err_OBUF;
  wire tx_req;
  wire tx_req_IBUF;
  wire uart_rx_in;
  wire uart_rx_in_IBUF;
  wire uart_tx_out;
  wire uart_tx_out_OBUF;

  myRX RX
       (.CLK(clk_IBUF_BUFG),
        .Q(rx_data_OBUF),
        .SR(rst_IBUF),
        .rx_ready_OBUF(rx_ready_OBUF),
        .uart_rx_in_IBUF(uart_rx_in_IBUF));
  myTX TX
       (.CLK(clk_IBUF_BUFG),
        .D(tx_data_IBUF),
        .SR(rst_IBUF),
        .tx_empty_OBUF(tx_empty_OBUF),
        .tx_err_OBUF(tx_err_OBUF),
        .tx_req_IBUF(tx_req_IBUF),
        .uart_tx_out_OBUF(uart_tx_out_OBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
  OBUF \rx_data_OBUF[0]_inst 
       (.I(rx_data_OBUF[0]),
        .O(rx_data[0]));
  OBUF \rx_data_OBUF[1]_inst 
       (.I(rx_data_OBUF[1]),
        .O(rx_data[1]));
  OBUF \rx_data_OBUF[2]_inst 
       (.I(rx_data_OBUF[2]),
        .O(rx_data[2]));
  OBUF \rx_data_OBUF[3]_inst 
       (.I(rx_data_OBUF[3]),
        .O(rx_data[3]));
  OBUF \rx_data_OBUF[4]_inst 
       (.I(rx_data_OBUF[4]),
        .O(rx_data[4]));
  OBUF \rx_data_OBUF[5]_inst 
       (.I(rx_data_OBUF[5]),
        .O(rx_data[5]));
  OBUF \rx_data_OBUF[6]_inst 
       (.I(rx_data_OBUF[6]),
        .O(rx_data[6]));
  OBUF \rx_data_OBUF[7]_inst 
       (.I(rx_data_OBUF[7]),
        .O(rx_data[7]));
  OBUF rx_ready_OBUF_inst
       (.I(rx_ready_OBUF),
        .O(rx_ready));
  IBUF \tx_data_IBUF[0]_inst 
       (.I(tx_data[0]),
        .O(tx_data_IBUF[0]));
  IBUF \tx_data_IBUF[1]_inst 
       (.I(tx_data[1]),
        .O(tx_data_IBUF[1]));
  IBUF \tx_data_IBUF[2]_inst 
       (.I(tx_data[2]),
        .O(tx_data_IBUF[2]));
  IBUF \tx_data_IBUF[3]_inst 
       (.I(tx_data[3]),
        .O(tx_data_IBUF[3]));
  IBUF \tx_data_IBUF[4]_inst 
       (.I(tx_data[4]),
        .O(tx_data_IBUF[4]));
  IBUF \tx_data_IBUF[5]_inst 
       (.I(tx_data[5]),
        .O(tx_data_IBUF[5]));
  IBUF \tx_data_IBUF[6]_inst 
       (.I(tx_data[6]),
        .O(tx_data_IBUF[6]));
  IBUF \tx_data_IBUF[7]_inst 
       (.I(tx_data[7]),
        .O(tx_data_IBUF[7]));
  OBUF tx_empty_OBUF_inst
       (.I(tx_empty_OBUF),
        .O(tx_empty));
  OBUF tx_err_OBUF_inst
       (.I(tx_err_OBUF),
        .O(tx_err));
  IBUF tx_req_IBUF_inst
       (.I(tx_req),
        .O(tx_req_IBUF));
  IBUF uart_rx_in_IBUF_inst
       (.I(uart_rx_in),
        .O(uart_rx_in_IBUF));
  OBUF uart_tx_out_OBUF_inst
       (.I(uart_tx_out_OBUF),
        .O(uart_tx_out));
endmodule