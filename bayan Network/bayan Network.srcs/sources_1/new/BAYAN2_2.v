`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 10:52:43 AM
// Design Name: 
// Module Name: BAYAN2_2
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

// This module for 2*2 bayan switch 4 stage switch 
module BAYAN2_2(
    input CONNECTIONSELECTOR,
    input A_IN,
    input B_IN,
    output reg A_OUT,
    output reg B_OUT
    );
    
    always @(*)
    begin
        if(CONNECTIONSELECTOR==2'b00)
             A_OUT=A_IN;
        else if(CONNECTIONSELECTOR==2'b01)
             B_OUT=A_IN;
        else if(CONNECTIONSELECTOR==2'b10)
             A_OUT=B_IN;
        else if (CONNECTIONSELECTOR==2'b11)
             B_OUT=B_IN;
        else begin 
            A_OUT="Z";
            B_OUT="Z"; 
        end
            
    end
    
endmodule
