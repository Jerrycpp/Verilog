`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2022 08:42:40 AM
// Design Name: 
// Module Name: frequency_divider_500
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


module frequency_divider_500(
    clk, out, reset
    );
    input clk, reset;
    output reg out;
    reg [25:0] counter;
    localparam HALF_PERIOD = 62499999;
    
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            out <= 0;
        end
        else begin
            counter <= counter + 1;
            if (counter == 62499999) begin
                counter <= 0;
                out <= ~out;
            end
            
        end
    end
endmodule
