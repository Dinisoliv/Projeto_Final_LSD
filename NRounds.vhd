library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity NRounds is
	port(clk : in std_logic;
		  enable : in std_logic;
		  roundIn : in std_logic_vector(4 downto 0);
		  roundOut : out std_logic_vector(4 downto 0));
end NRounds;

architecture Behavioral of NRounds is
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (enable = '1') then
				if roundIn = "0000" then
					roundOut <= "1000";
				else
					roundOut <= roundIn;
				end if;
			end if;
		end if;
end process;
end Behavioral;	