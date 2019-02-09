----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:33:04 02/07/2019 
-- Design Name: 
-- Module Name:    fullcont - Behavioral 
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

entity fullcont is
Port (	clk : in std_logic;
			reset : in std_logic;
			segend : out  STD_LOGIC_VECTOR (6 downto 0);
			dispend : out  STD_LOGIC_VECTOR (3 downto 0)
		);
end fullcont;

architecture Behavioral of fullcont is

signal decimas : STD_LOGIC_VECTOR (3 downto 0);
signal segundos : STD_LOGIC_VECTOR (3 downto 0);
signal dec_segundos : STD_LOGIC_VECTOR (3 downto 0);
signal minutos : STD_LOGIC_VECTOR (3 downto 0);

COMPONENT cont
	Port (clk : in  STD_LOGIC;
			reset : in  STD_LOGIC;
			decimas : out STD_LOGIC_VECTOR (3 downto 0);
			segundos : out STD_LOGIC_VECTOR (3 downto 0);
			dec_segundos : out STD_LOGIC_VECTOR (3 downto 0);
			minutos : out STD_LOGIC_VECTOR (3 downto 0)
			);
END COMPONENT;

signal CLK_lento : STD_LOGIC_VECTOR (1 downto 0);
	
COMPONENT slow_clock
Port ( reset : in  STD_LOGIC;
		  clk : in  STD_LOGIC;
		  CLK_lento : out  STD_LOGIC_VECTOR (1 downto 0)
);
END COMPONENT;

signal seg : STD_LOGIC_VECTOR (3 downto 0);
signal disp : STD_LOGIC_VECTOR (3 downto 0);

COMPONENT mux
Port ( clk : in  STD_LOGIC;
			CLK_lento : in STD_LOGIC_VECTOR (1 downto 0);
         decimas : in  STD_LOGIC_VECTOR (3 downto 0);
         segundos : in  STD_LOGIC_VECTOR (3 downto 0);
         dec_segundos : in  STD_LOGIC_VECTOR (3 downto 0);
         minutos : in  STD_LOGIC_VECTOR (3 downto 0);
         seg : out  STD_LOGIC_VECTOR (3 downto 0);
			disp : out STD_LOGIC_VECTOR (3 downto 0)
);
END COMPONENT;

signal cod : STD_LOGIC_VECTOR (3 downto 0);
signal segout: STD_LOGIC_VECTOR (6 downto 0);

COMPONENT cod_display
Port (  cod : in  STD_LOGIC_VECTOR (3 downto 0);
		  segout : out  STD_LOGIC_VECTOR (6 downto 0)
);
END COMPONENT;

COMPONENT display
Port (  segout : in  STD_LOGIC_VECTOR (6 downto 0);
		  cod : in  STD_LOGIC_VECTOR (3 downto 0);
		  clk : in  STD_LOGIC;
		  segend : out  STD_LOGIC_VECTOR (6 downto 0);
		  dispend : out  STD_LOGIC_VECTOR (3 downto 0)
);
END COMPONENT;
begin

SB1: cont PORT MAP (
clk => clk,
reset => reset,
decimas => decimas,
segundos => segundos,
dec_segundos => dec_segundos,
minutos => minutos
);

SB2: slow_clock PORT MAP (
clk => clk,
reset => reset,
CLK_lento => CLK_lento
);

SB3: mux PORT MAP (
clk => clk,
CLK_lento => CLK_lento,
decimas => decimas,
segundos => segundos,
dec_segundos => dec_segundos,
minutos => minutos,
seg => seg,
disp => disp
);

SB4: cod_display PORT MAP (
cod => seg,
segout=> segout
);

SB5: display PORT MAP (
clk => clk,
segout => segout,
cod => disp,
segend => segend,
dispend => dispend
);

end Behavioral;

