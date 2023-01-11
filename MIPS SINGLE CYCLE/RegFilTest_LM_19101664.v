`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:08:48 03/28/2022
// Design Name:   RegisterFile_LM_19101664
// Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/RegFilTest_LM_19101664.v
// Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegisterFile_LM_19101664
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegFilTest_LM_19101664;

	// Inputs
	reg [4:0] readReg1_num;
	reg [4:0] readReg2_num;
	reg [4:0] writeRegnum;
	reg [31:0] writeData;
	reg regWrite;
	reg clk;

	// Outputs
	wire [31:0] readData1;
	wire [31:0] readData2;

	// Instantiate the Unit Under Test (UUT)
	RegisterFile_LM_19101664 uut (
		.readReg1_num(readReg1_num), 
		.readReg2_num(readReg2_num), 
		.writeRegnum(writeRegnum), 
		.writeData(writeData), 
		.regWrite(regWrite), 
		.readData1(readData1), 
		.readData2(readData2), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		readReg1_num = 0;
		readReg2_num = 0;
		writeRegnum = 0;
		writeData = 0;
		regWrite = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

