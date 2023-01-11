----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:08:19 02/28/2022 
-- Design Name: 
-- Module Name:    Mux4to1_LM_19101664 - Behavioral 
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

entity Mux4to1_LM_19101664 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S0 : in  STD_LOGIC;
           S1 : in  STD_LOGIC;
			  outputt : out STD_LOGIC);
end Mux4to1_LM_19101664;

architecture Behavioral of Mux4to1_LM_19101664 is
component Mux2to1_LM_19101664 is
    Port ( S0 : in  STD_LOGIC;
           I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end component;
signal sig1: STD_LOGIC;
signal sig2: STD_LOGIC;

begin
m1: Mux2to1_LM_19101664 port map( I0 =>I0, I1=>I1,S0=>S0,Y=>sig1);
m2: Mux2to1_LM_19101664 port map( I0 =>I2, I1=>I3,S0=>S0,Y=>sig2);
m3: Mux2to1_LM_19101664 port map( I0 =>sig1, I1=>sig2,S0=>S1,Y=>outputt);

end Behavioral;

