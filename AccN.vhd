library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AccN is
	generic (OUtN : positive := 4;
				InN : positive :=10);
	port(clk     : in std_logic;
		  enable  : in std_logic;
		  reset   : in std_logic;
		  dataIn  : in std_logic_vector(InN-1 downto 0);
		  ovf     : out std_logic;
		  dataOut : out std_logic_vector(OUtN-1 downto 0));
end AccN;

architecture Behavioral of AccN is
	signal s_regOut   : unsigned(OUtN downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_regOut <= (others => '0');
			elsif (enable = '1') then
				s_regOut <= s_regOut + unsigned("0" & dataIn);
			end if;
		end if;
	end process;
	
	dataOut <= std_logic_vector(s_regOut(OUtN-1 downto 0));
	ovf		<= s_regOut(OUtN);
end Behavioral;
			
			