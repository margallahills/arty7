module baud_gen #(
    parameter CLOCK_FREQ = 100_000_000,
    parameter BAUD_RATE = 10_000
)(
    input wire clk,
    output reg baud_tick
);


localparam integer CLKS_PER_BIT = CLOCK_FREQ / BAUD_RATE;


reg [13:0] counter;


always @(posedge clk) begin

    if (counter == CLKS_PER_BIT-1) begin

        counter <= 0;
        baud_tick <= 1'b1;

    end

    else begin

        counter <= counter + 1;
        baud_tick <= 1'b0;

    end

end


endmodule