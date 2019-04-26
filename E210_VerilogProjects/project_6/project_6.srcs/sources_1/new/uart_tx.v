`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2019 11:24:02 AM
// Design Name: 
// Module Name: uart_tx
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


module uart_tx (
    input       clk,
    input       rst,

    output reg     uart_tx_out,

    input  reg [7:0] data,
    input       req, //request

    output     empty, //able to accept new data
    output     err //request error
);

reg[31:0] count;
//reg[7:0] dataIn;
reg[2:0] load;
wire trigger;
reg [7:0]shift_reg;
reg shift_out;
reg load_value;



// States
localparam idle = 0;
localparam start = 1;
localparam d0 = 2;
localparam d1 = 3;
localparam d2 = 4;
localparam d3 = 5;
localparam d4 = 6;
localparam d5 = 7;
localparam d6 = 8;
localparam d7 = 9;
localparam stop = 10;


localparam STATE_SIZE = $clog2(stop + 1);
reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;


always_ff @(posedge clk) begin
    if (load == 2'b01)   
        count<= 32'd5208;
    else if (load == 2'b10) 
       count <= 32'd10416;
    else if (load == 2'b11) 
        count <= 32'd15624;
    else if (count != 0)
         count <= (count - 32'd1);
end

assign trigger = (count == 0);

always_ff @(posedge clk) begin
    if (rst) 
        state <= idle;  //add a reset case
    else
        state <= nextState; //non-blocking
       // floorSel = 2'h0;
end

always_ff @(posedge clk) begin
//other code here!
    if (load)
        shift_reg <= load_value;
    else if (shift_out)
        shift_reg <= {1'h0, shift_reg[7:1]};
    else //optional
        shift_reg <= shift_reg;
    end
    
assign out = shift_reg[0];

assign error = (req && (state != idle));
assign empty = ((state == idle));
   

always_comb begin
     nextState = state;
     //empty = 0;
    // err = 0;
     
   //  $monitor("State %d, In - %d, Trigger - %d", state, uart_tx_out, trigger);
     $monitor("state %d", state);
 
     case(state)
     
        idle: begin
            uart_tx_out = 1;  
      //      empty = 1;
            load = 2'b00;    
            
            if(~req) begin
                nextState = idle;
            end
            else if(req) begin
              //  uart_tx_out = 0;
                load = 2'b10;
           //     empty = 0;
                uart_tx_out = 1;
                nextState = start;
            end 
        end
        
        start: begin
            load = 2'b00;     
                   
            if(~trigger) begin
                uart_tx_out = 0;
                nextState = start;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = data[0];
                nextState = d0;
            end
        end
        
        d0: begin
            load = 2'b00;          
                 
            if(~trigger) begin
                uart_tx_out = data[0];
                nextState = d0;
            end
            else if(trigger) begin
               load = 2'b10;
               uart_tx_out = data[1];
               nextState = d1;
            end
        end
        
        d1: begin
            load = 2'b00; 
                     
            if(~trigger) begin
                uart_tx_out = data[1];
                nextState = d1;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = data[2];
                nextState = d2;
            end
        end
        
        d2: begin
            load = 2'b00;         
             
            if(~trigger) begin
                uart_tx_out = data[2];
                nextState = d2;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = data[3];
                nextState = d3;
            end
        end
        
        d3: begin
            load = 2'b00;
            
            if(~trigger) begin
                uart_tx_out = data[3];
                nextState = d3;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = data[4];
                nextState = d4;
            end 
        end
        
        d4: begin
            load = 2'b00;
            
            if(~trigger) begin
                uart_tx_out = data[4];
                nextState = d4;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = data[5];
                nextState = d5;
            end
        end
        
        d5: begin
            load = 2'b00;   
            
            if(~trigger) begin
                uart_tx_out = data[5];
                nextState = d5;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = data[6];
                nextState = d6;
            end
        end
        
        d6: begin
            load = 2'b00;
            
            if(~trigger) begin
                uart_tx_out = data[6];
                nextState = d6;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = data[6];
                nextState = d7;
            end
        end
        
        d7: begin
            load = 2'b00;
            
            if(~trigger) begin
                uart_tx_out = data[7];
                nextState = d7;
            end
            else if(trigger) begin
                load = 2'b10;
                uart_tx_out = 1;
                nextState = stop;
            end
        end
        
        stop: begin
            load = 2'b00;
            
            if (~trigger) begin
                nextState = stop;
            end
            else begin
                uart_tx_out = 1;
                load = 2'h11;
       //         empty = 1;
                nextState = idle;
            end
        end
     endcase
end    

endmodule