`timescale 1ns / 1ns
module Shift_Register(o_par,i_par,s1,s0,msb,lsb,clk,clear);
input i_par,s1,s0,msb,lsb,clk,clear;
output reg [3:0] o_par;
always@(posedge clk) begin
if(~clear) o_par<=4'b0000;
else
    case({s1,s0})
    2'b00:o_par<=o_par;
    2'b01:o_par<={msb,o_par[3:1]};
    2'b10:o_par<={o_par[2:0],lsb};
    2'b11:o_par<=i_par;
    endcase
end
endmodule
