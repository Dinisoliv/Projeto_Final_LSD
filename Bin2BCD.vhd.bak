library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port(dataIn_r    : in std_logic_vector(7 downto 0); -- Changed to 8 bits
		  dataIn_m    : in std_logic_vector(7 downto 0); -- Changed to 8 bits
		  unitsOut    : out std_logic_vector(3 downto 0);
		  tenthsOut   : out std_logic_vector(3 downto 0);
		  hundredsOut : out std_logic_vector(3 downto 0);
		  thousandsOut: out std_logic_vector(3 downto 0)); -- Added thousandsOut
end Bin2BCD;

architecture Behavioral of Bin2BCD is

	signal s_dataIn      : unsigned(15 downto 0); -- Changed to 16 bits
	signal s_unitsOut    : unsigned(3 downto 0);
	signal s_hundTen     : unsigned(15 downto 0); -- Changed to 16 bits
	signal s_tenthsOut   : unsigned(3 downto 0);
	signal s_hundredsOut : unsigned(3 downto 0);
	signal s_thousandsOut: unsigned(3 downto 0); -- Added signal for thousands

begin
	s_dataIn      <= unsigned(dataIn_m) & unsigned(dataIn_r);
	s_unitsOut    <= s_dataIn mod 10;
	s_hundTen     <= s_dataIn / 10;
	s_tenthsOut   <= s_hundTen mod 10;
	s_hundTen     <= s_hundTen / 10; -- Update s_hundTen for next calculation
	s_hundredsOut <= s_hundTen mod 10;
	s_thousandsOut <= s_hundTen / 10;

	unitsOut    <= std_logic_vector(s_unitsOut);
	tenthsOut   <= std_logic_vector(s_tenthsOut);
	hundredsOut <= std_logic_vector(s_hundredsOut);
	thousandsOut <= std_logic_vector(s_thousandsOut);
end Behavioral;
