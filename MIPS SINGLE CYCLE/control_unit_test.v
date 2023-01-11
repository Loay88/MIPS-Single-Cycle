`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:05:47 03/21/2022
// Design Name:   ControlUnit_LM_19101664
// Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/control_unit_test.v
// Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit_LM_19101664
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module control_unit_test;

	// Inputs
	reg [5:0] operation;

	// Outputs
	wire regdst;
	wire ALUsrc;
	wire MemtoReg;
	wire RegWrite;
	wire MemRead;
	wire MemWrite;
	wire Branch;
	wire [1:0] ALUop;

	// Instantiate the Unit Under Test (UUT)
	ControlUnit_LM_19101664 uut (
		.operation(operation), 
		.regdst(regdst), 
		.ALUsrc(ALUsrc), 
		.MemtoReg(MemtoReg), 
		.RegWrite(RegWrite), 
		.MemRead(MemRead), 
		.MemWrite(MemWrite), 
		.Branch(Branch), 
		.ALUop(ALUop)
	);

	initial begin
		// Initialize Inputs
		operation = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		operation = 6'b100011; #100;
		operation = 6'b101011; #100;
		operation = 6'b000100; #100;

	end
      
endmodule

