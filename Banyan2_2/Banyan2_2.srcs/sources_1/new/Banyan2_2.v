`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/15/2019 03:21:46 PM
// Design Name: 
// Module Name: Banyan2_2
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


module Banyan2_2(in_1, in_2, out_1, out_2, clk);
   input clk ;
    input in_1 ;
    input in_2 ;
    output reg out_1 ;
    output reg out_2 ;
    
    reg i1_o1 = 0 , i1_o2 = 0;
    reg i2_o1 = 0 , i2_o2 = 0;
    
    reg i1_o1_en = 0 , i1_o2_en = 0;
    reg i2_o1_en = 0 , i2_o2_en = 0;
    
    always@(posedge clk)
    begin
	
		#1
    
        if(~i1_o1 && ~i2_o1)
        begin
            if(~in_1 && ~i1_o2)
            begin
                i1_o1 = 1 ;
                i1_o2 = 0 ;
                i2_o1 = 0 ;
            end
            else if(~in_2 && ~i2_o2)
            begin
                i2_o1 = 1 ;
				i2_o2 = 0 ;
                i1_o1 = 0 ;
            end
        end        
    
		if(~i1_o2 && ~i2_o2)
        begin
            if(in_1 && ~i1_o1)
            begin
                i1_o2 = 1 ;
                i1_o1 = 0 ;
                i2_o2 = 0 ;
            end
            else if(in_2 && ~i2_o1)
            begin
                i2_o2 = 1 ;
                i2_o1 = 0 ;
                i1_o2 = 0 ;
            end
        end    
	
    end
        
    always@(posedge clk)
        begin
        
            if(i1_o1)
            begin
				i1_o1_en = 1 ;
                out_1 = in_1 ;
            end

            if(i1_o2)
            begin
				i1_o2_en = 1 ;
                out_2 = in_1 ;
            end
            
            if(i2_o1)
            begin
				i2_o1_en = 1 ;
                out_1 = in_2 ;
            end
            
            if(i2_o2)
            begin
				i2_o2_en = 1 ;
                out_2 = in_2 ;
            end
        
        end
		
		always@(*) begin
		
            if(i1_o1_en)
            begin
                out_1 = in_1 ;
            end

            if(i1_o2_en)
            begin
                out_2 = in_1 ;
            end
            
            if(i2_o1_en)
            begin
                out_1 = in_2 ;
            end
            
            if(i2_o2_en)
            begin
                out_2 = in_2 ;
            end
		
		end

endmodule


