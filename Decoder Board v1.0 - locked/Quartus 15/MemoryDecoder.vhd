library ieee;
use ieee.std_logic_1164.all;

--	The MemoryDecoder:
--	- Detects memory bank activation addresses



entity MemoryDecoder is
port
(
		nMEMREQ : in std_logic;
		MA : in std_logic_vector(7 downto 0);
		
		nMBE: out std_logic_vector(3 downto 0)		-- CPU memory bank (chip) enable lines (64k)
);

end entity MemoryDecoder;


architecture MemoryDecoder_rtl OF MemoryDecoder is


begin

		-- nMBE[3..0] <= decode MA16+MA17 (MA18+MA19 == 0) Only one MBE active (zero) at a time.
		nMBE <= "1110" when (MA(7 downto 4) = "0000") and nMEMREQ = '0' else
					"1101" when (MA(7 downto 4) = "0001") and nMEMREQ = '0' else
					"1011" when (MA(7 downto 4) = "0010") and nMEMREQ = '0' else
					"0111" when (MA(7 downto 4) = "0011") and nMEMREQ = '0' else
					"1111";

end architecture MemoryDecoder_rtl;
