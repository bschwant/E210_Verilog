`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2019 07:25:16 PM
// Design Name: 
// Module Name: top_tb
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


module top_tb;
    reg   [15:0] sw;  //operands a,b,s
    reg           btnC; // middle button
    
    reg   [15:0] led; // results c,v

    top top0(.sw(sw), .btnC(btnC), .led(led));
 
    initial 
     begin 
    
    sw[7:0] = 8'b00110010;//a
    #10
    btnC = 1;
    #10
    btnC = 0;//state
    #10
    //setb
    sw[7:0] = 8'b00000010;
    sw[11:8] = 4'b1000;
    //switch
    #10
    //asserts
    assert (led[7:0] == 8'b00110010) else $fatal(1, "Transfer");
   
    sw[11:8] = 4'b1110;
    #10
    assert (led[7:0] == 8'b00000010) else $fatal(1, "AND");
  
    sw[11:8] = 4'b1101;
    #10
    assert (led[7:0] == 8'b00110010) else $fatal(1, "OR");
    
    sw[11:8] = 4'b1100;
    #10
    assert (led[7:0] == 8'b11001101) else $fatal(1, "NOT");
    
    
    sw[11:8] = 4'b1011;
    #10
    assert (led[7:0] == 8'b00110000) else $fatal(1, "XOR");
    
    sw[11:8] = 4'b1010;
    #10
    assert(led[7:0] == 8'b00110100) else $fatal(1, "ADD 00110010 & 00000010");
    assert((led[9] == 1'b0) & (led[8] == 1'b0)) else $fatal(1, "add v and c");
    
     sw[11:8] = 4'b1001;
     #10
     assert(led[7:0] == 8'b00110000) else $fatal(1, "SUB 00110010 & 00000010");
     assert((led[9] == 1'b0) & (led[8] == 1'b0)) else $fatal(1, "SUB v and c");
     
     sw[11:8] = 4'b0111;
     #10
     assert (led[7:0] == 8'b00000000) else $fatal(1, "TEST");
   
    
    $display("@@@Passed");
    $finish;
    
    end
endmodule
