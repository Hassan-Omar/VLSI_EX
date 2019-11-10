`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 07:22:40 PM
// Design Name: 
// Module Name: BANYAN2_2
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


module BANYAN2_2(s ,x1,x2,y1,y2);
    input s,x1,x2;
    output y1,y2;
    assign y1=((~s&x1)|(s&x2));
    assign y2=((~s&x2)|(s&x1));
endmodule
