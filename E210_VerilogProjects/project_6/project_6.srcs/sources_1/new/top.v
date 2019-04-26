`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2019 11:24:02 AM
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
    input           CLK100MHZ, 
    input           btnC, //aka rst
    input           RsRx, //aka uart_rx_in
    output          RsTx, //aka uart_tx_out
    output   [15:0] LED,  //this is optional
    output   [6:0]  seg,
    output   [3:0]  an
);
    wire clk = CLK100MHZ;

    reg rx_ready;
    reg [7:0] rx_data;
    
    reg tx_empty;
    reg [7:0] tx_data;
    reg tx_req;
    reg tx_err;
    

// DO NOT MODIFY
wire RsRx_sync;
synchronizer syncUartRx(
    .clk(clk),
    .async(RsRx),
    .sync(RsRx_sync)
    );

//@todo: create a UART
uart uart0 (.clk(clk),
            .rst(btnC),
            .uart_rx_in(RsRx_sync),
            .uart_tx_out(RsTx),
            .tx_data(tx_data),
            .tx_req(tx_req),
            .tx_empty(tx_empty),
            .tx_err(tx_err),       
            .rx_data(rx_data),
            .rx_ready(rx_ready)
            );

//@todo: create a 7-Seg Driver
SevSegDriver sevseg0 (.clk(clk),
                      .rst(btnC),
                      .byte0(rx_data),
                      .byte1(tx_data),
                      .seg(seg),
                      .an(an)
                      );

//@todo: Echo state machine

localparam idle = 0;
localparam echo = 1;

localparam STATE_SIZE = $clog2(echo + 1);
reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;

always_ff @(posedge clk) begin
    if (btnC) 
        state <= idle;  //add a reset case
    else
        state <= nextState; //non-blocking
end

always_comb begin
    nextState = state;
    //tx_data = 8'h0;
    //tx_data = rx_data;
    tx_req = 1'h0;

    case(state) 
        idle: begin
            if(~rx_ready) begin
                nextState = idle;
            end
            else if(rx_ready) begin
                tx_req = 1;
                tx_data = rx_data;
                nextState = echo;
            end
        end
        
        
        echo: begin
            if(~tx_empty) begin
                tx_data = rx_data;
                nextState = echo;
            end
            
            if(tx_empty) begin
                nextState = idle;
            end        
        end
    endcase
end
    
    

endmodule
