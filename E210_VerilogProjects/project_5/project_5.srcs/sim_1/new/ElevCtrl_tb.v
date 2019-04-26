`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/01/2019 12:02:34 PM
// Design Name: 
// Module Name: SevSegDisplay_tb
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


module ElevCtrl_tb();
    
    wire no ;
    
    
    
    
    
    initial
    begin
    
        assert(1 == 0) else $fatal(1,"nope");
    
    
    // @negedgeclk
    
    $display("@@@Passed");
    $finish;
    
    end
endmodule  