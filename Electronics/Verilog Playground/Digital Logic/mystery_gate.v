
// Here's a truth table for a 3-input function y:

// a	b	c	y
// 0	0	0	0
// 0	0	1	0
// 0	1	0	0
// 0	1	1	1
// 1	0	0	0
// 1	0	1	1
// 1	1	0	1
// 1	1	1	1

// We now want to predict the logic behind this truth table.

module mystery_gate(
    input wire a,
    input wire b,
    input wire c,
    output wire y
);

    assign y = (a&b)|(b&c)|(a&c);

endmodule

// How the verilog works :

// Verilog compiler doesn't read top-to-bottom like a script at all — it first scans the entire module to build a dependency graph of "what wire drives what," and then wires up the hardware. Textual position in the file is purely cosmetic. This is why hardware engineers can declare a wire anywhere in the module (even after it's used) and it's a total non-issue — try doing that with a variable in C and the compiler will yell at you.