----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:26 03/07/2022 
-- Design Name: 
-- Module Name:    ALU_LM_19101664 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_LM_19101664 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           op : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC_VECTOR (31 downto 0);
           zeroFlag : out  STD_LOGIC);
end ALU_LM_19101664;

architecture Behavioral of ALU_LM_19101664 is

begin
process (A,B,op)
begin
	if unsigned(A)=unsigned(B) then
		zeroFlag<='1';
	else
		zeroFlag<='0';
	end if;
	
	if op= "0000" then
		res <= A and B;
	elsif op= "0001" then
		res<= A or B;
	elsif op= "0010" then
		res<= STD_LOGIC_VECTOR(unsigned(A) + unsigned(B));	
	elsif op= "0110" then
		res<=  STD_LOGIC_VECTOR(unsigned(A) - unsigned(B));
	elsif op = "0111" then
		if unsigned(A)<unsigned(B) then res <=x"00000001";
		else res <= x"00000000" ;
		end if;
	elsif op = "1100" then
		res<= A nor B;
	else
		res<=x"00000000";
	end if;
end process;

end Behavioral;

