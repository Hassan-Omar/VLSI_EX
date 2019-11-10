`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 06:54:33 PM
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


module BANYAN2_2(
    input [1:0] CONECCTIONSELECTOR,
    input A_IN,
    input B_IN,
    output reg A_OUT,
    output reg B_OUT
    );
    
    always@(*)begin 
            if(CONECCTIONSELECTOR==0'b00)
                A_OUT=A_IN ; 
            else if(CONECCTIONSELECTOR==0'b01)
                B_OUT=A_IN ;
            else if(CONECCTIONSELECTOR==0'b10)
                 A_OUT=B_IN ; 
            else if(CONECCTIONSELECTOR==0'b11)
                 B_OUT=B_IN ; 
            else begin
                B_OUT="Z";
                A_OUT="Z";
            end
    end
endmodule
