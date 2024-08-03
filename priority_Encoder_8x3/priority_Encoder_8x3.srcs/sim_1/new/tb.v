`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 12:12:08
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
reg [7:0]in;
wire [2:0]out;
priority_encoder uut(.out(out),.in(in));
initial  begin
in = 8'h01;
#2 in = 8'h03;
#2 in = 8'h05;
#2 in = 8'h08;
#2 in = 8'h10;
#2 in = 8'h30;
#2 in = 8'h50;
#2 in = 8'h80;
end
initial #30 $finish;
endmodule
