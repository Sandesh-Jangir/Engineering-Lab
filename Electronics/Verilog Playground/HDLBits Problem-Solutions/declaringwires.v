`default_nettype none
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out,
    output out_n   ); 
	wire and_out1, and_out2, divergence;
    
    assign and_out1 = a&&b;
    assign and_out2 = d&&c;
    
    assign divergence = and_out1 || and_out2;
    assign out = divergence;
    assign out_n = !divergence;
    
    
endmodule