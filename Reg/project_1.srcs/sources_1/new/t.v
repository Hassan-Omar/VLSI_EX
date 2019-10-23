`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2019 02:08:16 PM
// Design Name: 
// Module Name: t
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

module REGISTER(
    input CLK ,EN,RST,[7:0]DATA,
    output reg [7:0]Q
    );
    
    always @(posedge CLK or posedge EN)
    begin
    if(RST)
        Q <= 8'h00;
    else if(EN)
         Q <= DATA;
     else 
         Q <= Q;   
    end;
    
 endmodule;
