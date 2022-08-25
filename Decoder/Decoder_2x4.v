`timescale 1ns / 1ns
module Decoder_2x4(a,b,enable,d);
input a , b , enable;
output [0:3]d;
wire a_not,b_not,e_not;
not
G1(a_not,a),
G2(b_not,b),
G3(e_not,enable);
nand
G4(d[0],a_not,b_not,e_not),
G5(d[1],a_not,b,e_not),
G6(d[2],a,b_not,e_not),
G7(d[3],a,b,e_not);
endmodule
