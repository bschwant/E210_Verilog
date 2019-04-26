`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2019 12:01:20 PM
// Design Name: 
// Module Name: Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Top(
    input           CLK100MHZ,
    input           btnC, // aka reset
    input           btnL,
    input           btnR,
    input           btnU,
    input           btnD,
    output   [15:0] led, //this is optional
    output   [6:0]  seg,
    output   [3:0]  an
    );
    
// DO NOT MODIFY!
//this will generate a slow clock for you
wire slowClk;
SlowClk sc0( .clk(CLK100MHz), .slowClk(slowClk) );
    
wire floorBtn[3:0] = {btnD, btnR, btnL, btnU};
wire floorSel[1:0];
wire door;

ElevCtrl ECtrl0(.clk(slowClk), .rst(btnC), .floorBtn(floorBtn), .floorSel(floorSel), .door(door));
SevSegDesplay SSD0(.floorSel(floorSel), .door(door), .segments(seg), .select(an));

endmodule
