// A register is just a bank of flip-flops sharing a clock — you already know the single-bit DFF, a register is nothing more than that pattern applied to a whole bus

module sipo_shift_reg(
    input wire clk, serial_in, rst_n,
    output reg [3:0] parallel_out
);

always @(posedge clk or negedge rst_n) begin
   if (!rst_n) begin
     parallel_out <= 4'b0;
   end 
   else
   begin
     parallel_out <= {parallel_out[2:0], serial_in}; //Concatenation Operator
   end
end


endmodule

// non-blocking assignments aren't just "the correct convention because someone said so" — they guarantee correct, order-independent behavior regardless of how you write the statements, precisely because every RHS is evaluated against the pre-edge state. Blocking assignments make correctness fragile and dependent on statement order, which is exactly the kind of hidden landmine you don't want in sequential logic. This is precisely why the rule "always use non-blocking (<=) in clocked always blocks" isn't a style preference — it's a correctness guarantee.