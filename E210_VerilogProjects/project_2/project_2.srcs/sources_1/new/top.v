`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2019 11:20:39 AM
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
        input a,b,c,
        input e,
        
        output d0,d1,d2,d3,d4,d5,d6,d7
    );
    
    wire w0,w1,w2,w3,w4,w5,w6,w7;

    decoder dec(.a(a), .b(b), .c(c), 
        .d0(w0), .d1(w1), .d2(w2), .d3(w3),
        .d4(w4), .d5(w5), .d6(w6), .d7(w7));
  
  
    assign d0 = w0 & e;
    assign d1 = w1 & e;
    assign d2 = w2 & e;
    assign d3 = w3 & e;
    
    assign d4 = w4 & e;
    assign d5 = w5 & e;
    assign d6 = w6 & e;
    assign d7 = w7 & e;
      
endmodule

