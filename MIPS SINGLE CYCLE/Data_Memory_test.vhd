--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:24:46 04/04/2022
-- Design Name:   
-- Module Name:   D:/MIPS_SINGLE_CYCLE_LM_19101664/Data_Memory_test.vhd
-- Project Name:  MIPS_SINGLE_CYCLE_LM_19101664
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Data_Memory_LM_19101664
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
 
ENTITY Data_Memory_test IS
END Data_Memory_test;
 
ARCHITECTURE behavior OF Data_Memory_test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Data_Memory_LM_19101664
    PORT(
         add : IN  std_logic_vector(31 downto 0);
         w_data : IN  std_logic_vector(31 downto 0);
         r_data : OUT  std_logic_vector(31 downto 0);
         mem_w : IN  std_logic;
         mem_r : IN  std_logic;
         clk : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal add : std_logic_vector(31 downto 0) := (others => '0');
   signal w_data : std_logic_vector(31 downto 0) := (others => '0');
   signal mem_w : std_logic := '0';
   signal mem_r : std_logic := '0';
   signal clk : std_logic := '0';

 	--Outputs
   signal r_data : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Data_Memory_LM_19101664 PORT MAP (
          add => add,
          w_data => w_data,
          r_data => r_data,
          mem_w => mem_w,
          mem_r => mem_r,
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
		add<=x"00000000";
		mem_w <= '0';
		mem_r <= '1';
		wait for 100 ns;
		
		add<=x"00000004";
		w_data <= x"00000000";
		mem_w <= '1';
		mem_r <= '0';
		wait for 100 ns;

      wait;
   end process;

END;
