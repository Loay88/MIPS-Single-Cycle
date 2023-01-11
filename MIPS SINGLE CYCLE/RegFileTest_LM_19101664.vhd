--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:13:13 03/28/2022
-- Design Name:   
-- Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/RegFileTest_LM_19101664.vhd
-- Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegisterFile_LM_19101664
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY RegFileTest_LM_19101664 IS
END RegFileTest_LM_19101664;
 
ARCHITECTURE behavior OF RegFileTest_LM_19101664 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegisterFile_LM_19101664
    PORT(
         readReg1_num : IN  std_logic_vector(4 downto 0);
         readReg2_num : IN  std_logic_vector(4 downto 0);
         writeRegnum : IN  std_logic_vector(4 downto 0);
         writeData : IN  std_logic_vector(31 downto 0);
         regWrite : IN  std_logic;
         readData1 : OUT  std_logic_vector(31 downto 0);
         readData2 : OUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal readReg1_num : std_logic_vector(4 downto 0) := (others => '0');
   signal readReg2_num : std_logic_vector(4 downto 0) := (others => '0');
   signal writeRegnum : std_logic_vector(4 downto 0) := (others => '0');
   signal writeData : std_logic_vector(31 downto 0) := (others => '0');
   signal regWrite : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal readData1 : std_logic_vector(31 downto 0);
   signal readData2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegisterFile_LM_19101664 PORT MAP (
          readReg1_num => readReg1_num,
          readReg2_num => readReg2_num,
          writeRegnum => writeRegnum,
          writeData => writeData,
          regWrite => regWrite,
          readData1 => readData1,
          readData2 => readData2,
          clk => clk
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here 
		readReg1_num <= "00000";
		readReg2_num <= "00001";
		wait for 100 ns;
		regWrite <= '1';
		writeRegnum <="01101";
		writeData <= x"12470000";
		wait for 100 ns;

      wait;
   end process;

END;
