library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity TReact is
    port(clk    : in std_logic;
        reset  : in std_logic;
        up     : in std_logic;
		  stop   : in std_logic;
        count  : out std_logic_vector(11 downto 0));
end TReact;

architecture Behavioral of TReact is
    signal s_count : unsigned(11 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (reset = '1') then
                s_count <= (others => '0');
            elsif (up = '1') and (stop = '0') then
                s_count <= s_count + 1;
            end if;
        end if;
    end process;

    count <= std_logic_vector(s_count);
end Behavioral;
