library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ReactTimeFSM is
	port(clk             : in std_logic;
		  reset           : in std_logic;
		  NRounds         : in std_logic_vector(3 downto 0); --Total rounds to be done in which game
		  PresentRounds   : in std_logic_vector(3 downto 0);
		  playerA         : in std_logic;
		  playerADeb      : in std_logic;
		  playerB         : in std_logic;
		  playerBDeb      : in std_logic;
		  stimulus        : in std_logic;
		  timerScoreOut   : in std_logic;
		  timerConclsnOut : in std_logic;
		  timerDesqOut    : in std_logic;
		  blink10Hz       : in std_logic;
		  winnerA			: in std_logic;
		  tie 				: in std_logic;
		  
		  resetRoundCount   : out std_logic; 
		  resetTReactSumA	  : out std_logic; 
		  resetTReactSumB   : out std_logic; 
		  resetTReactCountA : out std_logic; 
		  resetTReactCountB : out std_logic;
		  NroundsSave       : out std_logic_vector(3 downto 0);
		  enableNRounds     : out std_logic; 
		  loadRandom        : out std_logic; 
		  delayCounter      : out std_logic; 
		  TReactStartA      : out std_logic;
		  TReactStartB      : out std_logic;
		  Enable_SumTReactA : out std_logic;
		  Enable_SumTReactB : out std_logic; 
		  CountRound        : out std_logic;
		  DesQA				  : out std_logic;
		  DesQB				  : out std_logic;
		  timerScoreStart   : out std_logic;
		  timerConclsnStart : out std_logic; 
		  timerDesqStart    : out std_logic; 
		  LEDRed            : out std_logic_vector(15 downto 0); 
		  LEDGreen          : out std_logic_vector(7 downto 0);
		  charEnable        : out std_logic;
		  charSelect        : out std_logic;
		  enableHyphen      : out std_logic;
		  enableHexA        : out std_logic;
		  enableHexB        : out std_logic);
end ReactTimeFSM;

architecture Behavioral of ReactTimeFSM is
	type state is (INIT, CONF, PREP, READY_A, READY_B, DELAY, STIM, REACT_A, REACT_B, INTER, SCORES, DESQUA_A, DESQUA_B, CONCLSN);
	signal PS, NS : state;
	
	signal s_RoundsMissing  : integer;
	
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
		NS <= PS;
		
		resetRoundCount   <= '0';
		resetTReactSumA   <= '0';
		resetTReactSumB   <= '0';
		enableNRounds     <= '0';
		charEnable        <= '0';
		charSelect        <= '0';
		enableHyphen      <= '0';
		resetTReactCountA <= '0';
		resetTReactCountB <= '0';
		loadRandom        <= '0';
		delayCounter      <= '0';
		CountRound        <= '0';
		TReactStartA      <= '0';
		TReactStartB      <= '0';
		Enable_SumTReactA <= '0';
		Enable_SumTReactB <= '0';
		timerScoreStart   <= '0';
		timerConclsnStart <= '0';
		timerDesqStart    <= '0';
		enableHexA 			<= '1';
		enableHexB 			<= '1';
		NroundsSave 		<= "0000";
		
		s_RoundsMissing <= to_integer(unsigned(NRounds)) - to_integer(unsigned(PresentRounds));
		if s_RoundsMissing >= 0 and s_RoundsMissing <= 16 then
			LEDRed(s_RoundsMissing downto 0) <= (others => '1'); 
			LEDRed(15 downto s_RoundsMissing + 1) <= (others => '0'); 
		else
			 LEDRed <= (others => '0'); 
		end if; 
		
		case PS is
			when INIT =>
				resetRoundCount <= '1';
				resetTReactSumA <= '1';
				resetTReactSumB <= '1';
				LEDRed(15 downto 0) <= (others => '0'); 
				NS <= CONF;
			
			when CONF =>
				
				enableNRounds <= '1';
				
				charEnable <= '1';
				charSelect <= '0';
				
				LEDRed(15 downto 0) <= (others => '0'); 
				
				if playerBDeb = '1' then
					LEDGreen <= (others => '1');
					NS <= PREP;
				end if;
				
			when PREP =>
				resetTReactCountA <= '1';
				resetTReactCountB <= '1';
				
				LEDGreen <= (others => '1');
				
				if PresentRounds = "0000" then				
					charEnable <= '1';
					charSelect <= '1';
				end if;
			
				if (playerADeb = '1') then
					LEDGreen(7 downto 4) <= (others => '0');
					NS <= READY_A;
				elsif (playerBDeb = '1') then
					LEDGreen(3 downto 0) <= (others => '0');
					NS <= READY_B;
				end if;
				
			when READY_A =>
				LEDGreen(3 downto 0) <= (others => '1');
			
				if (playerBDeb = '1') then
					loadRandom <= '1';
					LEDGreen(3 downto 0) <= (others => '0');
					NS <= DELAY;
				end if;
					
			when READY_B =>
				LEDGreen(7 downto 4) <= (others => '1');
			
				if (playerADeb = '1') then
					loadRandom <= '1';
					LEDGreen(7 downto 4) <= (others => '0');
					NS <= DELAY;
				end if;
				
			when DELAY =>
				delayCounter <= '1';
				
				if stimulus = '1' then
					NS <= STIM;
				end if;
				
				if (playerA = '1') then
					NS <= DESQUA_A;
				elsif (playerB = '1') then
					NS <= DESQUA_B;
				end if;
				
			when DESQUA_A =>
				delayCounter <= '1';
			
				if (playerB = '1') then
					NS <= PREP;
				
				elsif stimulus = '1' then
					DesQA <= '1';
					timerDesqStart <= '1';
					LEDGreen(7 downto 4) <= (others => '1');
					
					if timerDesqOut = '1' then
						NS <= CONCLSN;
					end if;
				end if;
				
			when DESQUA_B =>
				delayCounter <= '1';

				if (playerA = '1') then
					NS <= PREP;
				
				elsif stimulus = '1' then
					DesQB <= '1';
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
					NS <= INTER;					

				elsif (playerA = '1') then
					NS <= REACT_A;
				
				elsif (playerB = '1') then
					NS <= REACT_B;
				end if;
			
			when REACT_A =>
				LEDGreen(7 downto 0) <= (others => '1');
				
				if (playerB = '1') then
					TReactStartB <= '1';
					NS <= INTER;
				end if;
			
			when REACT_B =>
				LEDGreen(7 downto 0) <= (others => '1');
				
				if (playerA = '1') then			
					TReactStartA <= '1';
					NS <= INTER;
				end if;
				
			when INTER =>
				LEDGreen(7 downto 0) <= (others => '1');
				
				CountRound <= '1';
				timerScoreStart <= '1';
				Enable_SumTReactA <= '1';
				Enable_SumTReactB <= '1';
				NS <= SCORES;
				
			when SCORES =>
				LEDGreen(7 downto 0) <= (others => '1');
				
				if timerScoreOut = '1' then
					if PresentRounds = NRounds then
						NS <= CONCLSN;
					else
						NS <= PREP;
					end if;
				end if;
				
			when CONCLSN =>
				timerConclsnStart <= '1';
				
				if tie = '1' then
					enableHyphen <= '1';
						if blink10Hz = '1' then
							enableHexA <= '0';
							enableHexB <= '0';
						end if;
				elsif winnerA = '1' then
					if blink10Hz = '1' then
						enableHexA <= '0';
					end if;
				elsif winnerA = '0' then
					if blink10Hz = '1' then
						enableHexB <= '0';						
					end if;
				end if;
					
				if timerConclsnOut <= '1' then
					NS <= INIT;
				end if;
			
			when others =>
				NS <= INIT;
		end case;
	end process;
end Behavioral;