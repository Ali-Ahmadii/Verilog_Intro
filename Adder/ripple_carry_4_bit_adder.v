`timescale 1ns / 1ns
module ripple_carry_4_bit_adder(S,Cout,A,B,Cin);
output [3:0]S;
output Cout;
input [3:0]A,B;
input Cin;
wire C1,C2,C3;
//a , b , cin , s , c
F_A a0(A[0],B[0],Cin,S[0],C1),
    a1(A[1],B[1],C1,S[1],C2),
    a2(A[2],B[2],C2,S[2],C3),
    a3(A[3],B[3],C3,S[3],Cout);
endmodule
