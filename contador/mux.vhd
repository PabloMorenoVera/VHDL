----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:29:38 02/08/2019 
-- Design Name: 
-- Module Name:    mux - Behavioral 
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

entity mux is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  CLK_lento : in STD_LOGIC_VECTOR (1 downto 0);
           decimas : in  STD_LOGIC_VECTOR (3 downto 0);
           segundos : in  STD_LOGIC_VECTOR (3 downto 0);
           dec_segundos : in  STD_LOGIC_VECTOR (3 downto 0);
           minutos : in  STD_LOGIC_VECTOR (3 downto 0);
           seg : out  STD_LOGIC_VECTOR (3 downto 0);
			  disp : out STD_LOGIC_VECTOR (3 downto 0));
end mux;

architecture Behavioral of mux is

begin
P_MUX : process(reset, clk, decimas, segundos, dec_segundos, minutos, CLK_lento)
begin
	if clk'event and clk = '1' then
		case CLK_lento is
		when "00" =>
			seg <= decimas;
			disp <= "0111";
		when "01" =>
			seg <= segundos;
			disp <= "1011";
		when "10" =>
			seg <= dec_segundos;
			disp <= "1101";
		when "11" =>
			seg <= minutos;
			disp <= "1110";
		when OTHERS =>
			seg <= "1111";
			disp <= "1111";
		end case;
	end if;
end process;
end Behavioral;

