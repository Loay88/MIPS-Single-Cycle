--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:52:29 05/18/2022
-- Design Name:   
-- Module Name:   C:/AAST/Term 6/Computer Architechture/Lab/MIPS_SINGLE_CYCLE_LM_19101664/inst_mem_test.vhd
-- Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: InstructionMem_LM_19101664
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
 
ENTITY inst_mem_test IS
END inst_mem_test;
 
ARCHITECTURE behavior OF inst_mem_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT InstructionMem_LM_19101664
    PORT(
         Address : IN  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         Instruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Address : std_logic_vector(31 downto 0) := (others => '0');
   signal clk : std_logic := '0';

 	--Outputs
   signal Instruction : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: InstructionMem_LM_19101664 PORT MAP (
          Address => Address,
          clk => clk,
          Instruction => Instruction
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
		Address <=X"00000000";
		 
		wait for 100 ns;
		Address <=X"00000004";
		
		
      wait for 100 ns;

      wait;
   end process;

END;
