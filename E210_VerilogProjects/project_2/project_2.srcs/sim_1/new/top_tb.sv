`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2019 12:43:34 PM
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

    reg a, b, c;
    reg e;
    wire d0,d1,d2,d3,d4,d5,d6,d7;
     
    top demux0 (
       .a(a),
       .b(b),
       .c(c),
       .e(e),
       .d0(d0),
       .d1(d1),
       .d2(d2),
       .d3(d3),
       .d4(d4),
       .d5(d5),
       .d6(d6),
       .d7(d7)
     );
     
    task demux_test;
         input aT, bT, cT, eT;
         input d0T, d1T, d2T, d3T, d4T;
         input d5T, d6T, d7T;
     
         #5
         a = aT; b=bT; c=cT; e=eT;
         #5
         assert( ( d0 == d0T ) && ( d1 == d1T )  &&
                    ( d2 == d2T ) && ( d3 == d3T )  &&
                    ( d4 == d4T ) && ( d5 == d5T )  &&
                    ( d6 == d6T ) && ( d7 == d7T ) )
                 else $fatal(1,"demux0(%b,%b,%b,%b) failed!", a, b, c, e);
    endtask

initial
begin

    //My Test Code
    $monitor("%h%h%h%h%h%h%h%h", d0,d1,d2,d3,d4,d5,d6,d7);
    
    //d0
    demux_test(0,0,0,0,  0,0,0,0,0,0,0,0);
    demux_test(0,0,0,1,  1,0,0,0,0,0,0,0);
    
    //d1
    demux_test(0,0,1,0,  0,0,0,0,0,0,0,0);
    demux_test(0,0,1,1,  0,1,0,0,0,0,0,0);
    
    //d2
    demux_test(0,1,0,0,  0,0,0,0,0,0,0,0);
    demux_test(0,1,0,1,  0,0,1,0,0,0,0,0);
    
    //d3
    demux_test(0,1,1,0,  0,0,0,0,0,0,0,0);
    demux_test(0,1,1,1,  0,0,0,1,0,0,0,0);
    
    //d4
    demux_test(1,0,0,0,  0,0,0,0,0,0,0,0);
    demux_test(1,0,0,1,  0,0,0,0,1,0,0,0);
    
    //d5
    demux_test(1,0,1,0,  0,0,0,0,0,0,0,0);
    demux_test(1,0,1,1,  0,0,0,0,0,1,0,0);
    
    //d6
    demux_test(1,1,0,0,  0,0,0,0,0,0,0,0);
    demux_test(1,1,0,1,  0,0,0,0,0,0,1,0);
    
    //d7 
    demux_test(1,1,1,0,  0,0,0,0,0,0,0,0);
    demux_test(1,1,1,1,  0,0,0,0,0,0,0,1);
    
    $display("@@@Passed");
    $finish;
end
endmodule
