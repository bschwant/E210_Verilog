`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2019 11:25:04 AM
// Design Name: 
// Module Name: uart_tx_tb
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


module uart_tx_tb;

    reg clk;
    reg rst;
    
    
    reg uart_tx_out;    //in
    reg [7:0] data;
    reg req;     //in
    
    reg empty;    //out
    reg err;      //out
   
    
uart_tx tx0(.clk(clk),     //clk
         .rst(rst),     //rst
         .uart_tx_out(uart_tx_out),     //data line to other device
         .data(data),           //data saved when request = high
         .req(req),     
         .empty(empty),         //signals can accept more data
         .err(err)              //error asserted if multiplew reqs aat once
         ); 
            
    reg [7:0] test;
    
    always #10 clk = ~clk;
    initial begin  


        $monitor("TX: tx_out = %h, data = %h,, req = %h", uart_tx_out, data, req);
        
        rst = 1; 
        clk = 0;
        
        @(negedge clk)
        
    //    assert(err == 0) else $fatal(1, "Err");
        assert(empty == 1) else $fatal(1, "Empty");
        
        rst = 0;
        data = 8'b10101010;
        req = 1;
        
        @(negedge clk)
        #10
        req = 0;
        
        #520800
        
        assert(uart_tx_out == 0) else $fatal(1, "Data!=");
        //assert(empty == 0) else $fatal(1, "Empty");
        //assert(err == 0) else $fatal(1, "Err");
        
        #10416000
        
        #1041600
        
        assert(uart_tx_out == data[7]) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        
        #10416000
        
        assert(uart_tx_out == data[6]) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        #1041600
     
     //
        assert(uart_tx_out == data[5]) else $fatal(1, "Data!=");
     //   assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        #1041600
        
        assert(uart_tx_out == data[4]) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        #1041600
      //  
        assert(uart_tx_out == data[3]) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        #1041600
         
        assert(uart_tx_out == data[2]) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        #1041600        
    //  
        assert(uart_tx_out == data[1]) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        
        #1041600             
                
        assert(uart_tx_out == data[0]) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
      //  assert(err == 0) else $fatal(1, "Err");
        #1041600       
      ///  
        assert(uart_tx_out == 1) else $fatal(1, "Data!=");
      //  assert(empty == 0) else $fatal(1, "Empty");
    //    assert(err == 0) else $fatal(1, "Err");
        
        #1041600        
     //   assert(empty == 1) else $fatal(1, "Open");
    //    assert(err == 0) else $fatal(1, "Err");
    
       // assert(1!=1) else  $fatal(1,"lol");
        $display("@@@Passed\n");
        $finish;
    end
     
endmodule