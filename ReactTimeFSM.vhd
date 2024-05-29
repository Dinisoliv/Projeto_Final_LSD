library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReactTimeFSM is
	port(clk     : in std_logic;
		  reset   : in std_logic;
		  Nrounds : in std_logic_vector(3 downto 0);
		  playerA : in std_logic;
		  playerB : in std_logic;
		  );
end ReactTimeFSM;

architecture Behavioral of ReactTimeFSM is
	type state is (CONF, PREP, DELAY, STIM, REACT, SCORES, CONCLSN);
	signal PS, NS : state;
	
	signal s_Nrounds : std_logic_vector(3 downto 0);
	signal s_plyrAReady, s_plyrBReady : std_logic;
	signal s_FreeRun : std_logic_vector(11 downto 0);
	signal s_loadRandom, s_Stimulus : std_logic;
	signal s_winnerA : std_logic;
	signal s_ResetTReactA, s_startTReactA, s_stopTReactA, s_TreactA : std_logic;
	signal s_ResetTReactB, s_startTReactB, s_stopTReactB, s_TreactB: std_logic;

	
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
	
	ns_proc: process(PS)
	begin
		case PS is
			when CONF =>
				if playerB = '1' then
					NS <= PREP;
				end if;
				
			when PREP =>
				if (s_plyrAReady = '1') and (s_plyrBReady = '1') then
					NS <= STIM;
				end if;
			when DELAY =>
				if s_Stimulus = '1' then
					NS <= STIM;
				end if; --cond
				if (s_plyrAReady = '1') or (s_plyrBReady = '1') then
					NS <= CONCLSN;
				end if;
			when STIM =>
			
			when REACT =>
			
			when SCORES =>
			
			when CONCLSN =>
			
			when others =>
				NS <= INIT;
		end case;
	end process;
	
	comb_proc: process(PS)
	begin
    case PS is            
		when CONF =>
			if Nrounds = "0000" then
				s_Nrounds <= "1000";
			else
				s_Nrounds <= Nrounds;
			end if;

		when PREP =>
			if playerA = '1' then
				s_plyrAReady <= '1';
			end if;
			if playerB = '1' then 
				s_plyrBReady <= '1';
			end if;
			if (s_plyrAReady = '1') and (s_plyrBReady = '1') then
				s_loadRandom <= '1';
          end if;
		when DELAY =>
			s_loadRandom <= '0';
			s_delay <= '1';
			
		when STIM =>
			s_startTReactA <= '1'; 
			s_startTReactB <= '1';
		when REACT =>
			
		when SCORES =>
			
		when CONCLSN =>
            
      when others =>
            
    end case;
end process;

	random_counter: entity work.FreeRun(Behavioral)
		port map(clk => clk,
					don => s_FreeRun);
					
	random_downCounter : entity work.RandomDownCounter(Behavioral)
		port map(clk    => clk,
					load   => s_loadRandom,
					down   => s_delay,
					dataIn => s_FreeRun,
					zero   => s_Stimulus);
					
	TReact_A: entity work.TReact(Behavioral)
		port map(clk   => clk,
					reset => s_ResetTReactA,
					up    => s_startTReactA,
					stop  => s_stopTReactA,
					count => s_TreactA);
					
	TReact_B: entity work.TReact(Behavioral)
	port map(clk   => clk,
				reset => s_ResetTReactB,
				up    => s_startTReactB,
				stop  => s_stopTReactB,
				count => s_TreactB);
					
	

end ReactTimeFSM;