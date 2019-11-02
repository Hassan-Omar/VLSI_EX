`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2019 07:35:19 PM
// Design Name: 
// Module Name: FIFO_TEST
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


module FIFO_TEST();

            reg CLK; 
            reg [15:0]IN_DATA;
            reg  CLEAR;
            reg R;
            reg W;  
            wire FULL;
            wire EMPTY;
            wire [15:0]OUT_DATA;
            FIFO INSTACE_FIFO(CLK,IN_DATA,CLEAR,R,W,FULL,EMPTY,OUT_DATA);
            
            initial begin
            CLK=0; CLEAR =1;IN_DATA=0'h00ab;R=0; W=1;
            #100  IN_DATA=0'habcd; R=1;W=0; CLEAR=0;
            #100  IN_DATA=0'ha000; R=1;W=0;
            #100  IN_DATA=0'ha000; R=0;W=1;  
            
            end;
            //Clock generator 
            always forever
                #50 CLK=~CLK; 
endmodule
