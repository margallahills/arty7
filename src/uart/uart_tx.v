module uart_tx(
    input wire clk,
    input wire tx_start,
    input wire [7:0] data, // 8 bit
    output reg tx,
    output reg busy
);

endmodule