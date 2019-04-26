`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2019 11:24:02 AM
// Design Name: 
// Module Name: synchronizer
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


module synchronizer (
    input       clk, //your local clock
    input       async, //unsynchronized signal
    output      sync //synchronized signal
    );

    // Create a signal buffer
    reg [1:0] buff;

    always_ff @ (posedge clk) begin
            buff <= {buff[0], async};
    end

    assign sync = buff[1];

endmodule
