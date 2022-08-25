`timescale 1ns / 1ns
module mealy_detector(clk,reset,x_in,out);
input clk,reset,x_in;
output reg out;
reg [2:0] current_state,next_state;
parameter [2:0] start=0,s1=1,s2=2,s3=3,s4=4;
always@(posedge clk)begin
    if(reset) current_state<=start;
    else current_state<=next_state;
end
always@(x_in or current_state)begin
    case(current_state)
    start:begin
        if(x_in)begin 
            next_state=s1;
            out<=0;
        end
        else begin 
            next_state=start;
            out<=0;
        end
    end
    s1:begin
        if(x_in)begin
            next_state = s1;
            out<=0;
        end
        else begin
            next_state = s2;
            out<=0;
        end
        end
     s2:begin
     if(x_in)begin
            next_state=s3;
            out<=0;
     end
     else begin
            next_state=start;
            out<=0;
     end
     end
     s3:begin
     if(x_in)begin
     next_state=s4;
     out<=1;
     end
     else begin
     next_state=s2;
     out<=0;
     end
     end
     s4:begin
     if(x_in)begin next_state = s1;
     out<=0;
     end
     else begin
     next_state=s2;
     out<=0;
     end
     end
    endcase
end
endmodule
