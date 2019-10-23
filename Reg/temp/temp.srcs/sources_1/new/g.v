`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2019 04:23:26 PM
// Design Name: 
// Module Name: g
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
//_______________ Multiplier Declaration _________________________
module MULTIPLIER(A,B,C);
    input [7:0]A;
    input[7:0]B ;
    output [15:0]C ;
    
    assign C=A*B;
    
endmodule;    