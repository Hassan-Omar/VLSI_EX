`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2019 06:54:21 PM
// Design Name: 
// Module Name: FIFO
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


module FIFO(input CLK, 
            input[15:0]IN_DATA,
            input CLEAR,
            input R,
            input W,  
            output EMPTY, 
            output FULL , 
            output [15:0]OUT_DATA);
       
      // this to hold the LAST ADDRESS OF THE QUEUE 
      reg [7:0]Head;
      reg [7:0]Tail;
      // define array of regs to hold      
      reg [15:0] RAM [127:0];
      always@(posedge CLK) begin
          if(CLEAR) begin
            Head=0; Tail=0;
          end
          else begin
            Head=Head;  Tail=Tail;  
          end
          //+++++++++++++++++++++++++++++++++
          if(W) begin 
             Tail=Tail+1; 
             RAM[Tail]=IN_DATA;
          end
          else
          Tail=Tail;
          //+++++++++++++++++++++++++++++++++
          if(R) begin
              // I think i will need to check if head , tail > 0 
              Head=Head+1;
          end
          else
          Head=Head;
          //+++++++++++++++++++++++++++++++++

      end; 
    
     //discrimination between full & empty states needs a trick
           reg isIncrement;
           always @(posedge CLK)
           begin
              if(CLEAR==1)
                  isIncrement<=0;
              else if(R==1&&W==0)
                  isIncrement<=0;
              else if(W==1&&R==1'b0)
                  isIncrement<=1;
           end
           
           assign FULL= (Head==Tail)& isIncrement;
           assign EMPTY= (Head==Tail)& !isIncrement;
           assign OUT_DATA=RAM[Head];           
      
endmodule
