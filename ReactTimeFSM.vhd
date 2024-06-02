library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ReactTimeFSM is
	port(clk             : in std_logic;
		  reset           : in std_logic;
		  NRounds         : in std_logic_vector(4 downto 0); --Total rounds to be done in which game
		  PresentRound    : in std_logic_vector(4 downto 0);
		  playerA         : in std_logic;
		  playerADeb      : in std_logic;
		  playerB         : in std_logic;
		  playerBDeb      : in std_logic;
		  stimulus        : in std_logic;
		  timerScoreOut   : in std_logic;
		  timerConclsnOut : in std_logic;
		  timerDesqOut    : in std_logic;
		  timerDelayOut   : in std_logic;
		  blink10Hz       : in std_logic;
		  blink5HZ			: in std_logic;
		  blink1HZ			: in std_logic;
		  winnerA			: in std_logic;
		  tie 				: in std_logic;
		  maxTReactA      : in std_logic;
		  maxTReactB      : in std_logic;
		  winnerRoundA		: in std_logic;
		  tiedRound			: in std_logic;
		  DesqA				: in std_logic;
		  DesqB				: in std_logic;
		  
		  resetRoundCount   : out std_logic; 
		  resetTReactSumA	  : out std_logic; 
		  resetTReactSumB   : out std_logic; 
		  resetTReactCountA : out std_logic; 
		  resetTReactCountB : out std_logic;
		  reset_DesqA		  : out std_logic;
		  reset_DesqB		  : out std_logic;
		  NroundsSave       : out std_logic_vector(3 downto 0);
		  enableNRounds     : out std_logic; 
		  loadRandom        : out std_logic; 
		  delayCounter      : out std_logic; 
		  TReactStartA      : out std_logic;
		  TReactStartB      : out std_logic;
		  Enable_SumTReactA : out std_logic;
		  Enable_SumTReactB : out std_logic; 
		  CountRound        : out std_logic;
		  GetsDesqA			  : out std_logic;
		  GetsDesqB			  : out std_logic;
		  timerDelayStart   : out std_logic;
		  timerScoreStart   : out std_logic;
		  timerConclsnStart : out std_logic; 
		  timerDesqStart    : out std_logic;
		  enableScore       : out std_logic; 
		  LEDRed            : out std_logic_vector(15 downto 0); 
		  LEDGreen          : out std_logic_vector(7 downto 0);
		  charEnable        : out std_logic;
		  charSelect        : out std_logic;
		  enableHyphen      : out std_logic;
		  enableHexA        : out std_logic;
		  enableHexB        : out std_logic);
end ReactTimeFSM;

architecture Behavioral of ReactTimeFSM is
	type state is (INIT, CONF, PREP, READY_A, READY_B, DELAY, STIM, REACT_A, REACT_B, BOTH_READY, BOTH_WAIT, 
						ACC, NEXTROUND, SCORES, DESQUA_A, DESQUA_B, WAIT_DESQUA_A, WAIT_DESQUA_B, BOTH_DESQ, CONCLSN);
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
	
	comb_proc: process(PS, NRounds, PresentRound, s_RoundsMissing, playerBDeb,
							 playerADeb, stimulus, playerA, playerB, timerDesqOut,
							 timerScoreOut, tie, blink10Hz, winnerA, timerConclsnOut, 
							 timerDelayOut, maxTReactA, maxTReactB, winnerRoundA,
							 blink5HZ, tiedRound, DesqA, DesqB)
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
		GetsDesqA 			<= '0';
		GetsDesqB 			<= '0';
		TReactStartA      <= '0';
		TReactStartB      <= '0';
		Enable_SumTReactA <= '0';
		Enable_SumTReactB <= '0';
		timerScoreStart   <= '0';
		timerConclsnStart <= '0';
		timerDesqStart    <= '0';
		timerDelayStart   <= '0';
		enableHexA 			<= '1';
		enableHexB 			<= '1';
		reset_DesqA		   <= '0';
		reset_DesqB		   <= '0';
		enableScore       <= '0';
		NroundsSave 		<= "0000";
		LEDGreen				<= (others => '0');
		
		if PresentRound = "00000" then
			charEnable <= '1';
			charSelect <= '1';
		end if;
		
		case PS is
			when INIT =>
				resetRoundCount <= '1';
				resetTReactSumA <= '1';
				resetTReactSumB <= '1';
				reset_DesqA		 <= '1';
				reset_DesqB		 <= '1';
				enableHexA 		 <= '0';
				enableHexB 		 <= '0';
				NS <= CONF;
			
			when CONF =>
				enableNRounds <= '1';
				charEnable <= '1';
				charSelect <= '0';
				
				if playerBDeb = '1' then
					NS <= PREP;
				end if;
				
			when PREP =>
				resetTReactCountA <= '1';
				resetTReactCountB <= '1';
				
				LEDGreen <= (others => '1');
			
				if (playerADeb = '1') then
					NS <= READY_A;
				elsif (playerBDeb = '1') then
					NS <= READY_B;
				end if;
				
			when READY_A =>
				if (playerBDeb = '1') then
					loadRandom <= '1';
					NS <= BOTH_READY;
				end if;
				LEDGreen(3 downto 0) <= (others => '1');		
				
			when READY_B =>
				if (playerADeb = '1') then
					loadRandom <= '1';
					NS <= BOTH_READY;
				end if;
				LEDGreen(7 downto 4) <= (others => '1');
				
			when BOTH_READY =>
				timerDelayStart <= '1';
				
				NS <= BOTH_WAIT;
				
			when BOTH_WAIT =>
				if (timerDelayOut = '1') then
					NS <= DELAY;
				end if;
				
			when DELAY =>
				delayCounter <= '1';
				
				if stimulus = '1' then
					NS <= STIM;
				end if;
				
				if (PresentRound /= "00000") then
					if (playerA = '1') then
						NS <= DESQUA_A;
					elsif (playerB = '1') then
						NS <= DESQUA_B;
					end if;
				end if;
				
			when DESQUA_A =>
				delayCounter <= '1';
			
				if (playerB = '1') then
					timerDesqStart <= '1';
					NS <= BOTH_DESQ;
				
				elsif stimulus = '1' then
					timerDesqStart <= '1';
					NS <= WAIT_DESQUA_A;
				end if;
				
			when WAIT_DESQUA_A =>
				LEDGreen(7 downto 4) <= (others => '1');
				GetsDesqA <= '1';
				
				if timerDesqOut = '1' then
					timerConclsnStart <= '1';
					NS <= CONCLSN;
				end if;
				
			when DESQUA_B =>
				delayCounter <= '1';--decrement counter for delay time to reaction

				if (playerA = '1') then
					timerDesqStart <= '1';
					NS <= BOTH_DESQ;
				
				elsif stimulus = '1' then
					timerDesqStart <= '1';
					NS <= WAIT_DESQUA_B;
				end if;					
				
			when WAIT_DESQUA_B =>
				LEDGreen(3 downto 0) <= (others => '1');
				GetsDesqB <= '1';
				
				if timerDesqOut = '1' then
					timerConclsnStart <= '1';
					NS <= CONCLSN;
				end if;
				
			when BOTH_DESQ =>
				
				LEDGreen <= (others => blink5HZ);
				
				if (timerDesqOut = '1') then
					NS <= PREP;
				end if;
				
			when STIM =>
				LEDGreen(7 downto 0) <= (others => '1');
				TReactStartA <= '1';
				TReactStartB <= '1';

				if ((playerA = '1') and (playerB = '1')) or (maxTReactA = '1') then
					NS <= ACC;					

				elsif (playerA = '1') then
					NS <= REACT_A;
				
				elsif (playerB = '1') then
					NS <= REACT_B;
				end if;
			
			when REACT_A =>
				LEDGreen(7 downto 0) <= (others => '1');
				TReactStartB <= '1';
				
				if (playerB = '1') or (maxTReactB = '1') then
					NS <= ACC;
				end if;
			
			when REACT_B =>
				LEDGreen(7 downto 0) <= (others => '1');
				TReactStartA <= '1';
				
				if (playerA = '1') or (maxTReactA = '1') then	
					NS <= ACC;
				end if;
				
			when ACC =>
				LEDGreen(7 downto 0) <= (others => '1');
				
				if (PresentRound = "00000") then
					NS <= NEXTROUND;
				else
					timerScoreStart <= '1';
					Enable_SumTReactA <= '1';
					Enable_SumTReactB <= '1';
					NS <= SCORES;
				end if;
				
			when NEXTROUND => 
				CountRound <= '1';
				NS <= PREP;
				
			when SCORES =>
				LEDGreen(7 downto 0) <= (others => '1');
				enableScore <= '1';
				
				if tiedRound = '1' then
					if blink5HZ = '1' then
						LEDGreen(7 downto 0) <= (others => '0');
					end if;
				elsif winnerRoundA = '0' then
					if blink5HZ = '1' then
						LEDGreen(3 downto 0) <= (others => '0');
					end if;
				elsif winnerRoundA = '1' then 
					if blink5HZ = '1' then
						LEDGreen(7 downto 4) <= (others => '0');
					end if;
				end if;
				
				if timerScoreOut = '1' then
					if (unsigned(PresentRound) = (unsigned(NRounds))) then
						timerConclsnStart <= '1';
						NS <= CONCLSN;
					else
						NS <= NEXTROUND;
					end if;
				end if;
				
			when CONCLSN =>	
				if (DesqA = '1') then
					if blink10Hz = '1' then
						enableHexB <= '0';
					end if;
				elsif (DesqB = '1') then
					if blink10Hz = '1' then
						enableHexA <= '0';
					end if;				
				elsif tie = '1' then
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
					
				if timerConclsnOut = '1' then
					NS <= INIT;
				end if;
			
			when others =>
				NS <= INIT;
		end case;
	end process;
	
	s_RoundsMissing <= to_integer(unsigned(NRounds) + 1) - to_integer(unsigned(PresentRound));
	
	process(PS, s_RoundsMissing, blink1HZ)
	begin
		if ((PS = INIT) or (PS = CONF)) then
			LEDRed(15 downto 0) <= (others => '0'); 
			
		elsif (s_RoundsMissing = 16) then
			LEDRed(15 downto 0) <= (others => '1'); 
			
		elsif ((s_RoundsMissing > 0) and (s_RoundsMissing < 16)) then
			LEDRed(s_RoundsMissing - 1	downto 0) <= (others => '1'); 
			LEDRed(15 downto s_RoundsMissing) <= (others => '0'); 
			
		else
			 LEDRed(15 downto 0) <= (others => '0'); 
			 
		end if;
		
		if (blink1HZ = '1') then
			LEDRed(s_RoundsMissing - 1) <= '0';
		end if;
	end process;
	
	--with PS select
	   --LEDRed <="000000000000001" when INIT,
					--"000000000000010" when CONF,
					--"000000000000100" when PREP,
					--"000000000001000" when READY_A,
					--"000000000010000" when READY_B,
					--"100000000000000" when BOTH_WAIT,
					--"000000000100000" when DELAY,
					--"000000001000000" when STIM,
					--"000000010000000" when REACT_A,
					--"000000100000000" when REACT_B,
					--"000001000000000" when INTER,
					--"000010000000000" when SCORES,
					--"000100000000000" when DESQUA_A,
					--"001000000000000" when DESQUA_B,
					--"010000000000000" when CONCLSN,
					--"000000000000000" when others;

end Behavioral;