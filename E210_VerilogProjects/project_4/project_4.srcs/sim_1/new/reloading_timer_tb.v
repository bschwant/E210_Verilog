`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/08/2019 01:08:32 PM
// Design Name: 
// Module Name: reloading_timer_tb
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


module reloading_timer_tb;

    reg         clk;
    reg         rst;
    reg         request;
    reg [24:0]  value;
    wire        stop;
    wire        trigger;

    reloading_timer rel_tim0 (
        .clk(clk),
        .rst(rst),
        .start_request(request),
        .start_value(value), 

        .stop(stop),
        .trigger(trigger)      
    );
    
    //inverts the clock signal every 10ns
    always #10 clk = ~clk;

    task checkCountdownSingle;

        input [24:0] testValue;

        $display("\nSingle Testing 0x%h\n", value);

        $display("Countdown 1 Testing Cycle %d", 0);
        //trigger should start 1
        assert( trigger == 1'h1) else $fatal(1,"Bad trigger 1\n");
        request = 1'h1;
        value = testValue;

        //wait the correct number of cycles, 
        // checking that trigger stays 0
        for (integer i = 1; i < testValue; i++) begin
            @(negedge clk);
            $display("Countdown 1 Testing Cycle %d", i);
            request = 1'h0;
            value = 25'h0; 
            assert( trigger == 1'h1) else $fatal(1, "Bad trigger 2\n");
            
        end

        // now trigger should be back to 1
        @(negedge clk); 
        assert( trigger == 1'h1) else $fatal(1, "Bad trigger 3\n");

        @(negedge clk); 
        //and should stay 1
        assert( trigger == 1'h1) else $fatal(1, "Bad trigger 4\n");
    endtask

    task checkCountdownDouble;
        input [24:0] testValue;

        $display("\nDouble Testing 0x%h\n", testValue);

        $display("Countdown 1 Testing Cycle %d", 0);
        //trigger should start 1
        assert( trigger == 1'h1) else $fatal(1,"Bad trigger 5\n");
        request = 1'h1;
        value = testValue;


        //wait the correct number of cycles, 
        // checking that trigger stays 0
        for (integer i = 1; i < testValue; i++) begin
            @(negedge clk);
            $display("Countdown 1 Testing Cycle %d", i);
            request = 1'h1; //leave these
            value = testValue; //leave these
            assert( trigger == 1'h0) else $fatal(1, "Bad trigger 2\n");
      
        end

        // now trigger should be 1
        // and we want to re-request another countdown
        @(negedge clk)
        
        //rst = 1;
       // #10
       // rst = 0;
        
        $display("Countdown 2 Testing Cycle %d", 0);
        assert( trigger == 1'h1) else $fatal(1, "Bad trigger 3\n");

        //wait the correct number of cycles, 
        // checking that trigger stays 0
        for (integer i = 1; i < testValue; i++) begin
            @(negedge clk);
            $display("Countdown 2 Testing Cycle %d", i);
            request = 1'h0;
            value = 25'h0;
            assert( trigger == 1'h0) else $fatal(1, "Bad trigger 2\n");
        end

        // now trigger should be 1
        @(negedge clk);
        assert( trigger == 1'h1) else $fatal(1, "Bad trigger 3\n");


        @(negedge clk); 
        //and should stay 1
        assert( trigger == 1'h1) else $fatal(1, "Bad trigger 4\n");
 
    endtask

    initial begin
        //$display("Time State Count trigger\n");
        //$monitor("%d %h %h %b", $time, tim0.state, tim0.count, trigger);

        // set initial values for clk and reset
        // Always start with rst = 1 for at least 1 clock cycle
        clk = 0;
        rst = 1;
        request = 1'h0;

        // wait until the negative (falling) edge of the clock
        // and clear reset
        @(negedge clk); 
        rst = 0;

        //wait for 10 falling clock edges
        for (integer i = 0; i < 10; i++)
            @(negedge clk); 

        checkCountdownSingle(25'h1);

        checkCountdownSingle(25'h3);

        checkCountdownSingle(25'h10);

        checkCountdownSingle(25'h100);
        
        //please don't check values higher than 0x100


        //
        // Checking back-to-back countdowns
        //
        checkCountdownDouble(25'h3);
        checkCountdownDouble(25'h10);

        // check corner case
        checkCountdownSingle(25'h0);


        $display("@@@Passed\n");
        $finish;

    end

endmodule

