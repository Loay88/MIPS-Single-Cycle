----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:49:43 03/14/2022 
-- Design Name: 
-- Module Name:    ALU_Control_LM_19101664 - Behavioral 
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

entity ALU_Control_LM_19101664 is
    Port ( funcfield : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUoperation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALU_Control_LM_19101664;

architecture Behavioral of ALU_Control_LM_19101664 is
signal func : STD_LOGIC_VECTOR (3 downto 0);
begin
func <= funcField (3 downto 0);
process (funcfield,ALUop)
begin

	if(ALUop = "00") then
		ALUoperation <= "0010";
	elsif (ALUop = "01") then
		ALUoperation <="0110";
	elsif(ALUop="10") then
		if func="0000" then
			ALUoperation<= "0010";
	elsif(func="0010") then
		ALUoperation <= "0110" ;
	elsif(func="0100") then
		ALUoperation <= "0000" ;
	elsif(func="0101") then
		ALUoperation <= "0001" ;
	elsif(func="1010") then
		ALUoperation <= "0111" ;
	end if;
elsif ALUop = "11" then
	if func="0010" then
		ALUoperation <= "0110";
	elsif func = "1010" then
		ALUoperation<= "0111";
	end if;
end if;

end process;
end Behavioral;

