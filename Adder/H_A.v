`timescale 1ns / 1ns
module H_A(a,b,S,C);
input a,b;
output S,C;
xor(S,a,b);
and(C,a,b);
endmodule
