library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReactTimeFSM is
	port(clk     : in std_logic;
		  reset   : in std_logic;
		  Nrounds : in std_logic_vector(3 downto 0);
		  playerA : in std_logic;
		  playerB : in std_logic;
		  )
end ReactTimeFSM;

architecture Behavioral of ReactTimeFSM is
	type state is (INIT, CONF, PREP)
	signal PS, NS : state;
	signal s_Nrounds : std_logic_vector(3 downto 0);
begin
	sync_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if (reset = '1') then
				PS <= INIT;
			else
				PS <= NS;
			end if;
		end if;
	end process;
	
	comb_proc: process(PS)
	begin
		case PS is
			when INIT =>
				NS <= CONF;
			when Conf =>
				if Nrounds = "0000" then
					s_Nrounds <= "1000";
				else
					s_Nrounds <= Nrounds;
				end if;
				if playerB = '1' then
					NS <= PREP;
				end if;
			when PREP =>
			
			when =>
			
			when =>
			
			when others =>
				NS <= INIT;
		end case;
	end process;
end ReactTimeFSM;