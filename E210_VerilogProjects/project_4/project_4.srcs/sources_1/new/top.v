`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 01:18:21 PM
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
    input           btnC,

    input           btnU,
    input           btnD,
    input [15:0]    sw,
    
    output [15:0]   led
);

toggler tog0(
    .clk(CLK100MHZ),
    .rst(btnC),
    .toggle_start(btnU),
    .toggle_value( {sw,9'h0} ), 
    .toggle_stop(btnD),
    .toggle(led[0])
    );

assign led[15:1] = 15'h0; //or other things

endmodule
