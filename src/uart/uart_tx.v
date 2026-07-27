module uart_tx(
    input wire clk,
    input wire baud_tick,
    input wire tx_start,
    input wire [7:0] data,
    output reg tx,
    output reg busy
);

always @(posedge clk) begin
    tx <= 1'b1;
    busy <= 1'b0;
end

endmodule