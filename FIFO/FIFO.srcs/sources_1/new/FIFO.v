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
            input PO_PU,  
            output reg F_E_FLAG, 
            output reg [15:0]OUT_DATA);
       
      // this to hold the LAST ADDRESS OF THE QUEUE 
      reg [7:0]LastADD;
      reg [7:0]FirstADD;
      // define array of regs to hold      
      reg [15:0] RAM [127:0];
      always@(posedge CLK) begin
          if(PO_PU && (LastADD>0)) begin
          // this means we need to pope the first Value 
          OUT_DATA = RAM[FirstADD];
          // MOVE all towards 
          //for(pointer=0;pointer<LastADD;pointer=pointer+1)
          //begin
         // RAM[pointer]=RAM[pointer+1];
         // end
          FirstADD=FirstADD+1;
          end  
          else  begin 
            // this means we need to push new VAL
            RAM[LastADD]=IN_DATA;
            LastADD=LastADD+1;
         end 
         //++++++++++++++++++++++++++++++
         if(CLEAR)begin
            LastADD=1;
            FirstADD=0;
         end
         else 
            LastADD=LastADD; 
         //++++++++++++++++++++++++++++++
         if(LastADD==0)
            F_E_FLAG=0;
         else if (LastADD==127)
            F_E_FLAG=1; 
         else
            F_E_FLAG="z";
      end; 
endmodule
