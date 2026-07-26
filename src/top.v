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



// from arty7.xdc

// Clock signal
// set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
// create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports { CLK100MHZ }];

// USB-UART Interface
//set_property -dict { PACKAGE_PIN D10   IOSTANDARD LVCMOS33 } [get_ports { uart_rxd_out }]; #IO_L19N_T3_VREF_16 Sch=uart_rxd_out
//set_property -dict { PACKAGE_PIN A9    IOSTANDARD LVCMOS33 } [get_ports { uart_txd_in }]; #IO_L14N_T2_SRCC_16 Sch=uart_txd_in

module top(
    input  wire CLK100MHZ,
    output wire uart_txd_in
);

// from uart_tx.v
// module uart_tx(
//     input wire clk,
//     input wire tx_start,
//     input wire [7:0] data, // 8 bit
//     output reg tx,
//     output reg busy
// );

// endmodule

wire busy;

uart_tx uart_tx_inst (
    .clk(CLK100MHZ),
    .tx_start(1'b1),
    .data(8'h48),      // ASCII 'H'
    .tx(uart_txd_in),
    .busy(busy)
);

endmodule