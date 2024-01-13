`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 12:42:14
// Design Name: 
// Module Name: DFF_AsynRst_2
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


module DFF_AsynRst_2(
    input clk,
    input d, 
    input ar,  
    output reg q
    );
    always @ (posedge clk or posedge ar) begin
    if(ar)
    q<=0;
    else
    q<=d;
    end
endmodule
