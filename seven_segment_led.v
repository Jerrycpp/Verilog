`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2022 07:13:05 AM
// Design Name: 
// Module Name: seven_segment_led
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seven_segment_led(
    inp, out
    );
    input [3:0] inp;
    output reg [6:0] out;
    always @ (inp) begin
    case (inp)
    4'b0000 : out = 7'b0111111;
    4'b0001 : out = 7'b0000110;
    4'b0010 : out = 7'b1011011;
    4'b0011 : out = 7'b1001111;
    4'b0100 : out =  7'b1100110;
    4'b0101 : out =  7'b1011011;
    4'b0110 : out =  7'b1111101;
    4'b0111 : out =  7'b0000111;
    4'b1000 : out =  7'b1111111;
    4'b1001 : out =  7'b1101111;
    default : out = 7'b1111111;
    endcase          
    end
endmodule
