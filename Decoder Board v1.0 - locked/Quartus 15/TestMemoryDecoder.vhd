library ieee;
use ieee.std_logic_1164.all;

--	A test memory decoder for only one 64k memory chip (MBE0):
--	- Activates MBE0 on nMEMREQ



entity TestMemoryDecoder is
port
(
		nMEMREQ : in std_logic;
		
		nMBE: out std_logic_vector(3 downto 0)		-- CPU memory bank (chip) enable lines (64k)
);

end entity TestMemoryDecoder;


architecture TestMemoryDecoder_rtl OF TestMemoryDecoder is


begin

		-- nMBE[3..0] <= decode MA16+MA17 (MA18+MA19 == 0) Only one MBE active (zero) at a time.
--		nMBE <= "1110" when (MA(7 downto 4) = "0000") and nMEMREQ = '0' else
--					"1101" when (MA(7 downto 4) = "0001") and nMEMREQ = '0' else
--					"1011" when (MA(7 downto 4) = "0010") and nMEMREQ = '0' else
--					"0111" when (MA(7 downto 4) = "0011") and nMEMREQ = '0' else
--					"1111";

		--nMBE[0] <= nMEMREQ;
		nMBE <= "1110" when nMEMREQ = '0' else
					"1111";
		

end architecture TestMemoryDecoder_rtl;
