`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2024 22:52:59
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
wire [3:0]y;
reg [1:0]x;
decoder uut(.y(y),.x(x));
initial begin
x = 2'b00;
end
always #5 x = x + 1'b1;
initial #50 $finish;
endmodule
