`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2024 23:09:15
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


module decoder2_4(y,x,en);
output [3:0]y;
input [1:0]x;
input en;
wire w1,w2;
not G1(w1,x[0]);
not G2(w2,x[1]);
and G3(y[0],w2,w1,en);
and G4(y[1],w2,x[0],en);
and G5(y[2],x[1],w1,en);
and G6(y[3],x[1],x[0],en);
endmodule

module decoder(y,x);
output[7:0]y;
input [2:0]x;
wire w;
not G1(w,x[2]);
//Instantition
decoder2_4 D1(y[3:0],x[1:0],w);
decoder2_4 D2(y[7:4],x[1:0],x[2]);
endmodule
