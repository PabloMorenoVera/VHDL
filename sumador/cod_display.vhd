----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:14:32 02/04/2019 
-- Design Name: 
-- Module Name:    cod_display - Behavioral 
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

entity cod_display is
    Port ( cod : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_a : out  STD_LOGIC_VECTOR (6 downto 0);
           seg_b : out  STD_LOGIC_VECTOR (6 downto 0));
end cod_display;

architecture Behavioral of cod_display is

begin
seg_a <= "0000001" when cod="0000" else -- 0	
		   "1001111" when cod="0001" else -- 1	
		   "0010010" when cod="0010" else -- 2
		   "0000110" when cod="0011" else -- 3
		   "1001100" when cod="0100" else -- 4
		   "0100100" when cod="0101" else -- 5
		   "0000111" when cod="0110" else -- 6
		   "0001111" when cod="0111" else -- 7
		   "0000000" when cod="1000" else -- 8
		   "0000100" when cod="1001" else -- 9
		   "0000001" when cod="1010" else -- 10
		   "1001111" when cod="1011" else -- 11
		   "0010010" when cod="1100" else -- 12
		   "0000110" when cod="1101" else -- 13
		   "1001100" when cod="1110" else -- 14
		   "0100100" when cod="1111" else -- 15
		   "1111111";
		 
seg_b <= "1001111" when cod="1010" else -- 10	
			"1001111" when cod="1011" else -- 11
			"1001111" when cod="1100" else -- 12
			"1001111" when cod="1101" else -- 13
			"1001111" when cod="1110" else -- 14
			"1001111" when cod="1111" else -- 15
		   "0000001";

end Behavioral;

