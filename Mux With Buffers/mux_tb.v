`timescale 1ns / 1ns
module mux_tb();
reg A,B,Select;
wire Out;
mux m1(A,B,Select,Out);
initial begin
#10 Select=0;A=1;B=0;
#10 Select=1;A=1;B=0;
#10 Select=1;A=0;B=1;
$stop;
end
endmodule
