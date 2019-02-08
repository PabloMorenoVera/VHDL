----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:25:27 02/04/2019 
-- Design Name: 
-- Module Name:    slow_clock - Behavioral 
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

entity slow_clock is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           CLK_lento : out  STD_LOGIC);
end slow_clock;

architecture Behavioral of slow_clock is

signal cuenta : natural range 0 to 2**16-1;
constant cfincuenta : natural := 50000;
signal clk_out : std_logic;

begin
P_conta1mseg: Process (reset, clk) 
  begin 
    if reset = '1' then 
      cuenta <= 0; 
      clk_out <= '0'; 
    elsif clk'event and clk = '1' then 
      if cuenta = cfincuenta-1 then 
        cuenta <= 0; 
        clk_out <= not clk_out; 
      else 
        cuenta <= cuenta + 1; 
      end if; 
    end if;
	 CLK_lento <= clk_out;
  end process;  

end Behavioral;

