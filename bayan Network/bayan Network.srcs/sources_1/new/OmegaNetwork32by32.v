`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2019 01:24:35 PM
// Design Name: 
// Module Name: OmegaNetwork32by32
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


//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
module OmegaNetwork32by32(
    input [31:0] INPUT_DATA,
    input CLK,
    output [31:0] OUTPUT_DATA
    );
    
    // define wires between stages    
    wire [31:0] s1wires;
    wire [31:0] s2wires;
    wire [31:0] s3wires;
    wire [31:0] s4wires;
   
    genvar i,k;
    generate  
        for(i=31; i<0; i=i-2)begin
            BANYAN2_2 instBANYANs1 (s1wires[i],s1wires[i-1],s2wires[i],s2wires[i-1]);
        end
    endgenerate   
     
endmodule
