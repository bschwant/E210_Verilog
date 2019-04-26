`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2019 04:07:50 PM
// Design Name: 
// Module Name: calculator
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


module calculator(
    input        clk,
    input        rst,
    input  [7:0] in_data,
    input        in_req,
    output reg          out_ready,
    output reg [7:0]    out_data,
    output reg          err 
);

reg push_req;
reg pop_req;
reg TOS_valid;
reg push_err;
reg pop_err;

reg [7:0] in_save;
reg [7:0] temp;

reg [7:0] multiplicand;
reg [7:0] multiplier;
reg start;
reg done;
reg [7:0] product;

assign err = push_err | pop_err;

stack stack0(
    .clk(clk),
    .rst(rst),
    .push_req(push_req),
    .pop_req(pop_req),    
    .data_in(in_save),

    .TOS(out_data),
    .TOS_valid(TOS_valid),
    .push_err(push_err),
    .pop_err(pop_err)
);

multiplier mult0(
    .clk(clk),
    .rst(rst),

    .start(start), 
    .multiplicand(multiplicand),
    .multiplier(miltiplier),

    .done(done),   
    .product(product) 
);

// State variable names
localparam idle = 0;
localparam peek = 1;
localparam pop = 2;
localparam push = 3;
localparam operation1 = 4;
localparam operation2 = 5;
localparam waiting = 6;

// Proper sized state and nextState register
localparam STATE_SIZE = $clog2(waiting + 1);
reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;

// Flip Flop to switch states
always_ff @(posedge clk) begin
    if (rst) begin
        state <= idle;  //add a reset case
    end
    else begin
        state <= nextState;   
    end  
end    

// State Machine
always_comb begin
    nextState = state;
    
    $monitor ("in_req = %h, in_save = %h, out_data = %d, temp = %d, state = %d", in_req, in_save, out_data, temp, state); 
  
    case(state)
    
        idle: begin
            out_ready = 0;
            pop_req  = 0;
            push_req = 0;
            
            if(in_req) begin
                in_save = in_data;
               
                if(in_save == 8'hff)
                    nextState = peek;
                
                else if(in_save == 8'hf5)
                    nextState = pop;
                
                else if(in_save <= 8'hf4 && in_save >= 8'h00)
                    nextState = push;
                    
                else if(in_save <= 8'hfe && in_save >= 8'hf8)
                    nextState = operation1;
                    
                else
                    nextState = idle;
                    
            end
        end 
    
        peek: begin
            if(TOS_valid) begin
                out_ready = 1;
                nextState = idle;
            end
        
        end
        
        pop: begin
            pop_req = 1;
            nextState = idle;
        end
    
        push: begin
            push_req = 1;
            nextState = idle;     
        end
    
        operation1: begin
          
            if(in_save == 8'hfe) begin      // AND
                temp = out_data;
                pop_req = 1;
                nextState = operation2; 
            end
            else if(in_save == 8'hfd) begin // OR
                temp = out_data;
                pop_req = 1;
                nextState = operation2; 
            end   
            else if(in_save == 8'hfc) begin // NOT
                temp = ~out_data; 
                nextState = operation2;
            end                
            else if(in_save == 8'hfb) begin // XOR
                temp = out_data;
                pop_req = 1;
                nextState = operation2; 
            end                
            else if(in_save == 8'hfa) begin // ADD
                temp = out_data;
                pop_req = 1;
                nextState = operation2; 
            end    
            else if(in_save == 8'hf9) begin // SUB
                temp = out_data;
                pop_req = 1;
                nextState = operation2; 
            end                
            else if(in_save == 8'hf8) begin // INC
                in_save = out_data + 1;
                push_req = 1;
                pop_req = 1;
                nextState = idle;
            end   
            else if(in_save == 8'hf7) begin // MULT
                multiplicand = out_data;
                pop_req = 1;
                nextState = operation2;
            end
           // else if(in_save == 8'hf6) begin // MOD
           //     in_save = out_data + 1;
           //     push_req = 1;
           //     nextState = idle;
           // end       
        end
        
        operation2: begin
            pop_req = 0;

            if(in_save == 8'hfe) begin
                in_save = out_data & temp;
                push_req = 1;
                pop_req = 1;
                nextState = idle; 
            end
            else if(in_save == 8'hfd) begin
                in_save = out_data | temp;
                push_req = 1;
                pop_req = 1;
                nextState = idle; 
            end 
            else if(in_save == 8'hfb) begin
                in_save = out_data ^ temp;
                push_req = 1;
                pop_req = 1;
                nextState = idle; 
            end             
            else if(in_save == 8'hfa) begin
                in_save = out_data + temp;
                push_req = 1;
                pop_req = 1;
                nextState = idle; 
            end
            else if(in_save == 8'hf9) begin
                in_save = out_data - temp;
                push_req = 1;
                pop_req = 1;
                nextState = idle; 
            end 
            else if(in_save == 8'hfc) begin
                in_save = temp;
                push_req = 1;
                pop_req = 1;
                nextState = idle;
            end   
            else if(in_save == 8'hf7) begin // MULT
                multiplier = out_data;
                start = 1;
                nextState = waiting;
            end                                 
        end
        
        waiting: begin
            if(done) begin
                in_save = product;
                push_req = 1;
                pop_req = 1;
                nextState = idle;
            end
            else
                nextState = waiting;
                
        
        end
    
    endcase
end


endmodule
