`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 09:43:42 AM
// Design Name: 
// Module Name: posedge_detector
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


module posedge_detector(
    clk, inp, out, reset
    );
    parameter N_CLOCK = 125000000;
    input clk, inp, reset;
    output reg out;
    wire out_flop1, out_flop2;
    reg [25:0] counter;
    d_ff flop1 (.clk(clk), .inp(inp), .out(out_flop1), .reset(reset));
    d_ff flop2 (.clk(clk), .inp(out_flop1), .out(out_flop2), .reset(reset));
    assign imme = out_flop1 & (~out_flop2);
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            out <= 0;
        end
        else begin
            if (imme) begin
                out <= 1;
                counter <= 0;
            end
            else if (counter == N_CLOCK-1) begin
                out <= 0;
                counter <= 0;
            end
            else counter <= counter+1;
        end
    end
endmodule
