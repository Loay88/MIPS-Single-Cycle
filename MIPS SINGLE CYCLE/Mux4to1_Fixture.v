`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:26:55 02/28/2022
// Design Name:   Mux4to1_LM_19101664
// Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/Mux4to1_Fixture.v
// Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Mux4to1_LM_19101664
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Mux4to1_Fixture;

	// Inputs
	reg I0;
	reg I1;
	reg I2;
	reg I3;
	reg S0;
	reg S1;

	// Outputs
	wire outputt;

	// Instantiate the Unit Under Test (UUT)
	Mux4to1_LM_19101664 uut (
		.I0(I0), 
		.I1(I1), 
		.I2(I2), 
		.I3(I3), 
		.S0(S0), 
		.S1(S1), 
		.outputt(outputt)
	);

	initial begin
		// Initialize Inputs
		I0 = 1;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		S0 = 0;
		S1 = 0;
		#100;
        
		// Add stimulus here

		I0 = 0;
		I1 = 0;
		I2 = 0;
		I3 = 1;
		S0 = 1;
		S1 = 1;
		#100;
        
		I0 = 0;
		I1 = 0;
		I2 = 1;
		I3 = 0;
		S0 = 0;
		S1 = 1;
		#100;
      I0 = 0;
		I1 = 1;
		I2 = 0;
		I3 = 0;
		S0 = 1;
		S1 = 0;
		#100;
		I0 = 1;
		I1 = 0;
		I2 = 0;
		I3 = 0;
		S0 = 1;
		S1 = 0;
		#100;
        
	end
      
endmodule

