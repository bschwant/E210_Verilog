`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/31/2019 07:55:20 PM
// Design Name: 
// Module Name: alu_tb
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


module alu_tb;

        reg [7:0] aT, bT; //operand
        reg [3:0] sT; //operation Select

        reg [7:0] rT; //the Result value
        reg       cT;  //for unsigned Carry
        reg       vT;  //for signed oVerflow
   
    
    alu alu1( .a(aT), .b(bT), .s(sT), .r(rT), .c(cT), .v(vT) );
    
    initial
    begin
    
    $monitor("%b%b%b%b%b%b", aT,bT,cT,rT,cT,vT);
    
    #10
    aT = 8'b00110010; bT = 8'b00000010; sT = 4'b1110; // Test AND
    #10;
    assert(rT == 8'b00000010) else $fatal(1, "AND 00110010 & 00000010");
  
    sT = 4'b1101;
    #10
    assert(rT == 8'b00110010) else $fatal(1, "OR 00110010 | 00000010");
    
    sT = 4'b1100;
    #10
    assert(rT == 8'b11001101) else $fatal(1, "NOT A = 00110010");
    
    sT = 4'b1011;
    #10
    assert(rT == 8'b00110000) else $fatal(1, "XOR 00110010 ^ 00000010");
    
    sT = 4'b1010;
    #10
    assert(rT == 8'b00110100) else $fatal(1, "ADD 00110010 & 00000010");
    assert((vT == 1'b0) & (cT == 1'b0)) else $fatal(1, "add vT and cT");

    
    sT = 4'b1001;
    #10
    assert(rT == 8'b00110000) else $fatal(1, "SUB 00110010 - 00000010");
    assert((vT == 1'b0) & (cT == 1'b0)) else $fatal(1, "sub vT and cT");
    
    
    sT = 4'b1000;
    #10
    assert(rT == 8'b00110010) else $fatal(1, "R = A = 00110010");
    
    
    sT = 4'b0111;
    #10
    assert(rT == 8'b00000000) else $fatal(1, "R = (A == 00000000)");
    
    
    $display("@@@Passed");
    $finish;
    end
endmodule
