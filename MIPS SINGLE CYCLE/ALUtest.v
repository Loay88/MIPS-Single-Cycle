`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:23:54 03/07/2022
// Design Name:   ALU_LM_19101664
// Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/ALUtest.v
// Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_LM_19101664
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALUtest;

	// Inputs
	reg [31:0] A;
	reg [31:0] B;
	reg [3:0] op;

	// Outputs
	wire [31:0] res;
	wire zeroFlag;

	// Instantiate the Unit Under Test (UUT)
	ALU_LM_19101664 uut (
		.A(A), 
		.B(B), 
		.op(op), 
		.res(res), 
		.zeroFlag(zeroFlag)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 1;
		op = 0;
		#100;
		
      A = 1;
		B = 0;
		op = 1;
		#100;
		
		A = 3;
		B = 2;
		op = 2;
		#100;
		
		A = 15;
		B = 10;
		op = 6;
		#100;
		
		A = 10;
		B = 5;
		op = 7;
		#100;
		
		A = 8;
		B = 12;
		op = 7;
		#100;
		
		A = 17;
		B = 13;
		op = 12;
		#100;

		// Add stimulus here

	end
      
endmodule

