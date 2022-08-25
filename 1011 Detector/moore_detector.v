`timescale 1ns / 1ns
module moore_detector(clk,reset,x_in,out);
input clk,reset,x_in;
output reg out;
reg [2:0]current_state,next_state;
parameter [2:0] start=3'b000,s1=3'b001,s2=3'b010,s3=3'b011,s4=3'b100;
always@(posedge clk)begin
    if(reset) current_state<=start;
    else current_state<=next_state;
end
always@(current_state or x_in)begin
    case(current_state)
    start:begin
        if(x_in) next_state=s1;
        else next_state=start;
    end
    s1:begin
        if(x_in) next_state=s1;
        else next_state=s2;
    end
    s2:begin
        if(x_in) next_state=s3;
        else next_state = start;
    end
    s3:begin
        if(x_in) next_state=s4;
        else next_state = s2;
    end
    s4:begin
        if(x_in) next_state=s1;
        else next_state=s2;
    end
    endcase
end
always@(current_state)begin
case(current_state)
    start:out<=0;
    s1:out<=0;
    s2:out<=0;
    s3:out<=0;
    s4:out<=1;
endcase
end
endmodule
