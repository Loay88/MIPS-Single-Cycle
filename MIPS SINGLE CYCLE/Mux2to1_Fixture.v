`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:57:45 02/28/2022
// Design Name:   Mux2to1_LM_19101664
// Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/Mux2to1_Fixture.v
// Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux2to1_LM_19101664
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux2to1_Fixture;

	// Inputs
	reg S0;
	reg I0;
	reg I1;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	Mux2to1_LM_19101664 uut (
		.S0(S0), 
		.I0(I0), 
		.I1(I1), 
		.Y(Y)
	);

	initial begin
		// Initialize Inputs
		S0 = 0;
		I0 = 0;
		I1 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

		S0 = 1;
		I0 = 0;
		I1 = 1;
		#100;
		S0 = 0;
		I0 = 1;
		I1 = 1;
		#100;
	end
      
endmodule

