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
    input  wire CLK100MHZ, //selecting the clock form constaints
    output wire uart_txd_in // selecting the uart output from constraints
);

wire uart_tx_busy; //open connection for uart_tx
wire baud_tick; //open connection for baud_gen

baud_gen baud_inst (
    .clk(CLK100MHZ), //import clock
    .tick(baud_tick) //output reg tick
);

uart_tx uart_tx_inst (
    .clk(CLK100MHZ), //import clock
    .baud_tick(baud_tick), //import baud_tick
    .tx_start(1'b1),
    .data(8'h48),      // ASCII 'H'
    .tx(uart_txd_in), //    output reg tx
    .busy(uart_tx_busy) //output reg busy
);

endmodule