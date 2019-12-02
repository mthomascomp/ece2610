`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2019 10:51:48 AM
// Design Name: 
// Module Name: counter_unit-bcd_counter
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


module counter_unit-bcd_counter(
input clk,
output reg out=1'b0
);
reg [3:0] bcd;
always @( posedge clk)
begin
    if(bcd[3:0]==4'd15)
    begin
        bcd[3:0]=bcd[3:0]-4'b0001;
    end
    
    if(bcd[3:0]==4'b0000)
    begin
        bcd=4'd15;
        out=1'b1;
    end
end
endmodule