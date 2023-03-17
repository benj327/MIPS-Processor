library IEEE;
use IEEE.std_logic_1164.all;

entity NRegO is
    generic(N : integer := 1);
  port(i_CLKa        : in std_logic;     -- Clock input
       i_RS        : in std_logic;     -- Reset input
       i_E         : in std_logic;     -- Write enable input
       i_Di         : in std_logic;     -- Data value input
       o_Do          : out std_logic   -- Data value output
);
end NRegO;

architecture structural of NRegO is
  
  component dffg
  port(i_CLK        : in std_logic;     -- Clock input
       i_RST        : in std_logic;     -- Reset input
       i_WE         : in std_logic;     -- Write enable input
       i_D          : in std_logic;     -- Data value input
       o_Q          : out std_logic);   -- Data value output
  end component;

begin
    g_dffg: dffg port map(
              i_CLK      => i_CLKa,      -- All instances share the same select input.
              i_RST     => i_RS,  -- ith instance's data 0 input hooked up to ith data 0 input.
              i_WE     => i_E,  -- ith instance's data 1 input hooked up to ith data 1 input.
              i_D      => i_Di,
              o_Q      => o_Do  -- ith instance's data output hooked up to ith data output.
    );
end structural;
