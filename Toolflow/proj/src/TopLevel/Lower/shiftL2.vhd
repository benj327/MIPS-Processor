-------------------------------------------------------------------------
-- Clay Kramper
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- shiftL2.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains the ones complement structure
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity shiftL2 is
  generic(N : integer := 32); -- Generic of type integer for input/output data width. Default value is 32.
  port(i_I          : in std_logic_vector(N-1 downto 0);
       o_O          : out std_logic_vector(N-1 downto 0));

end shiftL2;

architecture structural of shiftL2 is

  component shift
    port(i_A	: in std_logic;
         o_F	: out std_logic);
  end component;

  begin
    process (i_I)
    begin
        o_O(31 downto 2) <= i_I(29 downto 0);
        
            o_O(1) <= '0';
            o_O(0) <= '0';
        
    end process;
end structural;
