`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2019 11:25:04 AM
// Design Name: 
// Module Name: uart_rx_tb
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


module uart_rx_tb;

    reg clk;
    reg rst;
//    reg uart_tx_out;
  //  reg[7:0] dataI;
//    reg req;
//    reg empty;
//    reg err;
    
    reg uart_rx_in;
    reg[7:0] dataR;
    reg ready;
    
   
    
//myTx tx0(.clk(clk),     //clk
 //        .rst(rst),     //rst
 //        .uart_tx_out(uart_tx_out),     //data line to other device
 //        .data(dataT),           //data saved when request = high
 //        .req(req),     
 //        .empty(empty),         //signals can accept more data
 //        .err(err)              //error asserted if multiplew reqs aat once
 //        ); 

uart_rx rx0(.clk(clk),
            .rst(rst),
            .uart_rx_in(uart_rx_in),      // in 
            .data(dataR),                   //out
            .ready(ready)       //out
            );
            
    always #10 clk = ~clk;
    initial begin  


        $monitor("RX: rx_in = %h, dataR = %h,, ready = %h", uart_rx_in,dataR, ready);
        
        rst = 1; 
        
        @(posedge clk)
        
        rst = 0;
        
        uart_rx_in = 1;
        #104160000
        
        uart_rx_in = 0;
        #1041600
     
        uart_rx_in = 1;
        #1041600
        
        uart_rx_in = 0;
        #1041600
        
        uart_rx_in = 1;
        #1041600
         
        uart_rx_in = 0;
        #1041600        
        
        
        
        uart_rx_in = 1;
        #1041600             
                
        uart_rx_in = 0;
        #1041600       
        
        uart_rx_in = 1;
        #1041600        
        
        uart_rx_in = 0;
        #1041600
        
        uart_rx_in = 1;
        
        #10416000
                
        assert(dataR == 8'b10101010) else $fatal(1, "Data R !=");
        
        
        $display("@@@Passed\n");
        $finish;
    end
     
endmodule

