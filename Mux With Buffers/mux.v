`timescale 1ns / 1ns
module mux(a,b,select,out);
input a,b,select;
output out;
tri out;
bufif1(out,a,select);
bufif0(out,b,select);
endmodule
