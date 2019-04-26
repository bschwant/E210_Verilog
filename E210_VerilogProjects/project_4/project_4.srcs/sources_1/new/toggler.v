`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 01:10:32 PM
// Design Name: 
// Module Name: toggler
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


module toggler(
    input           clk,
    input           rst,

    input           toggle_start,
    input [24:0]    toggle_value,
    input           toggle_stop,

    output reg      toggle
);

wire trigger;

reloading_timer rel_tim0(
    .clk(clk),
    .rst(rst),

    .start_request(toggle_start),
    .start_value(toggle_value),
    .stop(toggle_stop),

    .trigger(trigger)
);
    
localparam ST_Idle = 0;    
localparam ST_Ping = 1;
localparam ST_Pong = 2;
localparam STATE_SIZE = $clog2(ST_Pong + 1);

reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;   

always_ff@(posedge clk) begin

    if (rst) begin //reset case
        state <= ST_Idle; 
    end 
    
    else begin //normal case
        state <= nextState;
    end
end

always_comb begin
    //DONT FORGET DEFAULT
   nextState = state; 
   toggle = 0;

   case(state)
   
       ST_Idle: begin
           if(toggle_start && (toggle_value != 0)) begin
               nextState = ST_Ping;
           end
       end

       ST_Ping: begin
           toggle = 0;
           
           if(toggle_stop) begin
               nextState = ST_Idle;
           end
           
           else if(trigger) begin
               nextState = ST_Pong;
           end           
       end

       ST_Pong: begin
           toggle = 1;
           if(toggle_stop) begin
                nextState = ST_Idle;
           end
           else if(trigger) begin
                nextState = ST_Ping;
           end
        end
    endcase
end  
endmodule
