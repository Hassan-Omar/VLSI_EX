`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2019 06:45:17 PM
// Design Name: 
// Module Name: Micro
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

// ________________________ RAM Module__________________________

module RAM (input CLK ,input WR, input [3:0] ADDRESS , input [7:0]DATA_IN , output [7:0] DATA_OUT);
    // our Ram is 15 bits * 8 bits 
	// Declare the RAM variable
    reg [7:0] ram[15:0];
    
    // Variable to hold the registered read address
    reg [3:0] addr_reg;    
    always @ (posedge CLK) begin
        if(WR)begin
            ram[ADDRESS] = DATA_IN;
            end
        else
            begin 
            ram[ADDRESS] = ram[ADDRESS];
            addr_reg = ADDRESS;
            end;
    end;
    assign DATA_OUT = ram[addr_reg];
endmodule ; 


module single_port_ram
(
	input [7:0] data,
	input [5:0] addr,
	input we, clk,
	output [7:0] q
);

	// Declare the RAM variable
	reg [7:0] ram[63:0];
	
	// Variable to hold the registered read address
	reg [5:0] addr_reg;
	
	always @ (posedge clk)
	begin
	// Write
		if (we)
			ram[addr] <= data;
		
		addr_reg <= addr;
		
	end
		
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign q = ram[addr_reg];
	
endmodule

