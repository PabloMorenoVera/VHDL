----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:32:25 02/07/2019 
-- Design Name: 
-- Module Name:    cont - Behavioral 
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

entity cont is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           decimas : out STD_LOGIC_VECTOR (3 downto 0);
			  segundos : out STD_LOGIC_VECTOR (3 downto 0);
			  dec_segundos : out STD_LOGIC_VECTOR (3 downto 0);
			  minutos : out STD_LOGIC_VECTOR (3 downto 0));
end cont;

architecture Behavioral of cont is
	signal cuenta : natural range 0 to 2**23-1;
	constant cfincuenta : natural := 5000000;
	signal s1decima : std_logic;
	signal s1seg : std_logic;
	signal s10seg : std_logic;
	signal s60seg : std_logic;
	signal ndecimas : unsigned (3 downto 0);
	signal nsegundos : unsigned (3 downto 0);
	signal ndecsegundos : unsigned (3 downto 0);
	signal nminutos : unsigned (3 downto 0);
begin

P_CONTA1DECIMA: Process (reset, clk)
begin
	if reset = '1' then
		cuenta <= 0;
		s1decima <= '0';
	elsif clk'event and clk = '1' then
		if cuenta = cfincuenta-1 then
			cuenta <= 0;
			s1decima <= '1';
		else
			s1decima <= '0';
			cuenta <= cuenta + 1;
		end if;
	end if;
end process;


P_CONTA10DECIMAS: Process (s1decima, reset, clk)
begin
	if reset = '1' then
		ndecimas <= (others => '0');
		s1seg <= '0';
	elsif clk'event and clk='1' then
		s1seg <= '0';
		if s1decima = '1' then
			if ndecimas = 9 then
				ndecimas <= (others => '0');
				s1seg <= '1';
			else
				ndecimas <= ndecimas + 1;
			end if;
		end if;
		decimas <= STD_LOGIC_VECTOR(ndecimas);
	end if;
end process;

P_CONTA10SEGUNDOS: Process (s1seg, reset, clk)
begin
	if reset = '1' then
		nsegundos <= (others => '0');
		s10seg <= '0';
	elsif clk'event and clk='1' then
		s10seg <= '0';
		if s1seg = '1' then
			if nsegundos = 9 then
				nsegundos <= (others => '0');
				s10seg <= '1';
			else
				nsegundos <= nsegundos + 1;
			end if;
		end if;
		segundos <= STD_LOGIC_VECTOR(nsegundos);
	end if;
end process;

P_CONTA6DEC_SEGUNDOS: Process (s1seg, reset, clk)
begin
	if reset = '1' then
		ndecsegundos <= (others => '0');
		s60seg <= '0';
	elsif clk'event and clk='1' then
		s60seg <= '0';
		if s10seg = '1' then
			if ndecsegundos = 5 then
				ndecsegundos <= (others => '0');
				s60seg <= '1';
			else
				ndecsegundos <= ndecsegundos + 1;
			end if;
		end if;
		dec_segundos <= STD_LOGIC_VECTOR(ndecsegundos);
	end if;
end process;

P_CONTA10MINUTOS: Process (s60seg, reset, clk)
begin
	if reset = '1' then
		nminutos <= (others => '0');
	elsif clk'event and clk='1' then
		if s60seg = '1' then
			if nminutos = 9 then
				nminutos <= (others => '0');
			else
				nminutos <= nminutos + 1;
			end if;
		end if;
		minutos <= STD_LOGIC_VECTOR(nminutos);
	end if;
end process;


end Behavioral;

