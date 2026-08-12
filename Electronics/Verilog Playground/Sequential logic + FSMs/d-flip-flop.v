module dff_async_rst(
    input wire d,
    input wire clk, 
    input wire rst_n,
    output reg q
);

always @(posedge clk or negedge rst_n)begin
  if(!rst_n)begin
    q <= 0; // reset wins, instantly
  end
  else begin
    q <= d; // normal operation, on clock tick
  end
end

endmodule

/*
Reset asserting is in the sensitivity list as its own edge trigger (negedge rst_n), so the block re-evaluates the instant it happens — no clock involved. That's what "asynchronous" buys you.

Reset de-asserting (rst_n going back high) is also an edge in the sensitivity list — but look at what happens when the block re-evaluates at that moment: if(!rst_n) is now false, so it falls to else q <= d;. That assignment still only takes effect in the way you'd observe on a waveform at the next posedge clk — because non-blocking assignments scheduled by a posedge clk-driven path only actually update q when the clock condition re-fires. In this case, q doesn't visibly change at the moment rst_n rises — it just sits there holding 0 until the next real clock edge comes along and captures whatever d is at that instant.
*/