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


module STAGE(
    input [31:0] INPUT_DATA,
    input [31:0] SELECTOR,
    output [31:0] OUTPUT_DATA
    );
    // declare 16 block of banyan switch 2 by 2 
    BANYAN2_2 BANYAN0(SELECTOR[31:30],INPUT_DATA[31],INPUT_DATA[30],OUTPUT_DATA[31],OUTPUT_DATA[30]);
    BANYAN2_2 BANYAN1(SELECTOR[29:28],INPUT_DATA[29],INPUT_DATA[28],OUTPUT_DATA[29],OUTPUT_DATA[28]);
    BANYAN2_2 BANYAN2(SELECTOR[27:26],INPUT_DATA[27],INPUT_DATA[26],OUTPUT_DATA[27],OUTPUT_DATA[26]);
    BANYAN2_2 BANYAN3(SELECTOR[25:24],INPUT_DATA[25],INPUT_DATA[24],OUTPUT_DATA[25],OUTPUT_DATA[24]);
    BANYAN2_2 BANYAN4(SELECTOR[23:22],INPUT_DATA[23],INPUT_DATA[22],OUTPUT_DATA[23],OUTPUT_DATA[22]);
    BANYAN2_2 BANYAN5(SELECTOR[21:20],INPUT_DATA[21],INPUT_DATA[20],OUTPUT_DATA[21],OUTPUT_DATA[20]);
    BANYAN2_2 BANYAN6(SELECTOR[19:18],INPUT_DATA[19],INPUT_DATA[18],OUTPUT_DATA[19],OUTPUT_DATA[18]);
    BANYAN2_2 BANYAN7(SELECTOR[17:16],INPUT_DATA[17],INPUT_DATA[16],OUTPUT_DATA[17],OUTPUT_DATA[16]);
    BANYAN2_2 BANYAN8(SELECTOR[15:14],INPUT_DATA[15],INPUT_DATA[14],OUTPUT_DATA[15],OUTPUT_DATA[14]);
    BANYAN2_2 BANYAN9(SELECTOR[13:12],INPUT_DATA[13],INPUT_DATA[12],OUTPUT_DATA[13],OUTPUT_DATA[12]);
    BANYAN2_2 BANYAN10(SELECTOR[11:10],INPUT_DATA[11],INPUT_DATA[10],OUTPUT_DATA[11],OUTPUT_DATA[10]);
    BANYAN2_2 BANYAN11(SELECTOR[9:8],INPUT_DATA[9],INPUT_DATA[8],OUTPUT_DATA[9],OUTPUT_DATA[8]);
    BANYAN2_2 BANYAN12(SELECTOR[7:6],INPUT_DATA[7],INPUT_DATA[6],OUTPUT_DATA[7],OUTPUT_DATA[6]);
    BANYAN2_2 BANYAN13(SELECTOR[6:5],INPUT_DATA[5],INPUT_DATA[4],OUTPUT_DATA[5],OUTPUT_DATA[4]);
    BANYAN2_2 BANYAN14(SELECTOR[4:3],INPUT_DATA[3],INPUT_DATA[2],OUTPUT_DATA[3],OUTPUT_DATA[2]);
    BANYAN2_2 BANYAN15(SELECTOR[2:1],INPUT_DATA[1],INPUT_DATA[0],OUTPUT_DATA[1],OUTPUT_DATA[0]);    
endmodule


//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

module FSM(input CLK,output [159:0] Controls);
endmodule

//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
module OmegaNetwork32by32(
    input [31:0] INPUT_DATA,
    input CLK,
    output [31:0] OUTPUT_DATA
    );
    // Declare all Stage in Omega network
    wire [31:0] Stage0_1Cables;
    wire [31:0] Stage1_2Cables;
    wire [31:0] Stage2_3Cables;
    wire [31:0] Stage3_4Cables;
    wire [31:0] Stage4_5Cables;
    wire [159:0] ControlLines; 
    
    FSM controller(CLK,ControlLines);
    // Create 
    STAGE Stage0(INPUT_DATA,ControlLines[159:128],Stage0_1Cables);
    STAGE Stage1(Stage0_1Cables,ControlLines[127:96],Stage1_2Cables);
    STAGE Stage2(Stage1_2Cables,ControlLines[95:64],Stage2_3Cables);
    STAGE Stage3(Stage2_3Cables,ControlLines[63:32],Stage3_4Cables);
    STAGE Stage4(Stage3_4Cables,ControlLines[31:0],OUTPUT_DATA);

    
    
endmodule
