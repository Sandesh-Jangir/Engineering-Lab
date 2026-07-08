`timescale 1ns / 1ps
`include "half_adder.v"


module half_adder_tb;

    // Inputs (declared as reg because we drive them in an initial block)
    reg a;
    reg b;

    // Outputs (declared as wire because we observe them)
    wire sum;
    wire carry;

    // Instantiate the Unit Under Test (UUT)
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Required for generating waveform files in iverilog
        $dumpfile("half_adder_tb.vcd");
        $dumpvars(0, half_adder_tb);

        // Monitor changes and print them to the console
        $monitor("Time = %0t | A = %b | B = %b | SUM = %b | CARRY = %b", $time, a, b, sum, carry);

        // Stimulus - Apply all 4 combinations
        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        // End the simulation
        $finish;
    end

endmodule
