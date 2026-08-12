// An FSM is, at its hardware core, just a register that stores "which state we're in" + combinational logic that decides "what state comes next" and "what to output."

module traffic_light_fsm(
    input wire timer_done, rst_n, clk,
    output reg [2:0] light
);

    localparam RED  = 2'b00,
            GREEN   = 2'b01,
            YELLOW  = 2'b10;
    reg [1:0] state, next_state;

always @(*) begin
    next_state = state;   // default — stay put, avoids latch
    light = 3'b000;       // default — avoids latch on light too
    case (state)
        RED: begin
            light = 3'b100;
            if (timer_done)
                next_state = GREEN;
        end
        GREEN: begin
            light = 3'b010;
            if (timer_done)
                next_state = YELLOW;
        end
        YELLOW: begin
            light = 3'b001;
            if (timer_done)
                next_state = RED;
        end
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if (!rst_n)
        state <= RED;
    else
        state <= next_state;
end



endmodule