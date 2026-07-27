module uart_tx(
    input wire clk,
    input wire tx_start,
    input wire baud_tick, //connection with baud_gen.v
    input wire [7:0] data, // 8 bit
    output reg tx,
    output reg busy
);

endmodule