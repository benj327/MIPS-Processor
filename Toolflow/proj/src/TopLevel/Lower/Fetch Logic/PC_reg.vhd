-------------------------------------------------------------------------
-- Clay Kramper
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- PC_reg.vhd
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

entity PC_reg is
    generic(N : integer := 32);
  port(i_CLKa        : in std_logic;     -- Clock input
       i_RS        : in std_logic;     -- Reset input
       i_E         : in std_logic;     -- Write enable input
       i_Di         : in std_logic_vector(N-1 downto 0);     -- Data value input
       o_Do          : out std_logic_vector(N-1 downto 0));   -- Data value output

end PC_reg;

architecture structural of PC_reg is
  
  component dffg
  port(i_CLK        : in std_logic;     -- Clock input
       i_RST        : in std_logic;     -- Reset input
       i_WE         : in std_logic;     -- Write enable input
       i_D          : in std_logic;     -- Data value input
       o_Q          : out std_logic);   -- Data value output
  end component;

begin

    G_NBIT_REG: for i in 0 to N-1 generate
    g_dffg: dffg port map(
              i_CLK      => i_CLKa,      -- All instances share the same select input.
              i_RST     => i_RS,  -- ith instance's data 0 input hooked up to ith data 0 input.
              i_WE     => i_E,  -- ith instance's data 1 input hooked up to ith data 1 input.
              i_D      => i_Di(i),
              o_Q      => o_Do(i));  -- ith instance's data output hooked up to ith data output.
  end generate G_NBIT_REG;
  
end structural;
