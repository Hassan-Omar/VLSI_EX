`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2019 09:24:24 PM
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

reg [31:0] INPUT_DATA;
reg CLK;
wire [31:0] OUTPUT_DATA;

OmegaNetwork32by32 uut(INPUT_DATA,CLK,OUTPUT_DATA);

always forever #50 CLK=~CLK; 

initial begin 
INPUT_DATA=0;
#100 INPUT_DATA=00;
end

endmodule
