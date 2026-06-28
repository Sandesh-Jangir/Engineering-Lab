module top_module ( 
    input p1a, p1b, p1c, p1d, p1e, p1f,
    output p1y,
    input p2a, p2b, p2c, p2d,
    output p2y );
// Completing left side of the chip.
    wire left1, left2;
    assign left1 = p2a&&p2b;
    assign left2 = p2c&&p2d;
    assign p2y = left1|left2;

// Completing right side of the chip.
    wire right1, right2;
    assign right1 = p1a&&p1c&&p1b;
    assign right2 = p1e&&p1d&&p1f;
    assign p1y = right1|right2;

endmodule