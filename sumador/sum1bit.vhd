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
	
	COMPONENT cod_display
	Port ( Cin : in  STD_LOGIC;
           a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           s1 : out  STD_LOGIC;
           Cout : out  STD_LOGIC
	);
	END COMPONENT;
	
BEGIN

	-- Instantiate the Unit Under Test (UUT)
	uut: conta10 PORT MAP(
	Reset  =>  Reset,
	Clk    =>  Clk,
	cuenta => cuenta
	);
	
	tb : PROCESS
	BEGIN
	
	-- Wait 100 ns for global re
	set to finish
	wait for 100 ns;
	-- Place stimulus here
	wait; -- will wait forever
	END PROCESS;
	
END;