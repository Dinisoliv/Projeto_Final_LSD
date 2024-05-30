library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ReactTimeFSM is
	port(clk             : in std_logic;
		  reset           : in std_logic;
		  NRoundsInput    : in std_logic_vector(3 downto 0);
		  NRounds         : in std_logic_vector(3 downto 0); --Total rounds to be done in which game
		  PresentRounds   : in std_logic_vector(3 downto 0);
		  playerA         : in std_logic;
		  playerADeb      : in std_logic;
		  playerB         : in std_logic;
		  playerBDeb      : in std_logic;
		  stimulus        : in std_logic;
		  TotalTReactA    : in std_logic_vector(15 downto 0); -- check this dimension
		  TotalTReactB    : in std_logic_vector(15 downto 0);
		  timerScoreOut   : in std_logic;
		  timerConclsnOut : in std_logic;
		  timerDesqOut    : in std_logic;
		  blink10Hz       : in std_logic;
		  
		  
		  NroundsSave       : out std_logic_vector(3 downto 0);
		  enableNRounds     : out std_logic;
		  loadRandom        : out std_logic;
		  delayCounter      : out std_logic;
		  TReactStartA      : out std_logic;
		  TReactStartB      : out std_logic;
		  Enable_SumTReactA : out std_logic;
		  Enable_SumTReactB : out std_logic;
		  CountRound        : out std_logic;
		  timerScoreStart   : out std_logic;
		  averageTReactA    : out std_logic_vector(13 downto 0);
		  averageTReactB    : out std_logic_vector(13 downto 0);
		  timerConclsnStart : out std_logic;
		  timerDesqStart    : out std_logic;
		  LEDRed            : out std_logic_vector(7 downto 0);
		  LEDGreen          : out std_logic_vector(15 downto 0);
		  Hex0, Hex1, Hex2  : out std_logic_vector(6 downto 0);
		  Hex3, Hex4, Hex5  : out std_logic_vector(6 downto 0);
		  Hex6, Hex7        : out std_logic_vector(6 downto 0));
end ReactTimeFSM;

architecture Behavioral of ReactTimeFSM is
	type state is (CONF, PREP, READY_A, READY_B, DELAY, STIM, REACT_A, REACT_B, INTER, SCORES, DESQA, DESQB, CONCLSN);
	signal PS, NS : state;
	
	signal s_winnerA, s_tie : std_logic;
	signal s_RoundsMissing  : integer;
	signal s_averageTReactA, s_averageTReactB : unsigned(13 downto 0);
	
begin
	sync_proc: process(clk)
	begin
		if(rising_edge(clk)) then
			if (reset = '1') then
				PS <= CONF;
			else
				PS <= NS;
			end if;
		end if;
	end process;
	
	ns_out_proc: process(PS)
	begin
		case PS is
			when CONF =>
				enableNRounds <= '1';
				NroundsSave <= NRoundsInput;
				
				Hex0 <= "0110001";
				Hex1 <= "0000001";
				Hex2 <= "1101010";
				Hex3 <= "0111000";
				Hex4 <= (others => '1');
				Hex5 <= (others => '1');
				Hex6 <= (others => '1');
				Hex7 <= (others => '1');


				if playerBDeb = '1' then
					LEDGreen <= (others => '1');
					s_RoundsMissing <= to_integer(unsigned(NRounds)) - to_integer(unsigned(PresentRounds));
					LEDRed(s_RoundsMissing downto 0) <= (others => '1'); 
					enableNRounds <= '0';
					NS <= PREP;
				end if;
				
			when PREP =>
				if PresentRounds = "0000" then				
					Hex0 <= "1110000";
					Hex1 <= "0110000";
					Hex2 <= "0100100";
					Hex3 <= "1110000";
					Hex4 <= (others => '1');
					Hex5 <= (others => '1');
					Hex6 <= (others => '1');
					Hex7 <= (others => '1');
				end if;
			
				if (playerADeb = '1') then
					LEDGreen(7 downto 4) <= (others => '0');
					NS <= READY_A;
				elsif (playerBDeb = '1') then
					LEDGreen(3 downto 0) <= (others => '0');
					NS <= READY_B;
				end if;
				
			when READY_A =>
				if (playerBDeb = '1') then
					loadRandom <= '1';
					LEDGreen(3 downto 0) <= (others => '0');
					NS <= DELAY;
				end if;
					
			when READY_B =>
				if (playerADeb = '1') then
					loadRandom <= '1';
					LEDGreen(7 downto 4) <= (others => '0');
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
				elsif (playerB = '1') then
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
					timerDesqStart <= '1';
					LEDGreen(7 downto 4) <= (others => '1');
					
					if timerDesqOut = '1' then
						NS <= CONCLSN;
					end if;
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
					timerDesqStart <= '1';
					LEDGreen(3 downto 0) <= (others => '1');
					
					if timerDesqOut = '1' then
						NS <= CONCLSN;
					end if;
				end if;
				
			when STIM =>
				LEDGreen(7 downto 0) <= (others => '1');
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
				 
				s_averageTReactA <= unsigned(TotalTReactA) / to_integer(unsigned(PresentRounds));
				s_averageTReactB <= unsigned(TotalTReactB) / to_integer(unsigned(PresentRounds));

						
				averageTReactA <= std_logic_vector(s_averageTReactA);
				averageTReactB <= std_logic_vector(s_averageTReactB);
				
				Hex0 <= averageTReactB(3 downto 0);
				Hex1 <= averageTReactB(7 downto 4);
				Hex2 <= averageTReactB(11 downto 8);
				Hex3 <= "00" & averageTReactB(13 downto 12);

				Hex4 <= averageTReactA(3 downto 0);
				Hex5 <= averageTReactA(7 downto 4);
				Hex6 <= averageTReactA(11 downto 8);
				Hex7 <= "00" & averageTReactA(13 downto 12);
				
				if timerScoreOut = '1' then
					if PresentRounds = NRounds then
						if s_averageTReactA > s_averageTReactB then
							s_winnerA <= '1';
							s_tie     <= '0';
						elsif s_averageTReactA < s_averageTReactB then
							s_winnerA <= '0';
							s_tie     <= '0';
						else
							s_tie     <= '1';
						end if;
						NS <= CONCLSN;
					else
						NS <= CONF;
					end if;
				end if;
				
			when CONCLSN =>
				timerConclsnStart <= '1';
				if s_tie = '1' then
					if blink10Hz = '1' then
						Hex0 <= "1111110";
						Hex1 <= "1111110";
						Hex2 <= "1111110";
						Hex3 <= "1111110";
						Hex4 <= "1111110";
						Hex5 <= "1111110";
						Hex6 <= "1111110";
						Hex7 <= "1111110";
					else
						Hex0 <= (others => '1');
						Hex1 <= (others => '1');
						Hex2 <= (others => '1');
						Hex3 <= (others => '1');
						Hex4 <= (others => '1');
						Hex5 <= (others => '1');
						Hex6 <= (others => '1');
						Hex7 <= (others => '1');
				end if;
				elsif s_winnerA = '0' then
					if blink10Hz = '1' then
						Hex0 <= averageTReactB(3 downto 0);
						Hex1 <= averageTReactB(7 downto 4);
						Hex2 <= averageTReactB(11 downto 8);
						Hex3 <= "00" & averageTReactB(13 downto 12);
					else
						Hex0 <= (others => '1');
						Hex1 <= (others => '1');
						Hex2 <= (others => '1');
						Hex3 <= (others => '1');
					end if;
				elsif s_winnerA = "1" then
					if blink10Hz = '1' then
						Hex4 <= averageTReactA(3 downto 0);
						Hex5 <= averageTReactA(7 downto 4);
						Hex6 <= averageTReactA(11 downto 8);
						Hex7 <= "00" & averageTReactA(13 downto 12);
					else
						Hex4 <= (others => '1');
						Hex5 <= (others => '1');
						Hex6 <= (others => '1');
						Hex7 <= (others => '1');
					end if;
				end if;
					
				if timerConclsnOut <= '1' then
					NS <= CONF;
				end if;
			
			when others =>
				NS <= CONF;
		end case;
	end process;
end Behavioral;