-------------------------------------------------------------------------
-- Clay Kramper
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- ComparatorUnit.vhd
-------------------------------------------------------------------------

-- NOTES:
-- 8/19/16 by JAZ::Design created.
-- 11/25/19 by H3:Changed name to avoid name conflict with Quartus
--          primitives.
-------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity ComparatorUnit is
    generic(N : integer := 32; M : integer := 5);
  port(
   
      branch_type         : in std_logic;     -- zero when beq, and 1 for bne
      sub_out         : in std_logic_vector(N-1 downto 0);
      do_branch            : out std_logic);   -- Data value output

end ComparatorUnit;

architecture dataflow of ComparatorUnit is
  
  signal dataOut : std_logic_vector(N-1 downto 0);

  begin
    do_branch <= '1' when (sub_out = x"00000000" and branch_type = '0')else
                 '1' when (sub_out /= x"00000000" and branch_type = '1')else
                  '0';

end dataflow;
