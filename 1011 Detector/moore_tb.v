`timescale 1ns / 1ns
module moore_tb();
reg clock,reset,inp;
wire out;
moore_detector m1(clock,reset,inp,out);
always begin
clock<=0;
#10;
clock<=1;
#10;
end
initial begin
reset = 1;
#20;
reset = 0;
#20;

inp = 1; #20;
inp = 0; #20;
inp = 1; #20;
inp = 1; #20;
inp = 0; #20;
$finish;
end
endmodule
