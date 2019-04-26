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


module SlowClk(
    input clk,  
    output slowClk
);
    reg [25:0] q;

    //positive-edge triggered flip flop
    always_ff @(posedge clk) 
        q <= q + 25'h1;

    assign slowClk = q[25]; //too slow for simulations

endmodule
