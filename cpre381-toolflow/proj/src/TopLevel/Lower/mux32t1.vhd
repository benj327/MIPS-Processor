-------------------------------------------------------------------------
-- Henry Duwe
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- mux32t1.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains an implementation of an N-bit wide 2:1
-- mux using structural VHDL, generics, and generate statements.
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use work.mux2darr.all;
use IEEE.numeric_Std.all;
entity mux32t1 is
  generic(N : integer := 32; M : integer := 5); -- Generic of type integer for input/output data width. Default value is 32.
  port(i_S          : in std_logic_vector(M-1 downto 0);
       i_D         : in t_Memory;
       o_O          : out std_logic_vector(N-1 downto 0));

end mux32t1;

architecture dataflow of mux32t1 is


begin

    o_O <= i_D(to_integer(unsigned(i_S)));
  
end dataflow;
