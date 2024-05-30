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
   
  

end Shell;
