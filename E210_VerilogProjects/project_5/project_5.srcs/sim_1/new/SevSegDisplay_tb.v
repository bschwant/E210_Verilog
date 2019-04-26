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


module SevSegDisplay_tb();
    reg [1:0] floorSel;
    reg door;
    
    reg [6:0] seg;
    reg [3:0] sel;

SevSegDisplay SevSegDis1(
    .floorSel(floorSel),
    .door(door),
    .segments(seg),  
    .select(sel)  
    );

    initial 
    begin
    
    $monitor("Seg = %b, Sel = %b", seg, sel);
    
    #20
    //Floor One, Door Open
    floorSel[1:0] = 2'h0;
    door = 1'h1;
    #10
    assert(seg == 7'b1000011 && sel == 4'b1110) else $fatal(1, "Floor 1 (Open)");
    
    #20
    //Floor One, Door Closed
    floorSel[1:0] = 2'h0;
    door = 1'h0;
    #10
    assert(seg == 7'b0100011 && sel == 4'b1110) else $fatal(1, "Floor 1 (Closed)");
    
    
    #20
    //Floor Two, Door Open
    floorSel[1:0] = 2'h1;
    door = 1'h1;
    #10
    assert(seg == 7'b1000011 && sel == 4'b1101) else $fatal(1, "Floor 2 (Open)");
    
    #20
    //Floor Two, Door Closed
    floorSel[1:0] = 2'h1;
    door = 1'h0;
    #10
    assert(seg == 7'b0100011 && sel == 4'b1101) else $fatal(1, "Floor 2 (Closed)");
    
    
    #20
    //Floor Three, Door Open
    floorSel[1:0] = 2'h2;
    door = 1'h1;
    #10
    assert(seg == 7'b1000011 && sel == 4'b1011) else $fatal(1, "Floor 3 (Open)");
    
    #20
    //Floor Three, Door Closed
    floorSel[1:0] = 2'h2;
    door = 1'h0;
    #10
    assert(seg == 7'b0100011 && sel == 4'b1011) else $fatal(1, "Floor 3 (Closed)");
    
    #20
    //Floor Four, Door Open
    floorSel[1:0] = 2'h3;
    door = 1'h1;
    #10
    assert(seg == 7'b1000011 && sel == 4'b0111) else $fatal(1, "Floor 4 (Open)");
    
    #20
    //Floor Four, Door Closed
    floorSel[1:0] = 2'h3;
    door = 1'h0;
    #10
    assert(seg == 7'b0100011 && sel == 4'b0111) else $fatal(1, "Floor 4 (Closed)");
    
    $display("@@@Passed");
    $finish;
    
    end
endmodule  