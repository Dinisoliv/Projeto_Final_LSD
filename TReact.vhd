library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TReact is
	 generic (N : positive := 4;
				 Max : positive := 10);
    port(clk   : in std_logic;
        reset  : in std_logic;
        up     : in std_logic;
        count  : out std_logic_vector(N-1 downto 0);
		  maxReached    : out std_logic);
end TReact;

architecture Behavioral of TReact is

   signal s_count : unsigned(N-1 downto 0);

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                s_count <= (others => '0');
					 maxReached <= '0';
            elsif (up = '1') then
					if s_count < Max then
						s_count <= s_count + 1;
						maxReached <= '0';
               else
                  maxReached <= '1';
					end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(s_count);
end Behavioral;
