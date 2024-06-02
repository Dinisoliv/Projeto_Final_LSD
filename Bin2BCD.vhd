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
	signal s_unitsOut    : unsigned(15 downto 0);
	signal s_tenthsinter : unsigned(15 downto 0);
	signal s_thousHund   : unsigned(15 downto 0);
	signal s_tenthsOut   : unsigned(15 downto 0);
	signal s_hundredsOut : unsigned(15 downto 0);
	signal s_thousandsOut: unsigned(15 downto 0); 

begin
	s_dataIn       <= unsigned(dataIn);
	s_unitsOut     <= s_dataIn rem 10;
	s_tenthsinter  <= s_dataIn / 10;
	s_tenthsOut    <= s_tenthsinter rem 10;
	s_thousHund    <= s_tenthsinter / 10;
	s_hundredsOut  <= s_thousHund rem 10;
	s_thousandsOut <= s_thousHund / 10;

	unitsOut    <= std_logic_vector(s_unitsOut(3 downto 0));
	tenthsOut   <= std_logic_vector(s_tenthsOut(3 downto 0));
	hundredsOut <= std_logic_vector(s_hundredsOut(3 downto 0));
	thousandsOut <= std_logic_vector(s_thousandsOut(3 downto 0));
end Behavioral;
