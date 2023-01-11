----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:34:13 05/07/2022 
-- Design Name: 
-- Module Name:    PC202_LM_19101664 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PC202_LM_19101664 is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end PC202_LM_19101664;

architecture Behavioral of PC202_LM_19101664 is
signal temp: STD_LOGIC_VECTOR (31 downto 0) :=x"00000000";
begin
process (clk,inp) begin
 if rising_edge (clk) then 
   outp  <= temp;
 end if;
 if falling_edge (clk) then
	temp <= inp;
 end if;
end process;


end Behavioral;

