----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:53:46 02/28/2022 
-- Design Name: 
-- Module Name:    Mux2to1_LM_19101664 - Behavioral 
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

entity Mux2to1_LM_19101664 is
    Port ( S0 : in  STD_LOGIC;
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end Mux2to1_LM_19101664;

architecture Behavioral of Mux2to1_LM_19101664 is
begin
process (I0,I1,S0)

begin
if S0='0' then
	Y<=I0;
	else
	Y<=I1;
end if;
	
end process;
end Behavioral;

