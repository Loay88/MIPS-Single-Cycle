----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:06:22 05/18/2022 
-- Design Name: 
-- Module Name:    LM_Mux32_2_19101664 - Behavioral 
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

entity LM_Mux32_2_19101664 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end LM_Mux32_2_19101664;

architecture Behavioral of LM_Mux32_2_19101664 is

begin

process(s,in1,in2) begin 
if s='0' then 
outt <=in1;
elsif s='1' then 
outt <= in2;
end if ;
end process;

end Behavioral;

