`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/25/2026 02:31:18 PM
// Design Name: 
// Module Name: top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top(
    input wire clk,
    output wire uart_tx
);

wire busy;

uart_tx uart_tx_inst (
    .clk(clk),
    .tx_start(1'b1),
    .data(8'h48),     // ASCII H
    .tx(uart_tx),
    .busy(busy)
);

endmodule