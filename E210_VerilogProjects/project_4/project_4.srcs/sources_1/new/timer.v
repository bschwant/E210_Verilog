`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 11:25:03 AM
// Design Name: 
// Module Name: timer
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


module timer(
    input           clk,
    input           rst,

    input           start_request,
    input [24:0]    start_value,

    output reg      done
);

localparam ST_IDLE = 0;
localparam ST_DOWN = 1;

localparam STATE_SIZE = $clog2(ST_DOWN+ 1);

reg [STATE_SIZE-1:0] state;
reg [STATE_SIZE-1:0] nextState;

reg [24:0] count;
reg [24:0] nextCount;

always_ff@(posedge clk) begin
    if (rst)  begin //reset case
        state <= ST_IDLE; 
        count <= 25'h0;
    end 
    else begin //normal case
        state <= nextState;
        count <= nextCount;
    end
end


//combinational-logic block
// - All statements should be blocking (=)
// - The result value is the last assignment evaluated (=)
// - Make sure you set a default for output values!
always_comb begin

    //DONT FORGET DEFAULTS! 
    nextState = state; 
    nextCount = 25'h0; 
    done = 1'h1;

    case(state)

        ST_IDLE: begin
            if (start_request && (start_value !=0) ) begin
                nextState = 1;
                nextCount = start_value - 1;
                done = 0;
            end
            else if (~start_request || (start_value == 0) ) begin
                nextState = 0;
                nextCount = 0;
                done = 1;
            end
        end

        ST_DOWN: begin
            if ( (count == 0) && start_request && (start_value !=0) ) begin
                nextState = 1;
                nextCount = start_value - 1; 
                done = 1;
            end 
            else if (count == 0 && start_request && (start_value != 0)) begin
                nextState = 1;
                nextCount = start_value - 1;
                done = 1;
            end 
            else if (count == 0 && (~start_request || (start_value == 0))) begin
                nextState = 0;
                nextCount = 0;
                done = 1;
            end 
            else if (count != 0) begin
                nextState = 1;
                nextCount = count - 1;
                done = 0;
            end      
       end

        default:  begin //default state
            nextState = ST_IDLE;
        end

    endcase
end

endmodule
