`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/21/2022 05:38:44 PM
// Design Name: 
// Module Name: F_A
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


module F_A(a,b,c_in,S,C);
input a,b,c_in;
output S,C;
wire left_s,left_c,right_c;
//a,b,S,C for half adder
H_A leftadder(a,b,left_s,left_c);
H_A rightadder(left_s,c_in,S,right_c);
or(C,right_c,left_c);
endmodule
