`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2019 02:38:04 PM
// Design Name: 
// Module Name: test
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


module test(
    );
    reg EN,RST,CLK;
    reg [7:0] in;
    wire [7:0]out ;
     REGISTER regist (CLK,EN,RST,in,out);
     
     initial begin 
     CLK=0;
     EN=1;
     RST=0;
     in=8'hac;
     #200
     RST=1;
     #300
     RST=0;
     in=8'ha7;
     end 
     
     always @* begin
             forever #5 CLK = ~CLK ;
     end
endmodule
