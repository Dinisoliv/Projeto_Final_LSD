library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity ReactTimeTop is

end ReactTimeTop;

architecture Shell of ReactTimeTop is
begin
  AccN : entity work.AccN(Behavorial)
    generic map(N =>        );
    port map(clk =>    ,
		enable =>     ,
		reset =>      ,
		dataIn =>      ,
		ovf =>      ,
		dataOut =>      );

  Bin2BCD : entity work.Bin2N(Behavorial) 
     port map(dataIn =>       , -- Changed to 8 bits
		  tenthsOut =>    ,
		  hundredsOut =>      ,
		  thousandsOut =>      );
	  
  Bin7SegDecoder : entity work.Bin7N(Behavorial)
     port map(enable =>      ,
		 binInput =>      ,
		 decOut_n =>       );
	  
  ClkDivider : entity work.ClkN(Behavorial)
     generic(N =>      );
     port map(clkIn =>       ,
	      clkOut =>        );

  Debouncer : entity work.DebN(Behavorial)
     generic(kHzClkFreq : positive := 50000;
           mSecMinInWidth : positive := 100;
           inPolarity : std_logic := '0';
           outPolarity : std_logic := '1');
     port map(refClk : in std_logic;
        dirtyIn : in std_logic;
        pulsedOut : out std_logic);
	
	   
  

end Shell;
