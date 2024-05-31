library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin2BCD is
	port(dataIn      : in std_logic_vector(15 downto 0); 
		  unitsOut    : out std_logic_vector(3 downto 0);
		  tenthsOut   : out std_logic_vector(3 downto 0);
		  hundredsOut : out std_logic_vector(3 downto 0);
		  thousandsOut: out std_logic_vector(3 downto 0)); 
end Bin2BCD;

architecture Behavioral of Bin2BCD is

	signal s_dataIn      : unsigned(15 downto 0); 
	signal s_unitsOut    : unsigned(3 downto 0);
	signal s_hundTen     : unsigned(15 downto 0); 
	signal s_tenthsOut   : unsigned(3 downto 0);
	signal s_hundredsOut : unsigned(3 downto 0);
	signal s_thousandsOut: unsigned(3 downto 0); 

begin
	s_dataIn      <= unsigned(dataIn);
	s_unitsOut    <= s_dataIn mod 10;
	s_hundTen     <= s_dataIn / 10;
	s_tenthsOut   <= s_hundTen mod 10;
	s_hundTen     <= s_hundTen / 10;
	s_hundredsOut <= s_hundTen mod 10;
	s_thousandsOut <= s_hundTen / 10;

	unitsOut    <= std_logic_vector(s_unitsOut);
	tenthsOut   <= std_logic_vector(s_tenthsOut);
	hundredsOut <= std_logic_vector(s_hundredsOut);
	thousandsOut <= std_logic_vector(s_thousandsOut);
end Behavioral;
