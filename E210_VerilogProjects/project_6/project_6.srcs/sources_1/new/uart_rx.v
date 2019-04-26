`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/22/2019 11:24:02 AM
// Design Name: 
// Module Name: uart_rx
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

module uart_rx (
    input       clk, 
    input       rst, 
    input       uart_rx_in, // data line in

    output reg [7:0] data, //data out
    output reg ready //high for "stop" bit && also = 1 when valid frame rec.
);

reg[31:0] count;
reg[7:0] dataIn;
reg[2:0] load;
wire trigger;
reg shift_in;

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
    if (rst) begin
        data <= 8'h0;
    end
    else if (shift_in) begin
        data <= {uart_rx_in, data[7:1]};
    end
    else //optional
       data <= data;
end

always_comb begin
     nextState = state;
     ready = 0;
     shift_in = 0;
     $monitor("State %d, In - %d, Trigger - %d", state, uart_rx_in, trigger);
        $monitor("count %d", count);
 
     case(state)
        idle: begin   
            load = 2'b00;    
            if(uart_rx_in == 0) begin
                nextState = start;
                load = 2'b01;
            end
            else begin
                nextState = idle;
            end 
        end
        
        start: begin
            load = 2'b00;            
            if(~trigger) begin
                nextState = start;
            end
            else if(trigger) begin
                load = 2'b10;
                nextState = d0;
            end
        end
        
        d0: begin
            load = 2'b00;               
            if(~trigger) begin
                nextState = d0;
            end
            else if(trigger) begin
           //    data[0] = uart_rx_in;
               shift_in = 1;
               nextState = d1;
               load = 2'b10;
            end
        end
        
        d1: begin
            load = 2'b00;          
            if(~trigger) begin
                nextState = d1;
            end
            else if(trigger) begin
             //   data[1] = uart_rx_in;
             shift_in = 1;
                nextState = d2;
                load = 2'b10;
            end
        end
        
        d2: begin
        
            load = 2'b00;          
            if(~trigger) begin
                nextState = d2;
            end
            else if(trigger) begin
              //  data[2] = uart_rx_in;
                shift_in = 1;
                nextState = d3;
                load = 2'b10;
            end
        end
        
        d3: begin
            load = 2'b00;
            if(~trigger) begin
                nextState = d3;
            end
            else if(trigger) begin
               // data[3] = uart_rx_in;
                shift_in = 1;
                nextState = d4;
                load = 2'b10;
            end 
        end
        
        d4: begin
            load = 2'b00;
            if(~trigger) begin
                nextState = d4;
            end
            else if(trigger) begin
               // data[4] = uart_rx_in;
                shift_in = 1;
                nextState = d5;
                load = 2'b10;
            end
        end
        
        d5: begin
            load = 2'b00;   
            if(~trigger) begin
                nextState = d5;
            end
            else if(trigger) begin
               // data[5] = uart_rx_in;
                shift_in = 1;
                nextState = d6;
                load = 2'b10;
            end
        end
        
        d6: begin
            load = 2'b00;
            if(~trigger) begin
                    nextState = d6;
            end
            else if(trigger) begin
              //  data[6] = uart_rx_in;
                shift_in = 1;
                nextState = d7;
                load = 2'b10;
            end
        end
        
        d7: begin
            load = 2'b00;
            if(~trigger) begin
                nextState = d7;
            end
            else if(trigger) begin
         //       data[7] = uart_rx_in;
                shift_in = 1;
         
                nextState = stop;
                load = 2'b10;
            end
        end
        
        stop: begin
            load = 2'b00;
            if (~trigger) begin
                nextState = stop;
            end
            else if(trigger && uart_rx_in == 1) begin
                ready = 1;
                nextState = idle;
                load = 2'b11;
            end
            else if(trigger && uart_rx_in == 0) begin
                ready = 1;
                nextState = idle;
                load = 2'b11;
            end
        end
     endcase
end    

endmodule