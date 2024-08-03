`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.07.2024 11:48:43
// Design Name: 
// Module Name: encoder_8_3
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


module encoder_8_3(out,in);
output reg [2:0]out;
input [7:0]in;
always @(*)
case(in)
    8'h01: out = 3'b000;
    8'h02: out = 3'b001;
    8'h04: out = 3'b010;
    8'h08: out = 3'b011;
    8'h10: out = 3'b100;
    8'h20: out = 3'b101;
    8'h40: out = 3'b110;
    8'h80: out = 3'b111;
    default: out = 3'bxxx;
endcase
endmodule
