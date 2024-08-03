`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2024 22:47:09
// Design Name: 
// Module Name: decoder
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


module decoder(y,x);
output [3:0]y;
input [1:0]x;
wire w1,w2;;
not G1(w1,x[0]);
not G2(w2,x[1]);
and G3(y[0],w2,w1);
and G4(y[1],w2,x[0]);
and G5(y[2],x[1],w1);
and G6(y[3],x[1],x[0]);
endmodule
