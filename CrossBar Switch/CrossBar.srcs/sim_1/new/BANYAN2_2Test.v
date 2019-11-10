`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2019 07:25:41 PM
// Design Name: 
// Module Name: CrossBar2_2Test
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


module CrossBar2_2Test( );
reg s ,x1,x2;
wire y1,y2;
CrossBar2_2 instance_Cross(s,x1,x2,y1,y2);
initial begin
s=0; x1=1; x2=0 ;
#100 s=1; x1=1; x2=0 ;
#100 s=1; x1="z"; x2=0 ;
#100 s=1; x1=1; x2="z" ;
#100 s=0; x1="z"; x2=0 ;

end
endmodule
