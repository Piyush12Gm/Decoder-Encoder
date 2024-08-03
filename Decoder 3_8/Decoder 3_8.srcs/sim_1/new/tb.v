`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2024 23:24:12
// Design Name: 
// Module Name: tb
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


module tb;
wire [7:0]y;
reg [2:0]x;
decoder uut(.y(y),.x(x));
initial begin
x = 2'b000;
end
always #5 x = x + 1'b1;
initial #200 $finish;
endmodule
