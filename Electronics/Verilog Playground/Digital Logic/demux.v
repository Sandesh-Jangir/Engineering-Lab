module demux(
    input wire data,
    input wire [1:0] sel,
    output reg out0, 
    output reg out1,
    output reg out2, 
    output reg out3
);

always @(*) begin
   case (sel)

    2'b00: 
        begin
            out0 = data;
            out1 = 0;
            out2 = 0;
            out3 = 0;
        end
    2'b01: 
        begin
            out0 = 0;
            out1 = data;
            out2 = 0;
            out3 = 0;
        end
    2'b10: 
        begin
            out0 = 0;
            out1 = 0;
            out2 = data;
            out3 = 0;
        end
    2'b11: 
        begin
            out0 = 0;
            out1 = 0;
            out2 = 0;
            out3 = data;
        end
    default: 
        begin
            out0 = 0;
            out1 = 0;
            out2 = 0;
            out3 = 0;
        end
   endcase 
end

endmodule