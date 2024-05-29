library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity RandomDownCounter is
    port(clk    : in std_logic;
        load   : in std_logic;
        down   : in std_logic;
        dataIn : in std_logic_vector(11 downto 0);
        zero   : out std_logic);
end RandomDownCounter;

architecture Behavioral of RandomDownCounter is
    signal s_count : unsigned(11 downto 0);
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if (load = '1') then
                s_count <= unsigned(dataIn);  
            elsif (down = '1') then
                s_count <= s_count - 1;  
            end if;
        end if;
    end process;

    zero <= '1' when s_count = 0 else '0';  
end Behavioral;
