`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2019 05:54:01 PM
// Design Name: 
// Module Name: UUT
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


module UUT(

    );
   /* reg [31:0] X; wire [31:0] Y; reg CLK;
    OmegaNetwork uut(X,CLK,Y);
    initial begin
             X=32'b0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
        CLK=1;
        #100 X=32'b0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
        #100 X=32'b0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz;
        #100 X=32'b1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
        #100 X=32'b1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
        #100 X=32'b0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
        #100 X=32'b0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
        #100 X=32'b0zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
        #100 X=32'b1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
        #100 X=32'b1zzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
        #100 X=32'bzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzzz; 
    end 
    always forever #50 CLK=~CLK; */
    
    
    
    //___________________________________
    
    reg [7:0] X; wire [7:0] Y; reg CLK;
    OmegaNetwork uut(X,CLK,Y);
    initial begin
        CLK=1;
             X[2]=0;
        #100 X[2]=0;
        #100 X[2]=0;
        
        #100 X[2]=1;
      
     

    end
    
    always forever #50 CLK=~CLK;
endmodule
