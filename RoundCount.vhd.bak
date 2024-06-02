library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RoundCount is
	port(clk    : in std_logic;
		  reset  : in std_logic;
		  up     : in std_logic;
		  count  : out std_logic_vector(3 downto 0));
end RoundCount;

architecture Behavioral of RoundCount is
	signal s_count : unsigned(3 downto 0);
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if (reset = '1') then
				s_count <= (others => '0');
			elsif (up = '1') then
				s_count <= s_count + 1;
			end if;
		end if;
	end process;
count <= std_logic_vector(s_count);
end Behavioral;