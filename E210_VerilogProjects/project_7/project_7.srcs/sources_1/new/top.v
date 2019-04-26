`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2019 04:07:50 PM
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
    input           clk, 
    input           btnC, //aka rst
    input           RsRx, //aka uart_rx_in
    output          RsTx, //aka uart_tx_out
    output   [15:0] led,  //only led[1:0] required
    output   [6:0]  seg,  //optional
    output   [3:0]  an    //optional
);


    reg rx_ready;
    reg [7:0] rx_data;
    
    reg tx_empty;
    reg [7:0] tx_data;
    
    reg tx_req;
    reg tx_err;
    
    reg calc_err;
    
    assign led[0] = tx_err;
    assign led[1] = calc_err;
    
    

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
calculator calc0(
        .clk(clk),
        .rst(btnC),
        .in_data(rx_data),
        .in_req(rx_ready),
        .out_ready(tx_req),
        .out_data(tx_data),
        .err(calc_err) 
    );


//SevSegDriver sevseg0 (
//        .clk(clk),
//        .rst(btnC),
//        .byte0(RsRx),
//        .byte1(RsTX),
//        .seg(seg),
//        .an(an)
//    );
    
localparam idle = 0;
localparam echo = 1;

localparam STATE_SIZE = $clog2(echo + 1);
reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;

always_comb begin
    nextState = state;

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

