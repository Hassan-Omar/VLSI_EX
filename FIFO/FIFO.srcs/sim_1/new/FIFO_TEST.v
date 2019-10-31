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
            reg PO_PU;  
            wire F_E_FLAG;
            wire [15:0]OUT_DATA;
            
            FIFO INSTACE_FIFO(CLK,IN_DATA,CLEAR,PO_PU,F_E_FLAG,OUT_DATA);
            
            initial begin
            CLK=0; CLEAR =1;IN_DATA=0'h00ab;
            #100  IN_DATA=0'habcd; PO_PU=1; CLEAR=0;
            #100  IN_DATA=0'ha000; PO_PU=0;
            #100  IN_DATA=0'ha000; PO_PU=1;  
            #100  IN_DATA=0'ha000; PO_PU=0;
            
            end;
            //Clock generator 
            always forever
                #50 CLK=~CLK; 
endmodule
