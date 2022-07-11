`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/18/2022 09:45:41 AM
// Design Name: 
// Module Name: d_ff
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


module d_ff(d, clk, q, reset);
    input d, clk, reset;
    output reg q;
    always @ (posedge clk or posedge reset) begin
    if (reset) q <= 0;
    else q <= d;
    end
endmodule
