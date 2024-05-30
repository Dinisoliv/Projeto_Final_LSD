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
     generic map(divFactor =>      );
     port map(clkIn =>       ,
	      clkOut =>        );

  Debouncer : entity work.DebN(Behavorial)
     generic map(kHzClkFreq =>      );
                 mSecMinInWidth =>        ,
                 inPolarity =>        ,
                 outPolarity =>      );
     port map(refClk =>       ,
              dirtyIn =>       ,
              pulsedOut =>      );

  FreeRun : entity work.FreeN(Behavorial)
      port map(clk =>       ,
	       don =>      );

  NRounds : entity work.NRoundsN(Behavorial)
      port map(clk =>    ,
	       enable =>       ,
	       roundIn =>        ,
	       roundOut =>        );

  RandomDownCounter : entity work.RanddomN(Behavorial)
      port map(clk =>       ,
               load =>      ,
               down =>      ,
               dataIn =>      ,
               zero =>);
	   
  

end Shell;
