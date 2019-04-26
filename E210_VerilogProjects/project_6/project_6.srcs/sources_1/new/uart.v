`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2019 11:24:02 AM
// Design Name: 
// Module Name: uart
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


module uart(
    input        clk,
    input        rst,

    input        uart_rx_in, 
    output       uart_tx_out,

    input [7:0]  tx_data,
    input        tx_req,
    output       tx_empty, 
    output       tx_err, 

    output [7:0] rx_data, 
    output       rx_ready 
);

 //   reg [7:0] data;
    

    uart_rx rx0( .clk(clk),
                    .rst(rst),
                    .uart_rx_in(uart_rx_in),
                    .data(rx_data),
                    .ready(rx_ready)
                    );
                                                                                
    uart_tx tx0( .clk(clk),
                    .rst(rst),
                    .uart_tx_out(uart_tx_out),
                    .data(tx_data),
                    .req(tx_req),
                    .empty(tx_empty),
                    .err(tx_err)
                    );
endmodule 