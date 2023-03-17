-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------
-- tb_mux32t1.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a testbench for the TPU MAC unit.
--              
-- 01/03/2020 by H3::Design created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;  -- For logic types I/O
library std;
use std.env.all;                -- For hierarchical/external signals
use std.textio.all;             -- For basic I/O
use work.mux2darr.all;

entity tb_mux32t1 is
  generic(gCLK_HPER : time := 50 ns ;N : integer := 32; M : integer := 5);   -- Generic for half of the clock cycle period
end tb_mux32t1;

architecture behavior of tb_mux32t1 is

   constant cCLK_PER  : time := gCLK_HPER * 2;

   component mux32t1 is
      port(i_S          : in std_logic_vector(M-1 downto 0);
           i_D         : in t_Memory;
           o_O          : out std_logic_vector(N-1 downto 0));
    end component;

   signal s_S : std_logic_vector(M-1 downto 0);
   signal s_D   : t_Memory;
   signal s_O   : std_logic_vector(N-1 downto 0);

begin
    P_CLK: process
    begin
      s_CLK <= '0';
      wait for gCLK_HPER;
      s_CLK <= '1';
      wait for gCLK_HPER;
    end process;
    
  DUT0: mux32t1
  port map(
            i_S       => s_S,
            i_D     => s_D,
            o_O       => s_O);
  
  
  P_TB: process
  begin
    -- Reset the FF
    s_S  <= "00000";
    s_D(0)   <= x"FF00FF00";
    wait for cCLK_PER;

    -- Store '1'
    s_S  <= "00001";
    s_D(1)   <= x"0000FFFF";
    wait for cCLK_PER;  

    -- Keep '1'
    s_S  <= "11111";
    s_D(31)   <= x"FFFFFFFF";
    wait for cCLK_PER;  

    -- Store '0'  
    s_S  <= "00100";
    s_D(4)   <= x"00000000";
    wait for cCLK_PER;  

    wait;
  end process;

end behavior;