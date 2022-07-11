`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2022 08:52:26 AM
// Design Name: 
// Module Name: ripple_counter
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




module ripple_counter(
        clk, q0, q1, reset
    );
    input clk, reset;
    output q0, q1;
    d_ff ff1 (.d(~q0), .clk(clk), .q(q0), .reset(reset));
    d_ff ff2 (.d(~q1), .clk(~q0), .q(q1), .reset(reset));
endmodule
