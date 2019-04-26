`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/12/2019 06:13:05 PM
// Design Name: 
// Module Name: toggler_tb
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


module toggler_tb;

    reg         clk;
    reg         rst;
    reg         toggle_start;
    reg [24:0]  toggle_value;
    reg         toggle_stop;
    
    wire toggle;
    
    toggler toh0 (
        .clk(clk),
        .rst(rst),
        .toggle_start(toggle_start),
        .toggle_value(toggle_value), 

        .toggle_stop(toggle_stop)
    );
    
    //inverts the clock signal every 10ns
    always #10 clk = ~clk;

    task checkCountdownSingle;

        input [24:0] testValue;

        $display("\nSingle Testing 0x%h\n", testValue);

        $display("Countdown 1 Testing Cycle %d", 0);
        //done should start 1
        assert( toggle_stop == 1'h1) else $fatal(1,"Bad done 1\n");
        toggle_start = 1'h1;
        toggle_value = testValue;

        //wait the correct number of cycles, 
        // checking that done stays 0
        for (integer i = 1; i < testValue; i++) begin
            @(negedge clk);
            $display("Countdown 1 Testing Cycle %d", i);
            toggle_start = 1'h0;
            toggle_value = 25'h0; 
            assert( toggle_stop == 1'h0) else $fatal(1, "Bad done 2\n");
        end

        // now done should be back to 1
        @(negedge clk); 
        assert( toggle_stop == 1'h1) else $fatal(1, "Bad done 3\n");

        @(negedge clk); 
        //and should stay 1
        assert( toggle_stop == 1'h1) else $fatal(1, "Bad done 4\n");
    endtask

    task checkCountdownDouble;
        input [24:0] testValue;

        $display("\nDouble Testing 0x%h\n", testValue);

        $display("Countdown 1 Testing Cycle %d", 0);
        //done should start 1
        assert( toggle_stop == 1'h1) else $fatal(1,"Bad done 5\n");
        toggle_start = 1'h1;
        toggle_value = testValue;


        //wait the correct number of cycles, 
        // checking that done stays 0
        for (integer i = 1; i < testValue; i++) begin
            @(negedge clk);
            $display("Countdown 1 Testing Cycle %d", i);
            toggle_start = 1'h1; //leave these
            toggle_value = testValue; //leave these
            assert( toggle_stop == 1'h0) else $fatal(1, "Bad done 2\n");
        end

        // now done should be 1
        // and we want to re-request another countdown
        @(negedge clk)
        $display("Countdown 2 Testing Cycle %d", 0);
        assert( toggle_stop == 1'h1) else $fatal(1, "Bad done 3\n");

        //wait the correct number of cycles, 
        // checking that done stays 0
        for (integer i = 1; i < testValue; i++) begin
            @(negedge clk);
            $display("Countdown 2 Testing Cycle %d", i);
            toggle_start = 1'h0;
            toggle_value = 25'h0;
            assert( toggle_stop == 1'h0) else $fatal(1, "Bad done 2\n");
        end

        // now done should be 1
        @(negedge clk);
        assert( toggle_stop == 1'h1) else $fatal(1, "Bad done 3\n");


        @(negedge clk); 
        //and should stay 1
        assert( toggle_stop == 1'h1) else $fatal(1, "Bad done 4\n");
 
    endtask

    initial begin
        //$display("Time State Count Done\n");
        //$monitor("%d %h %h %b", $time, tim0.state, tim0.count, done);

        // set initial values for clk and reset
        // Always start with rst = 1 for at least 1 clock cycle
        clk = 0;
        rst = 1;
        toggle_start = 1'h0;

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
