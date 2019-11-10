`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 06:34:42 PM
// Design Name: 
// Module Name: BANYAN2BY2TEST
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


module BANYAN2BY2TEST(

    );
    reg [1:0] CONECCTIONSELECTOR;
    reg A_IN,B_IN;
    wire A_OUT,B_OUT;
    BANYAN2_2 test_instance (CONECCTIONSELECTOR,A_IN,B_IN,A_OUT,B_OUT); 
    initial 
    begin 
    A_IN=1; B_IN=0; CONECCTIONSELECTOR=2'b00;
    #100 A_IN=1; B_IN=0; CONECCTIONSELECTOR=2'b11;
    #100 A_IN=1; B_IN=0; CONECCTIONSELECTOR=2'b10;
    #100 A_IN=0; B_IN=1; CONECCTIONSELECTOR=2'b01;
    #100 A_IN="X"; B_IN=0; CONECCTIONSELECTOR=2'b00;
    
    end 
    
endmodule
