----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:37:08 02/03/2019 
-- Design Name: 
-- Module Name:    fulladdbit - Behavioral 
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

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY fulladdbit IS
Port (   p0 : in STD_LOGIC;
			p1 : in STD_LOGIC;
			p2 : in STD_LOGIC;
			q0 : in STD_LOGIC;
			q1 : in STD_LOGIC;
			q2 : in STD_LOGIC;
			Rin : in STD_LOGIC;
			CLK : in STD_LOGIC;
			RST : in STD_LOGIC;
			seg : out  STD_LOGIC_VECTOR (6 downto 0);
			disp : out  STD_LOGIC_VECTOR (3 downto 0)
);
END fulladdbit;

ARCHITECTURE behavior OF fulladdbit IS

	-- Component Declaration for the Unit Under Test (UUT)
	COMPONENT sumbit
	Port ( Cin : in  STD_LOGIC;
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s1 : out  STD_LOGIC;
           Cout : out  STD_LOGIC
	);
	END COMPONENT;
	
	signal ST0 : STD_LOGIC;
	signal ST1 : STD_LOGIC;
	signal ST2 : STD_LOGIC;
	signal ST3 : STD_LOGIC;
	
	signal Cout1 : STD_LOGIC;
	signal Cout2 : STD_LOGIC;
	
	signal seg_a : STD_LOGIC_VECTOR (6 downto 0);
	signal seg_b : STD_LOGIC_VECTOR (6 downto 0);
	
	COMPONENT cod_display
	Port ( cod : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_a : out  STD_LOGIC_VECTOR (6 downto 0);
           seg_b : out  STD_LOGIC_VECTOR (6 downto 0)
	);
	END COMPONENT;
	
	signal CLK_lento : STD_LOGIC;
	
	COMPONENT slow_clock
	Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           CLK_lento : out  STD_LOGIC
	);
	END COMPONENT;
	
	COMPONENT display
	Port ( seg_a : in  STD_LOGIC_VECTOR (6 downto 0);
           cod_a : in  STD_LOGIC_VECTOR (3 downto 0);
           seg_b : in  STD_LOGIC_VECTOR (6 downto 0);
           cod_b : in  STD_LOGIC_VECTOR (3 downto 0);
			  clk_lento : in STD_LOGIC;
           clk : in  STD_LOGIC;
           seg : out  STD_LOGIC_VECTOR (6 downto 0);
           disp : out  STD_LOGIC_VECTOR (3 downto 0)
	);
	END COMPONENT;
	
BEGIN

SB1: sumbit PORT MAP (
a => p0,
b => q0,
Cin => Rin,
s1 => ST0,
Cout => Cout1);

SB2: sumbit PORT MAP (
a => p1,
b => q1,
Cin => Cout1,
s1 => ST1,
Cout => Cout2);

SB3: sumbit PORT MAP (
a => p2,
b => q2,
Cin => Cout2,
s1 => ST2,
Cout => St3);

CD: cod_display PORT MAP (
cod(0) => ST0,
cod(1) => ST1,
cod(2) => ST2,
cod(3) => ST3,
seg_a => seg_a,
seg_b => seg_b);

SLC: slow_clock PORT MAP (
reset => RST,
clk => CLK,
CLK_lento => CLK_lento
);

DIS: display PORT MAP (
seg_a => seg_a,
cod_a => "1110",
seg_b => seg_b,
cod_B => "1101",
clk_lento => CLK_lento,
CLK => clk,
seg => seg,
disp => disp);

	
END;