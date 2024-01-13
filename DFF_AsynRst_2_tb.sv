`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.12.2023 12:49:05
// Design Name: 
// Module Name: DFF_AsynRst_2_tb
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


module DFF_AsynRst_2_tb(

    );
    reg clk;
    reg d;
    reg ar;
    wire q;
    DFF_AsynRst_2 dut(.clk(clk),.d(d),.q(q),.ar(ar));
    always #5 clk=~clk;
    initial
    begin
    $dumpfile("dump.vcd");
    $dumpvars;
    $monitor("time=%0t d=%0b ar=%0b q=%0b",$time,d,ar,q);
    #30 $finish;
    end
    initial
    begin
    clk<=0;
    #4;
    d<=1;
    ar<=0;
    #10;
    d<=0;
    ar<=1;
    end
endmodule
