`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2019 10:45:46 AM
// Design Name: 
// Module Name: main
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

module main(
input wire a,
input wire b,
input wire clk ,
input wire reset ,
output wire [3:0] an,
output wire [7:0] sseg,
output wire r1,r2,y1, y2, g1, g2
);

wire [7:0] count_out;
wire new_clk;

disp_hex_mux1 disp_unit
(.clk(clk), .reset(1'b0),
.hex1(4'b0000) , .hex0(4'b0000), .hex2(count_out[3:0]), .hex3(count_out[7:4]),
.dp_in(4'b1011), .an(an), .sseg(sseg));

cntr1 cntr_unit
(.clk(clk), .out(new_clk));

bcd_counter1 counter_unit(.clk(new_clk), .bcd(count_out));

trafficlight display(.a(a), .b(b),  .clk(new_clk),.reset(reset));

endmodule
