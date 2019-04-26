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


module SevSegDisplay(
    input   [1:0] floorSel,
    input         door, 

    output reg [6:0] segments,  
    output reg [3:0] select  
);


always_comb begin
        
    case(floorSel)
        // Floor 1
        2'h0: begin
            // Door Closed
            if(door == 0) begin
                select = 4'b1110;
                segments = 7'b0100011;
            end
            // Door Open
            else if (door == 1) begin
                select = 4'b1110;
                segments = 7'b1000011;
            end    
        end
        
        // Floor 2
        2'h1: begin
            // Door Closed
            if(door == 1'h0) begin
                select = 4'b1101;
                segments = 7'b0100011;
            end
            // Door Open
            else if (door == 1'h1) begin
                select = 4'b1101;
                segments = 7'b1000011;
            end        
        end
        
        // Floor 3
        2'h2: begin
            // Door Closed
            if(door == 1'h0) begin
                select = 4'b1011;
                segments = 7'b0100011;
            end
            // Door Open
            else if (door == 1'h1) begin
                select = 4'b1011;
                segments = 7'b1000011;
            end
        end
        
        // Floor 4
        2'h3: begin
            // Door Closed
            if(door == 1'h0) begin
                select = 4'b0111;
                segments = 7'b0100011;
            end
            // Door Open
            else if (door == 1'h1) begin
                select = 4'b0111;
                segments = 7'b1000011;
            end        
        end  
    endcase
end 
endmodule