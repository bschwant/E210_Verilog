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


module ElevCtrl(
    input        clk, //clock
    input        rst, //reset
    input [3:0]  floorBtn,

    output reg[1:0] floorSel,
    output reg      door
);

// States
localparam ST_1Op = 0;
localparam ST_1Cl = 1;
localparam ST_2Op = 2;
localparam ST_2Cl = 3;
localparam ST_3Op = 4;
localparam ST_3Cl = 5;
localparam ST_4Op = 6;
localparam ST_4Cl = 7;

localparam STATE_SIZE = $clog2(ST_4Cl + 1);
reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;
reg [3:0] goTo;

always_ff @(posedge clk) begin
    if (rst) 
        state <= ST_1Op;  //add a reset case
    else
        state <= nextState; //non-blocking
       // floorSel = 2'h0;
end
//

wire catchBtns = (state == ST_1Op) | (state == ST_2Op) |
                 (state == ST_3Op) | (state == ST_4Op);

always_ff @(posedge clk) begin
    if ((catchBtns)) begin
        goTo <= floorBtn;
    end
end


always_comb begin
    //Defaults
   // floorSel = 2'h0;
   // nextState = 0;
   // goTo = 4'h0;
    
    case(state)
        
        ST_1Op: begin
          //  goTo = floorBtn;
            floorSel = 2'h0;
            door = 1'h1;
                
            if(floorBtn == 4'h1) 
                nextState = ST_1Op;      
            else if(floorBtn  == 4'h2 |floorBtn == 4'h4 | floorBtn == 4'h8) 
                nextState = ST_1Cl;
            else 
                nextState = ST_1Op;
        end
        
        ST_1Cl: begin
            floorSel = 2'h0;
            door = 1'h0;

            if(goTo == 4'h2 | goTo == 4'h4 | goTo == 4'h8)
                nextState = ST_2Cl; 
            else if(goTo == 4'h1)
                nextState = ST_1Op;
        end
        
        ST_2Op: begin
          //  goTo = floorBtn;
            floorSel = 2'h1;
            door = 1'h1;
            
            if(floorBtn  == 4'h2)
                nextState = ST_2Op;
            else if(floorBtn  == 4'h1 | floorBtn  == 4'h4 | floorBtn  == 4'h8) 
                nextState = ST_2Cl;   
            else 
                nextState = ST_2Op;           
        end
        
        ST_2Cl: begin
           floorSel = 2'h1;
            door = 1'h0;
            
            if(goTo == 4'h2)
                nextState = ST_2Op;
                
            else if(goTo == 4'h1)
                nextState = ST_1Cl;
            
            else if(goTo == 4'h4 | goTo == 4'h8)
                nextState = ST_3Cl;
        end
        
        ST_3Op: begin
        //    goTo = floorBtn;
            floorSel = 2'h2;
            door = 1'h1;
            
            if(floorBtn  == 4'h4)
                nextState = ST_3Op;
                
            else if(floorBtn == 4'h1 | floorBtn == 4'h2 | floorBtn == 4'h8) 
                nextState = ST_3Cl;
            else
                nextState = ST_3Op;
        end
        
        ST_3Cl: begin
            floorSel = 2'h2;
            door = 1'h0;
            
            if(goTo == 4'h4)
                nextState = ST_3Op;
                
            else if(goTo == 4'h2 | goTo == 4'h1)
                nextState = ST_2Cl;
              
            else if(goTo == 4'h8)
                nextState = ST_4Cl;            
        
        end
        
        ST_4Op: begin
         //   goTo = floorBtn;
            floorSel = 2'h3;
            door = 1'h1;
            
            if(floorBtn == 4'h8)
                nextState = ST_4Op;
                
            else if(floorBtn == 4'h1 | floorBtn == 4'h2 | floorBtn == 4'h4) 
                nextState = ST_4Cl;
            else
                nextState = ST_4Op;
        end
        
        ST_4Cl: begin
            floorSel = 2'h3;
            door = 1'h0;
            
            if(goTo == 4'h8)
                nextState = ST_4Op;
            
            else if(goTo == 4'h4 | goTo == 4'h2 | goTo == 4'h1)
                nextState = ST_3Cl;        
        end
        
   endcase

end
endmodule