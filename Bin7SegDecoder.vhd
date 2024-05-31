library IEEE;
use IEEE.STD_LOGIC_1164.all;

library WORK;
use.WORK.ReactTimePack.all;

entity Bin7SegDecoder is
	port(enable		: in  std_logic;
		  pattSel   : in std_logic_vector(3 downto 0);
		  binInput	: in  std_logic_vector(3 downto 0);
		  decOut_n	: out std_logic_vector(6 downto 0));
end Bin7SegDecoder;

architecture RTL of Bin7SegDecoder is

	signal s_decOut_n : std_logic_vector(6 downto 0);

begin
	process
	begin
		case pattSel is
		when DISP_VAL =>
         
            case binInput is
                when "0001" =>
                    decOut_n <= "1111001"; -- 1
                when "0010" =>
                    decOut_n <= "0100100"; -- 2
                when "0011" =>
                    decOut_n <= "0110000"; -- 3
                when "0100" =>
                    decOut_n <= "0011001"; -- 4
                when "0101" =>
                    decOut_n <= "0010010"; -- 5
                when "0110" =>
                    decOut_n <= "0000010"; -- 6
                when "0111" =>
                    decOut_n <= "1111000"; -- 7
                when "1000" =>
                    decOut_n <= "0000000"; -- 8
                when "1001" =>
                    decOut_n <= "0010000"; -- 9
                when "1010" =>
                    decOut_n <= "0001000"; -- A
                when "1011" =>
                    decOut_n <= "0000011"; -- b
                when "1100" =>
                    decOut_n <= "1000110"; -- C
                when "1101" =>
                    decOut_n <= "0100001"; -- d
                when "1110" =>
                    decOut_n <= "0000110"; -- E
                when "1111" =>
                    decOut_n <= "0001110"; -- F
                when others =>
                    decOut_n <= "1000000"; -- 0
            end case;
			
		when DISP_C =>
			s_decOut_n <= "0110001";
			
		when DISP_O =>
			s_decOut_n <= "0000001";
			
		when DISP_N =>
			s_decOut_n <= "1101010";
			
		when DISP_F =>
			s_decOut_n <= "0111000";
		
		when DISP_T =>
			s_decOut_n <= "1110000";
			
		when DISP_E =>
			s_decOut_n <= "0110000";
			
		when DISP_S =>
			s_decOut_n <= "0100100";
		
		when others =>
         s_decOut_n <= "0000001";
			
		end case;
	end process;

	decOut_n <= s_decOut_n when (enable = '1') else
					"1111111";
end RTL;
