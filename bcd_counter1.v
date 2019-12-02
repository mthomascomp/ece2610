`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2019 10:55:33 AM
// Design Name: 
// Module Name: bcd_counter1
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


module bcd_counter1(
input clk,
//output reg out=1'b0
output reg [7:0] bcd = 8'b00010101
);

//reg [7:0] bcd;
always @( posedge clk)
begin
if(bcd[3:0] == 4'd0)
    begin
       bcd [3:0] = 4'b1001;
       bcd [7:4] = bcd[7:4] - 4'b0001;
    end
else if (bcd[3:0] <= 4'd9)
        begin
        bcd[3:0] = bcd[3:0]-4'b0001;
        end
 if (bcd[7:0] == 8'hF9) 
      begin
        bcd = 8'b00010101; 
      end
end
endmodule

