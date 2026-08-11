module mux2to1(
    input wire sel,
    input wire a,
    input wire b,
    output reg y
);

always @(*) begin
    if (sel) begin
        y = a;
    end
    else begin
        y = b;
    end
end

endmodule
// For purely combinational logic (no memory, no clock), assign and always @(*) are functionally and physically interchangeable — pick whichever syntax is more readable for the logic at hand. Simple boolean expression → assign. Multi-branch conditional logic (if/else if/else, case) → always @(*), because assign can't express that without stacking nested ternaries into unreadable spaghetti.

// The only place "continuous vs procedural" will start to actually matter for hardware outcome is once we introduce clocked always @(posedge clk) blocks — that's where real flip-flops (memory, state, timing) enter the picture, and assign fundamentally cannot express that at all


module shift_reg(
    input wire clk,
    input wire d,
    output reg q1,
    output reg q2
);

always @(posedge clk) begin
    q1 <= d;
    q2 <= q1;
end

endmodule

// Rule of Thumb : One always block, one assignment style — = throughout for combinational, <= throughout for sequential. No exceptions, no mixing, even when you can "prove" a specific case works.


// Blocking -> = -> Gets executed instantly
// Non Blocking -> <= -> Moves to the end of the block, by seeing the older values of the variables(wires/reg) and then updating all of them simultaneously when it has evalutaed the entire block.