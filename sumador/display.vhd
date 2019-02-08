----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:17:55 02/04/2019 
-- Design Name: 
-- Module Name:    display - Behavioral 
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

entity display is
    Port ( seg_a : in  STD_LOGIC_VECTOR (6 downto 0);
           cod_a : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_b : in  STD_LOGIC_VECTOR (6 downto 0);
           cod_b : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk_lento : in STD_LOGIC;
           CLK : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           disp : out  STD_LOGIC_VECTOR (3 downto 0));
end display;

architecture Behavioral of display is

begin

P_displayed: process (clk)
begin
	if clk'event and clk = '1' then 
		if clk_lento = '0' then
			seg <= seg_a;
			disp <= cod_a;
		else
			seg <= seg_b;
			disp <= cod_b;
		end if;
	end if;
end process;

end Behavioral;

