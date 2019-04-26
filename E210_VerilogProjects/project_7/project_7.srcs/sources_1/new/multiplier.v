`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/24/2019 07:33:11 PM
// Design Name: 
// Module Name: multiplier
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


module multiplier(
    input         clk,
    input         rst,

    input         start, 
    input  [7:0]  multiplicand,
    input  [7:0]  multiplier,

    output reg      done,   
    output reg [7:0] product 
);

    reg add = 0;
    reg set = 0;

    reg [15:0] prod; // Final Product
    
    reg [15:0] p1;   // Each step of product
    reg [15:0] p2;
    reg [15:0] p3;
    reg [15:0] p4;
  
    reg [15:0] p5;
    reg [15:0] p6;
    reg [15:0] p7;
    reg [15:0] p8;    
    
    always_ff @ (posedge clk) begin
        if(start) begin
            done <= 0;
            product <= 0;
            
            p1 <= {8'b0,(multiplicand & {8{multiplier[0]}})};
            p2 <= {7'b0,(multiplicand & {8{multiplier[1]}}), 1'b0};
            p3 <= {6'b0,(multiplicand & {8{multiplier[2]}}), 2'b0};
            p4 <= {5'b0,(multiplicand & {8{multiplier[3]}}), 3'b0};
            
            p5 <= {4'b0,(multiplicand & {8{multiplier[4]}}), 4'b0};
            p6 <= {3'b0,(multiplicand & {8{multiplier[5]}}), 5'b0};
            p7 <= {2'b0,(multiplicand & {8{multiplier[6]}}), 6'b0};
            p8 <= {1'b0,(multiplicand & {8{multiplier[7]}}), 7'b0};
            
            add <= 1;
        end
        else if(add) begin
            add <= 0;
            prod <= p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8;
            set <= 1;
        end
        else if(set) begin
            set <= 0;
            product <= prod[7:0];
            done <= 1;
        end    
    
    end

endmodule
