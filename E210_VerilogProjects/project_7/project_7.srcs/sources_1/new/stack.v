//`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2019 04:07:50 PM
// Design Name: 
// Module Name: stack
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

module stack(
    input         clk,
    input         rst,
    input         push_req,
    input         pop_req,    
    input  [7:0]  data_in,

    output reg [7:0]  TOS,       //top of stack
    output reg       TOS_valid, // means TOS entry is valid, "!empty"
    output reg       push_err,
    output reg       pop_err
);

reg [7:0] mem [0:127];
reg [7:0] sp;

// State variable names
localparam idle = 0;


// Proper sized state and nextState register
localparam STATE_SIZE = $clog2(idle + 1);
reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;

//assign TOS_valid = (sp > 0);

// Flip Flop to switch states
always_ff @(posedge clk) begin
    if (rst) begin
        state <= idle;  //add a reset case
        sp <= 8'b0;
        TOS <= 8'b0;
    end
    else begin
        state <= nextState;
        
        if (~push_req && pop_req) begin           
            if(sp > 0) 
                sp <= sp - 1;
            else 
                sp <= sp;
        end 
     
        else if (push_req && ~pop_req) begin
            if(sp <  128) 
                sp <= sp + 1;
            else 
                sp <= sp;
        end
        else if (push_req && pop_req) begin
            sp <= sp;
        end        
    end  
end        

//assign TOS = sp-1;

always_comb begin

    nextState = state;
    push_err = 0;
    pop_err = 1;
   
    $display("push_err =",  push_err);
    $display("pop_err =",   pop_err);
    $display("TOS =",  TOS);
    $display("sp =",  sp);

    case(state)
        
        idle: begin
                
            if(push_req && ~pop_req) begin
                mem[sp] = data_in;
                //sp = sp + 1; 
                
                if (sp < 128)
                    TOS = mem[sp];
                else
                    TOS = mem[127];
                       
              //  TOS = mem[sp - 1];  
               // nextState = idle;
            end
            else if(~push_req && pop_req) begin
                //sp = sp - 1;
                TOS = mem[sp - 1];
               // nextState = idle;
            end
            
            else if(push_req && pop_req) begin
        //        mem[sp-1] = data_in;
                TOS = data_in;
            end
            
            if(sp == 0) begin
                 TOS_valid = 0;
               //  pop_err = 1;
            end    
            else if(sp == 128 && push_req && ~pop_req) begin
                push_err = 1;
            end
            else if(sp>0) begin
                TOS_valid = 1;
                pop_err = 0;   
            end
        end
    endcase 
end

endmodule
