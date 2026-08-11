// What is a mux, physically? A multiplexer is a hardware selector switch — think of it as a rotary dial connected to several input wires, where a "select" control determines which single input gets routed through to the output. A 4:1 mux has 4 data inputs, needs 2 select bits (since 2² = 4 combinations), and 1 output.

// Bus notation ([1:0]) — Verilog lets you group multiple wires into a single named "bus" instead of declaring individual bits

// This is not an array in the C sense — it's still just wires, but grouped for convenient reference. sel[1:0] means "bit 1 down to bit 0" (2 bits total, MSB first).

module mux4to1(
    input wire [1:0] sel,
    input wire in0,
    input wire in1,
    input wire in2,
    input wire in3,
    output reg y
);

always @(*) begin
    case (sel)  
        2'b00: y = in0; 
        2'b01: y = in1; 
        2'b10: y = in2; 
        2'b11: y = in3; 
        default: y = 1'b0;
    endcase
end

endmodule

// Why default truly matters here, concretely: Even though 2'b00 through 2'b11 covers all reachable values of a real 2-bit signal, simulators can put sel into unknown states (x) or high-impedance (z) — especially at time 0, before any stimulus. Without default, the tool doesn't know what y should do for sel = 2'bxx, and since you never assign y in that scenario, synthesis tools infer "must be holding its previous value" — i.e., they insert a latch to remember the last known output. You now have a signal that's supposed to be pure combinational logic but is secretly stateful. Your default: y = 1'b0; closes that hole completely — well done including it proactively.