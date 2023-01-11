----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:00:23 04/04/2022 
-- Design Name: 
-- Module Name:    Data_Memory_LM_19101664 - Behavioral 
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

entity Data_Memory_LM_19101664 is
    Port ( add : in  STD_LOGIC_VECTOR (31 downto 0);
           w_data : in  STD_LOGIC_VECTOR (31 downto 0);
           r_data : out  STD_LOGIC_VECTOR (31 downto 0);
           mem_w : in  STD_LOGIC;
           mem_r : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end Data_Memory_LM_19101664;

architecture Behavioral of Data_Memory_LM_19101664 is
type mem is array ( 0 to 127 ) of STD_LOGIC_VECTOR (7 downto 0);
signal data_memory: mem := (
x"AB" , x"CD", x"EF" ,x"00",
x"75" , x"74", x"65" ,x"72",
x"20" , x"41", x"72" ,x"63",
x"68" , x"69", x"74" ,x"65",
x"12" , x"34", x"56" ,x"78",
x"7F" ,x"7F", x"6D" ,x"6D",
x"00" , x"00",x"00" ,x"00",
x"78" , x"78", x"6A" ,x"6A",
x"00" , x"00", x"00" ,x"01",
x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",
x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",
x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",
x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",
x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",
x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00",x"00" , x"00", x"00" ,x"00");
begin
process (mem_w , mem_r ,clk,add , w_data)
	begin
		if mem_r ='1' and mem_w = '0' then
			r_data(31 downto 24) <= data_memory(to_integer(unsigned(add)));
			r_data(23 downto 16) <= data_memory(to_integer(unsigned(add))+1);
			r_data(15 downto 8) <= data_memory(to_integer(unsigned(add))+2);
			r_data(7 downto 0) <= data_memory(to_integer(unsigned(add))+3);
		elsif rising_edge(clk) and mem_r = '0' and mem_w = '1' then
			data_memory(to_integer(unsigned(add))) <= w_data(31 downto 24);
			data_memory(to_integer(unsigned(add))+1) <= w_data(23 downto 16);
			data_memory(to_integer(unsigned(add))+2) <= w_data(15 downto 8);
			data_memory(to_integer(unsigned(add))+3) <= w_data(7 downto 0);
			end if;
	end process;
	
end Behavioral;

