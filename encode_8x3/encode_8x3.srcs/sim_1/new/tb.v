`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 11:55:14
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
encoder_8_3 uut(.out(out),.in(in));
initial begin
in = 8'h01;
#2 in = 8'h02;
#2 in = 8'h04;
#2 in = 8'h08;
#2 in = 8'h10;
#2 in = 8'h20;
#2 in = 8'h40;
#2 in = 8'h80;
end
initial #18 $finish;
endmodule
