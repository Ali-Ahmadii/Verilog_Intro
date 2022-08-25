`timescale 1ns / 1ns
module Shift_Register_Circuit(o_par,i_par,s1,s0,msb,lsb,clk,clear);
output [3:0] o_par;
input [3:0] i_par;
input s1,s0,msb,lsb,clk,clear;
assign select={s1,s0};//////
stage st0(o_par[0],o_par[1],lsb,i_par[0],o_par[0],select,clk,clear);
stage st1(o_par[1],o_par[2],o_par[0],i_par[1],o_par[1],select,clk,clear);
stage st2(o_par[2],o_par[3],o_par[1],i_par[2],o_par[2],select,clk,clear);
stage st3(o_par[3],msb,o_par[2],i_par[3],o_par[3],select,clk,clear);
endmodule
module stage(i0,i1,i2,i3,Q,select,clk,clear);
input i0,i1,i2,i3;
output Q;
input [1:0]select;
input clk,clear;
wire mux_out;
mux_4x1 model0(mux_out,i0,i1,i2,i3,select);
D_FF model1(Q,mux_out,clk,clear);
endmodule
module mux_4x1(mux_out,i0,i1,i2,i3,select);
output mux_out;
input i0,i1,i2,i3;
input [1:0] select;
reg  mux_out;
always@(select,i0,i1,i2,i3)
    case(select)
    2'b00: mux_out=i0;
    2'b01: mux_out=i1;
    2'b10: mux_out=i2;
    2'b11: mux_out=i3;
    endcase
endmodule
module D_FF(Q,D,clk,clear);
output Q;
input D,clk,clear;
reg Q;
always@(posedge clk)
if(!clear) Q<=1'b0;
else Q<=D;
endmodule
