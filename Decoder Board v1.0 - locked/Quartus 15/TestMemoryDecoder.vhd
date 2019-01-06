library ieee;
use ieee.std_logic_1164.all;

-- A test memory decoder for only one 64k memory chip (MBE0):
-- - Activates MBE0 on nMEMREQ


entity TestMemoryDecoder is
port
(
  nMEMREQ : in std_logic;
  nMBE: out std_logic_vector(3 downto 0)  -- CPU memory bank (chip) enable lines (64k)
  
);

end entity TestMemoryDecoder;


architecture TestMemoryDecoder_rtl OF TestMemoryDecoder is
begin

  --nMBE[0] <= nMEMREQ;
  nMBE <= "ZZZ0" when nMEMREQ = '0' else
     "ZZZZ";

 
end architecture TestMemoryDecoder_rtl;
