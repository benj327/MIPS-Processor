-------------------------------------------------------------------------
-- Joseph Zambreno
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- Decoder5t32.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains an implementation of an edge-triggered
-- flip-flop with parallel access and reset.
--
--
-- NOTES:
-- 8/19/16 by JAZ::Design created.
-- 11/25/19 by H3:Changed name to avoid name conflict with Quartus
--          primitives.
-------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity Decoder5t32 is
    generic(N : integer := 32; M : integer := 5);
  port(i_WE         : in std_logic;     -- Write enable input
       i_D         : in std_logic_vector(M-1 downto 0);     -- Data value input
       o_Do          : out std_logic_vector(N-1 downto 0));   -- Data value output

end Decoder5t32;

architecture dataflow of Decoder5t32 is
  
  signal dataOut : std_logic_vector(N-1 downto 0);

  begin
    with i_D select
        dataOut <= x"00000001" when "00000",
                   x"00000002" when "00001",
                   x"00000004" when "00010",
                   x"00000008" when "00011",
                   x"00000010" when "00100",
                   x"00000020" when "00101",
                   x"00000040" when "00110",
                   x"00000080" when "00111",
                   x"00000100" when "01000",
                   x"00000200" when "01001",
                   x"00000400" when "01010",
                   x"00000800" when "01011",
                   x"00001000" when "01100",
                   x"00002000" when "01101",
                   x"00004000" when "01110",
                   x"00008000" when "01111",
                   x"00010000" when "10000",
                   x"00020000" when "10001",
                   x"00040000" when "10010",
                   x"00080000" when "10011",
                   x"00100000" when "10100",
                   x"00200000" when "10101",
                   x"00400000" when "10110",
                   x"00800000" when "10111",
                   x"01000000" when "11000",
                   x"02000000" when "11001",
                   x"04000000" when "11010",
                   x"08000000" when "11011",
                   x"10000000" when "11100",
                   x"20000000" when "11101",
                   x"40000000" when "11110",
                   x"80000000" when "11111",
                   x"00000000" when others;

  o_Do <= dataOut when i_WE ='1' else (others => '0'); 

end dataflow;
