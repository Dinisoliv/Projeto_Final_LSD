library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReactTimeFSM is
	port(clk             : in std_logic;
		  reset           : in std_logic;
		  NRoundsInput    : in std_logic_vector(3 downto 0);
		  NRounds         : in std_logic_vector(3 downto 0);
		  PresentRounds   : in std_logic_vector(3 downto 0);
		  playerA         : in std_logic;
		  playerADeb      : in std_logic;
		  playerB         : in std_logic;
		  playerBDeb      : in std_logic;
		  stimulus        : in std_logic;
		  TotalTReact     : in std_logic_vector(N downto 0);
		  timerScoreOut   : in std_logic;
		  timerConclsnOut : in std_logic;
		  
		  
		  NroundsSave       : out std_logic;
		  enableNRounds     : out std_logic;
		  loadRandom        : out std_logic;
		  delayCounter      : out std_logic;
		  TReactStart       : out std_logic;
		  Enable_SumTReactA : out std_logic;
		  Enable_SumTReactB : out std_logic;
		  CountRound        : out std_logic;
		  timerScoreStart   : out std_logic;
		  averageTReact     : out std_logic_vector(13 downto 0);
		  timerConclsnStart : out std_logic;
		  );
end ReactTimeFSM;

architecture Behavioral of ReactTimeFSM is
	type state is (CONF, PREP, READY_A, READY_B, DELAY, STIM, REACT_A, REACT_B, INTER, SCORES, DESQA, DESQB, CONCLSN);
	signal PS, NS : state;
	
	signal s_winnerA, s_tie : std_logic;

	
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
	
	ns_out_proc: process(PS)
	begin
		case PS is
			when CONF =>
				enableNRounds => '1';
				NroundsSave <= NRoundsInput;
				if playerBDeb = '1' then
					enableNRounds => '0';
					NS <= PREP;
				end if;
				
			when PREP =>
				if (playerADeb = '1') then
					NS <= READY_A;
				elsif (playerBDeb = '1') then
					NS <= READY_B;
				end if;
				
			when READY_A =>
				if (playerBDeb = '1') then
					loadRandom <= '1';
					NS <= DELAY;
				end if;
					
			when READY_B =>
				if (playerADeb = '1') then
					loadRandom <= '1';
					NS <= DELAY;
				end if;
				
			when DELAY =>
				loadRandom <= '0';
				delayCounter <= '1';
				if stimulus = '1' then
					NS <= STIM;
					delayCounter <= '0';
				end if;
				
				if (playerA = '1') then
					NS <= DESQA;
				elsif ((playerB = '1') then
					NS <= DESQB;
				end if;
				
			when DESQA =>
				if (playerB = '1') then
					NS <= CONF;
					delayCounter <= '0';
				end if;
				if stimulus = '1' then
					delayCounter <= '0';
					s_winnerA <= '0';
					s_tie <= '0';
					NS <= CONCLSN;
					end if;
				
			when DESQB =>
				if (playerA = '1') then
					NS <= CONF;
					delayCounter <= '0';
				end if;
				
				if stimulus = '1' then
					delayCounter <= '0';
					s_winnerA <= '1';
					s_tie <= '0';
					NS <= CONCLSN;
				end if;
				
			when STIM =>
				TReactStartA <= '1';
				TReactStartB <= '1';

				if (playerA = '1') and (playerB = '1') then
					TReactStartA <= '0';
					Enable_SumTReactA <= '1';
					TReactStartB <= '0';
					Enable_SumTReactB <= '1';
					NS <= INTER;					

				elsif (playerA = '1') then
					TReactStartA <= '0';
					Enable_SumTReactA <= '1';
					NS <= REACT_A;
				
				elsif (playerB = '1') then
					TReactStartB <= '0';
					Enable_SumTReactB <= '1';
					NS <= REACT_B;
				end if;
			
			when REACT_A =>
				if (playerB = '1') then
					TReactStartB <= '0';
					Enable_SumTReactB <= '1';
					NS <= INTER;
				end if;
			
			when REACT_B =>
				if (playerA = '1') then			
					TReactStartA <= '0';
					Enable_SumTReactA <= '1';
					NS <= INTER;
				end if;
				
			when INTER =>
				CountRound <= '1';
				timerScoreStart <= '1';
				NS <= SCORES;
				
			when SCORES =>
				countRound <= '0';
				averageTReactA <= TotalTReactA / PresentRounds;
				averageTReactB	<= TotalTReactB / PresentRounds;
				
				--atualização dos 7 segs c/ aveg
				
				if timerScoreOut = '1' then
					if PresentRounds = NRounds then
						if averageTReactA > averageTReactB
							s_winnerA <= '1';
							s_tie     <= '0';
						elsif averageTReactA < averageTReactB
							s_winnerA <= '0';
							s_tie     <= '0';
						else
							s_tie     <= '1';
						end if;
						NS <= CONCLSN;
					else
						NS <= CONF;
					end if;
				
			when CONCLSN =>
				timerConclsnStart <= '1';
				--efeito luminoso pelos 5 segundos
				if timerConclsnOut <= '1' then
					NS <= CONF;
				end if;
			
			when others =>
				NS <= CONF;
		end case;
	end process;
	
	out_proc: process(PS)
	begin
		 case PS is            
					
			when others =>
					
		end case;
	end process;
end ReactTimeFSM;