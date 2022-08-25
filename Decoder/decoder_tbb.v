`timescale 1ns / 1ns
module decoder_tbb();
reg A,B,E;
wire [0:3]D;
Decoder_2x4 d1(A,B,E,D);
initial begin
#10 E=1;A=1;B=1;
#50 E=0;A=0;B=0;
#20 E=0;A=1;B=1;
#10 $stop;
end
endmodule
