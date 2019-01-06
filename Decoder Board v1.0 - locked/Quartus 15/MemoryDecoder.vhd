library ieee;
use ieee.std_logic_1164.all;

-- The MemoryDecoder:
-- - Detects memory bank activation addresses



entity MemoryDecoder is
port
(
  nMEMREQ : in std_logic;
  MA : in std_logic_vector(7 downto 0);     -- MA12-MA19
  
  nMBE: out std_logic_vector(3 downto 0)    -- CPU memory bank (chip) enable lines (64k)
--  nExMBE: out std_logic_vector(7 downto 0)  -- External memory bank enable lines (64k)
);

end entity MemoryDecoder;


architecture MemoryDecoder_rtl OF MemoryDecoder is

begin
    -- nMBE[3..0] <= decode MA16+MA17 (MA18+MA19 == 0) Only one MBE active (zero) at a time.
    nMBE <= "ZZZ0" when (MA(7 downto 4) = "0000") and nMEMREQ = '0' else
        "ZZ0Z" when (MA(7 downto 4) = "0001") and nMEMREQ = '0' else
        "Z0ZZ" when (MA(7 downto 4) = "0010") and nMEMREQ = '0' else
        "0ZZZ" when (MA(7 downto 4) = "0011") and nMEMREQ = '0' else
        "ZZZZ";
     
  -- nExMBE[7..0] <= decode MA16-MA19. Only one MBE active (zero) at a time.
--  nExMBE <= "ZZZZZZZ0" when (MA(7 downto 4) = "0100") and nMEMREQ = '0' else
--     "ZZZZZZ0Z" when (MA(7 downto 4) = "0101") and nMEMREQ = '0' else
--     "ZZZZZ0ZZ" when (MA(7 downto 4) = "0110") and nMEMREQ = '0' else
--     "ZZZZ0ZZZ" when (MA(7 downto 4) = "0111") and nMEMREQ = '0' else
--     "ZZZ0ZZZZ" when (MA(7 downto 4) = "1000") and nMEMREQ = '0' else
--     "ZZ0ZZZZZ" when (MA(7 downto 4) = "1001") and nMEMREQ = '0' else
--     "Z0ZZZZZZ" when (MA(7 downto 4) = "1010") and nMEMREQ = '0' else
--     "0ZZZZZZZ" when (MA(7 downto 4) = "1011") and nMEMREQ = '0' else
--     "ZZZZZZZZ";

end architecture MemoryDecoder_rtl;
