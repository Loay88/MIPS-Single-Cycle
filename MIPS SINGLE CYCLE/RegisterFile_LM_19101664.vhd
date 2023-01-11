----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:48:41 03/28/2022 
-- Design Name: 
-- Module Name:    RegisterFile_LM_19101664 - Behavioral 
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

entity RegisterFile_LM_19101664 is
    Port ( readReg1_num : in  STD_LOGIC_VECTOR (4 downto 0);
           readReg2_num : in  STD_LOGIC_VECTOR (4 downto 0);
           writeRegnum : in  STD_LOGIC_VECTOR (4 downto 0);
           writeData : in  STD_LOGIC_VECTOR (31 downto 0);
           regWrite : in  STD_LOGIC;
           readData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           readData2 : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
end RegisterFile_LM_19101664;

architecture Behavioral of RegisterFile_LM_19101664 is
type registerFile is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);
signal registers: registerFile :=(
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000005" , x"00000007" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" ,
x"00000000" , x"00000000" 
);
begin
process(regWrite , clk,readReg1_num,readReg2_num,writeRegnum,writeData)
begin
	readData1 <= registers(to_integer(unsigned(readReg1_num)));
	readData2 <= registers(to_integer(unsigned(readReg2_num)));
	if rising_edge(clk) and regWrite = '1' then
		registers(to_integer(unsigned(writeRegnum))) <= writeData;
		end if;
		end process;
end Behavioral;