library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

library WORK;
use WORK.ReactTimePack.all;

entity ReactTimeTop is
	port(CLOCK_50 : in std_logic;
		  SW       : in std_logic_vector(17 downto 0);
		  KEY		  : in std_logic_vector(3 downto 0);
		  
		  LEDR     : out std_logic_vector(15 downto 0);
		  LEDG     : out std_logic_vector(7 downto 0);
		  HEX0     : out std_logic_vector(6 downto 0);
		  HEX1     : out std_logic_vector(6 downto 0);
		  HEX2     : out std_logic_vector(6 downto 0);
		  HEX3     : out std_logic_vector(6 downto 0);
		  HEX4     : out std_logic_vector(6 downto 0);
		  HEX5     : out std_logic_vector(6 downto 0);
		  HEX6     : out std_logic_vector(6 downto 0);
		  HEX7     : out std_logic_vector(6 downto 0));
		  
end ReactTimeTop;

architecture Shell of ReactTimeTop is
	
	signal s_clk1KHz : std_logic;
	signal s_playerADeb, s_playerBDeb : std_logic;
	signal s_enableNRounds : std_logic;
	signal s_CountRound : std_logic;
	signal s_NRound : std_logic_vector(3 downto 0);
	signal s_don : std_logic_vector(11 downto 0);
	
	signal s_resetRoundCount : std_logic;
	signal s_resetTReactSumA,s_resetTReactSumB : std_logic;
	signal s_resetTReactCountA, s_resetTReactCountB : std_logic;
	
	signal s_presentRounds : std_logic_vector(3 downto 0);
	signal s_loadRandom : std_logic;
	signal s_delayCounter : std_logic;
	signal s_stimulus : std_logic;
	
	signal s_TReactStartA, s_TReactStartB : std_logic;
	signal s_TReactA, s_TReactB : std_logic_vector(10 downto 0);
	signal s_Enable_SumTReactA, s_Enable_SumTReactB : std_logic;
	signal s_TotalTReactA, s_TotalTReactB : std_logic_vector(14 downto 0);
	signal s_maxTReactA, s_maxTReactB : std_logic;
	
	signal s_timerScoreStart, s_timerConclsnStart, s_timerDesqStart : std_logic;
	signal s_timerScoreOut, s_timerConclsnOut, s_timerDesqOut : std_logic;	
	
	signal s_averageTReactA, s_averageTReactB : unsigned(15 downto 0);
	signal s_winnerA, s_tie : std_logic;
	signal s_DesqA, s_DesqB : std_logic;
	
	signal s_blink10HZ : std_logic;
	signal s_bin0, s_bin1, s_bin2, s_bin3 : std_logic_vector(3 downto 0);
	signal s_bin4, s_bin5, s_bin6, s_bin7 : std_logic_vector(3 downto 0);
	signal s_enableHexA, s_enableHexB : std_logic;
	signal s_enableHyphen, s_charSelect, s_charEnable : std_logic;
	signal s_Hex0, s_Hex1, s_Hex2, s_Hex3 : std_logic_vector(6 downto 0);
	signal s_Hex4, s_Hex5, s_Hex6, s_Hex7 : std_logic_vector(6 downto 0);
	

begin

	clk_1Kz : entity work.ClkDivider(Behavioral)
		generic map(divFactor => 50000)
      port map(clkIn => CLOCK_50,
					clkOut => s_clk1KHz);
					
	Debounce_plyrA : entity work.Debouncer(Behavioral)
    generic map (
        kHzClkFreq     => 1, 
        mSecMinInWidth => 100,
        inPolarity     => '0',
        outPolarity    => '1'
    )
    port map (
        refClk    => s_clk1KHz,
        dirtyIn   => KEY(3),
        pulsedOut => s_playerADeb
    );
	 
	 Debounce_plyrB : entity work.Debouncer(Behavioral)
    generic map (
        kHzClkFreq     => 1,
        mSecMinInWidth => 100, 
        inPolarity     => '0', 
        outPolarity    => '1'
    )
    port map (
        refClk    => s_clk1KHz, 
        dirtyIn   => KEY(0), 
        pulsedOut => s_playerBDeb 
    );
					
	ReactTimeFSM : entity work.ReactTimeFSM(Behavioral)
    port map (
        clk               => s_clk1KHz,
        reset             => Sw(17),
        NRounds           => s_NRound,
        PresentRounds     => s_presentRounds,
        playerA           => not KEY(3),
        playerADeb        => s_playerADeb,
        playerB           => not KEY(0),
        playerBDeb        => s_playerBDeb,
        stimulus          => s_stimulus,
        timerScoreOut     => s_timerScoreOut,
        timerConclsnOut   => s_timerConclsnOut,
        timerDesqOut      => s_timerDesqOut,
        blink10Hz         => s_blink10HZ,
        winnerA		     => s_winnerA,
        tie				     => s_tie, 
		  
        resetRoundCount   => s_resetRoundCount,
        resetTReactSumA   => s_resetTReactSumA,
        resetTReactSumB   => s_resetTReactSumB,
        resetTReactCountA => s_resetTReactCountA,
        resetTReactCountB => s_resetTReactCountB,
        enableNRounds     => s_enableNRounds,
        loadRandom        => s_loadRandom,
        delayCounter      => s_delayCounter,
        TReactStartA      => s_TReactStartA,
        TReactStartB      => s_TReactStartB,
        Enable_SumTReactA => s_Enable_SumTReactA,
        Enable_SumTReactB => s_Enable_SumTReactB,
        CountRound        => s_CountRound,
        timerScoreStart   => s_timerScoreStart,
        timerConclsnStart => s_timerConclsnStart,
        timerDesqStart    => s_timerDesqStart,
        LEDRed            => LEDR(15 downto 0),
        LEDGreen          => LEDG(7 downto 0),
        charEnable        => s_charEnable,
        charSelect        => s_charSelect,
        enableHyphen      => s_enableHyphen,
		  DesqA				  => s_DesqA,
		  DesqB				  => s_DesqB,
        enableHexA        => s_enableHexA,
        enableHexB        => s_enableHexB
    );
	 
	 NRoundsSave : entity work.NRounds(Behavioral)
    port map (
        clk      => s_clk1KHz,
        enable   => s_enableNRounds,
        roundIn  => Sw(3 downto 0),
        roundOut => s_NRound
    );

	RoundCount : entity work.RoundCount(Behavioral)
    port map (
        clk   => s_clk1KHz,
        reset => s_resetRoundCount,
        up    => s_CountRound,
        count => s_presentRounds
    );
	 
	 FreeRun : entity work.FreeRun(Behavioral)
    port map (
        clk => s_clk1KHz,
        don => s_don
    );
	 
	 RandomDownCounter : entity work.RandomDownCounter(Behavioral)
    port map (
        clk    => s_clk1KHz,
        load   => s_loadRandom,
        down   => s_delayCounter,
        dataIn => s_don,
        zero   => s_stimulus 
    );
	 
	 TReactCountA : entity work.TReact(Behavioral)
	 generic map(
		  N   => 11,
		  Max => 2000
	 )
    port map (
        clk    => s_clk1KHz,
        reset  => s_resetTReactCountA,
        up     => s_TReactStartA,
        count  => s_TReactA,
		  maxReached    => s_maxTReactA
    );

	 TReactCountB : entity work.TReact(Behavioral)
	 generic map(
		  N   => 11,
		  Max => 2000
	 )    
	 port map (
        clk    => s_clk1KHz,
        reset  => s_resetTReactCountB,
        up     => s_TReactStartB,
        count  => s_TReactB,
		  maxReached    => s_maxTReactB
    );
	
	 SumTReactA : entity work.AccN(Behavioral)
    generic map (
        OUtN => 15,
		  InN  => 11
    )
    port map (
        clk     => s_clk1KHz,
        enable  => s_Enable_SumTReactA,
        reset   => s_resetTReactSumA,
        dataIn  => s_TReactA,
        ovf     => open,
        dataOut => s_TotalTReactA
    );
	 
	 SumTReactB : entity work.AccN(Behavioral)
    generic map (
        OUtN => 15,
		  InN  => 11
    )
    port map (
        clk     => s_clk1KHz,
        enable  => s_Enable_SumTReactB,
        reset   => s_resetTReactSumB,
        dataIn  => s_TReactB,
        ovf     => open,
        dataOut => s_TotalTReactB
    );
	 
	 process(s_clk1KHz)
	 begin
		 if (rising_edge(s_clk1KHz)) then
			 --Calculo dos tempos medios TReact
			s_averageTReactA <= '0' & (unsigned(s_TotalTReactA) / to_integer(unsigned(s_presentRounds)));
			s_averageTReactB <= '0' & (unsigned(s_TotalTReactB) / to_integer(unsigned(s_presentRounds)));
			 
			if ((s_DesqA = '1') and (s_DesqB = '0')) then
				 s_winnerA <= '0'; -- Team A is disqualified, so Team B wins
				 s_tie <= '0';
			elsif ((s_DesqA = '0') and (s_DesqB = '1')) then
				 s_winnerA <= '1'; -- Team B is disqualified, so Team A wins
				 s_tie <= '0';
			elsif ((s_DesqA = '1') and (s_DesqB = '1')) then
				 s_winnerA <= '0';
				 s_tie <= '0';
			else -- Both teams are not disqualified, compare average reaction times
				 if (s_averageTReactA < s_averageTReactB) then
					  s_winnerA <= '1';
					  s_tie <= '0';
				 elsif (s_averageTReactA > s_averageTReactB) then
					  s_winnerA <= '0';
					  s_tie <= '0';
				 else
					  s_tie <= '1'; -- It's a tie
				 end if;
			end if;
		end if;
	end process;
	 
	 TimerN_Scores : entity work.TimerN(Behavioral)
    generic map (
        N => 2000
    )
    port map (
        clk      => s_clk1KHz,
        start    => s_timerScoreStart,
        enable   => '1',
        reset    => '0',
        timerOut => s_timerScoreOut
    );

	 TimerN_Conclsn : entity work.TimerN(Behavioral)
    generic map (
        N => 1000 
    )
    port map (
        clk      => s_clk1KHz,
        start    => s_timerConclsnStart,
        enable   => '1',
        reset    => '0',
        timerOut => s_timerConclsnOut
    );

	 
	 TimerN_Desq : entity work.TimerN(Behavioral)
    generic map (
        N => 5000
    )
    port map (
        clk      => s_clk1KHz,
        start    => s_timerDesqStart,
        enable   => '1',
        reset    => '0',
        timerOut => s_timerDesqOut
    );
	 
	 blink_gen_10Hz : entity work.blink_gen(Behavioral)
    generic map (
        NUMBER_STEPS => 100
    )
    port map (
        clk   => s_clk1KHz,
        reset => '0',
        blink => s_blink10HZ
    );
	 
	 Bin2BCD_A : entity work.Bin2BCD(Behavioral)
    port map (
        dataIn       => std_logic_vector(s_averageTReactA),
        unitsOut     => s_bin4,
        tenthsOut    => s_bin5,
        hundredsOut  => s_bin6,
        thousandsOut => s_bin7
    );
	 
	 Bin2BCD_B : entity work.Bin2BCD(Behavioral)
    port map (
        dataIn       => std_logic_vector(s_averageTReactB),
        unitsOut     => s_bin0,
        tenthsOut    => s_bin1,
        hundredsOut  => s_bin2,
        thousandsOut => s_bin3
    );
	 
	 Bin7SegDecoder_0 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => DISP_F,
        charPat1 => DISP_T 
    )
    port map (
        enable    => s_enableHexB,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin0,
        decOut_n  => s_Hex0
    );
	 
	 Bin7SegDecoder_1 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => DISP_N,
        charPat1 => DISP_S 
    )
    port map (
        enable    => s_enableHexB,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin1,
        decOut_n  => s_Hex1
    );
	 
	 Bin7SegDecoder_2 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => DISP_O,
        charPat1 => DISP_E
    )
    port map (
        enable    => s_enableHexB,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin2,
        decOut_n  => s_Hex2
    );
	 
	 Bin7SegDecoder_3 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => DISP_C,
        charPat1 => DISP_T 
    )
    port map (
        enable    => s_enableHexB,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin3,
        decOut_n  => s_Hex3
    );
	 
	 Bin7SegDecoder_4 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => "1111111",
        charPat1 => "1111111" 
    )
    port map (
        enable    => s_enableHexA,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin4,
        decOut_n  => s_Hex4
    );
	 
	 Bin7SegDecoder_5 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => "1111111",
        charPat1 => "1111111" 
    )
    port map (
        enable    => s_enableHexA,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin5,
        decOut_n  => s_Hex5
    );
	 
	 Bin7SegDecoder_6 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => "1111111",
        charPat1 => "1111111" 
    )
    port map (
        enable    => s_enableHexA,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin6,
        decOut_n  => s_Hex6
    );
	 
	 Bin7SegDecoder_7 : entity work.Bin7SegDecoderExt(RTL)
    generic map (
        charPat0 => "1111111",
        charPat1 => "1111111" 
    )
    port map (
        enable    => s_enableHexA,
        hyphenEnb => s_enableHyphen,
        charEnb   => s_charEnable,
        charSel   => s_charSelect,
        binInput  => s_bin7,
        decOut_n  => s_Hex7
    );
	 
    HEX0 <= s_Hex0;
    HEX1 <= s_Hex1;
    HEX2 <= s_Hex2;
    HEX3 <= s_Hex3;
    HEX4 <= s_Hex4;
    HEX5 <= s_Hex5;
    HEX6 <= s_Hex6;
    HEX7 <= s_Hex7;	 

end Shell;