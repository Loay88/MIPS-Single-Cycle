`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:12:44 03/14/2022
// Design Name:   ALU_Control_LM_19101664
// Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/ALU_Control_test.v
// Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Control_LM_19101664
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Control_test;

	// Inputs
	reg [5:0] funcfield;
	reg [1:0] ALUop;

	// Outputs
	wire [3:0] ALUoperation;

	// Instantiate the Unit Under Test (UUT)
	ALU_Control_LM_19101664 uut (
		.funcfield(funcfield), 
		.ALUop(ALUop), 
		.ALUoperation(ALUoperation)
	);

	initial begin
		
		funcfield = 0;
		ALUop = 0;
		#100;
		
		ALUop=1; #100;
		ALUop= 2; #100;
		funcfield= 2; #100;
		funcfield= 4; #100;
		funcfield= 5; #100;
		funcfield= 10; #100;
		ALUop = 3; #100;
		funcfield =2 ; #100;
        

	end
      
endmodule

