`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2019 03:50:03 PM
// Design Name: 
// Module Name: top
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


module top( 
    input           CLK100MHZ,
    input           btnC, // aka reset
    input           btnL,
    input           btnR,
    input           btnU,
    input           btnD,
    output   [6:0]  seg,
    output   [3:0]  an
    );
    
    // DO NOT MODIFY!
    //this will generate a slow clock for you
    wire slowClk;
    wire [3:0] floorBtn = {btnD, btnR, btnL, btnU};
    wire [1:0] floorSel;
    wire door;
    
    SlowClk sc0( .clk(CLK100MHZ), .slowClk(slowClk) );
        
    
    ElevCtrl ECtrl0(.clk(slowClk),
                    .rst(btnC),
                    .floorBtn(floorBtn),
                    .floorSel(floorSel),
                    .door(door)
                    );
                    
    SevSegDisplay SSD0(.floorSel(floorSel),
                       .door(door),
                       .segments(seg[6:0]),
                       .select(an[3:0])
                       );
    
    endmodule
