----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:57:25 03/21/2022 
-- Design Name: 
-- Module Name:    ControlUnit_LM_19101664 - Behavioral 
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

entity ControlUnit_LM_19101664 is
    Port ( operation : in  STD_LOGIC_VECTOR (5 downto 0);
           regdst : out  STD_LOGIC;
           ALUsrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUop : out  STD_LOGIC_VECTOR (1 downto 0));
end ControlUnit_LM_19101664;

architecture Behavioral of ControlUnit_LM_19101664 is

begin
process(operation)
begin
if(operation = "000000") then
regdst <='1';
ALUsrc <='0';
MemtoReg <='0';
RegWrite <='1';
MemRead <= '0';
MemWrite <= '0';
Branch <= '0';
ALUop<="10";
elsif(operation = "100011") then
regdst <='0';
ALUsrc <='1';
MemtoReg <='1';
RegWrite <='1';
MemRead <= '1';
MemWrite <= '0';
Branch <= '0';
ALUop<="00";
elsif(operation = "101011") then
regdst <='0';
ALUsrc <='1';
MemtoReg <='0';
RegWrite <='0';
MemRead <= '0';
MemWrite <= '1';
Branch <= '0';
ALUop<="00";
elsif(operation = "000100") then
regdst <='0';
ALUsrc <='0';
MemtoReg <='0';
RegWrite <='0';
MemRead <= '0';
MemWrite <= '0';
Branch <= '1';
ALUop<="01";
end if;
end process;
end Behavioral;

