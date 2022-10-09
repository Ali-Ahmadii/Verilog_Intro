`timescale 1ns / 1ps
module F_A(a,b,c_in,S,C);
input a,b,c_in;
output S,C;
wire left_s,left_c,right_c;
//a,b,S,C for half adder
H_A leftadder(a,b,left_s,left_c);
H_A rightadder(left_s,c_in,S,right_c);
or(C,right_c,left_c);
endmodule
