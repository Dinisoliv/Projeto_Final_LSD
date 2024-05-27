library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreeRun is
	port(clk   : in std_logic;
		  reset : in std_logic;
		  start : in std_logic;
		  don   : out std_logic_vector(7 downto 0);
		  counter : out std_logic_vector(7 downto 0));
end FreeRun;

architecture Behavioral of FreeRun is
	signal free_run_counter : unsigned(7 downto 0) := (others => '0');
	signal random_value     : std_logic_vector(7 downto 0) := (others => '0');
begin
	process(clk)
	begin
		if rising_edge(clk) then
			if reset = '1' then
            free_run_counter <= (others => '0');
        else
            free_run_counter <= unsigned(free_run_counter) + 1;
			end if;
		end if;
   end process;
	
	process(start)
	begin
		if rising_edge(start) then
			random_value <= std_logic_vector(free_run_counter);
		end if;
	end process;
	
	don <= random_value;
	counter <= std_logic_vector(free_run_counter);
end Behavioral;