// Missing paths in combinational blocks = unintended latch (bad). Missing paths in clocked blocks = intentional state retention (correct and idiomatic).

module counter_en(
    input wire clk, rst_n, enable,
    output reg [3:0] count
);

always @(posedge clk or negedge rst_n) begin
    if(!rst_n) begin
      count <= 0;
    end
    else if (enable) begin
      count <= count + 1;
    end
end

endmodule

module counter_mod10(
    input wire clk, rst_n, enable,
    output reg [3:0] count
);

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        count <= 0;
    else if (enable) begin
        if (count == 9)
            count <= 0;
        else
            count <= count + 1;
    end
end

endmodule