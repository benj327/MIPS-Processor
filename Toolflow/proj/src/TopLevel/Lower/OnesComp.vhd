-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- OnesComp.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains the ones complement structure
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity OnesComp is
  generic(N : integer := 32); -- Generic of type integer for input/output data width. Default value is 32.
  port(i_I          : in std_logic_vector(N-1 downto 0);
       o_O          : out std_logic_vector(N-1 downto 0));

end OnesComp;

architecture structural of OnesComp is

  component invg
    port(i_A	: in std_logic;
         o_F	: out std_logic);
  end component;

  begin
    OnesComp: for i in 0 to N-1 generate
    g_Not: invg port MAP(i_A     => i_I(i),
                         o_F     => o_O(i));
    end generate OnesComp;
end structural;
