-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- AdderS.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a structural schematic of Adder
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity AdderS is
  port(A   : in std_logic;
       B   : in std_logic;
       C   : in std_logic;
       o_OA  : out std_logic;
       o_OB  : out std_logic);

end AdderS;

architecture structural of AdderS is
  
  component andg2
  port(i_A          : in std_logic;
       i_B          : in std_logic;
       o_F          : out std_logic);
  end component;

  component org2  
  port(i_A          : in std_logic;
       i_B          : in std_logic;
       o_F          : out std_logic);
  end component;

  component xorg2
  port(i_A          : in std_logic;
       i_B          : in std_logic;
       o_F          : out std_logic);
  end component;

  -- Signals to carry XORs
  signal s_XOR         : std_logic;
  -- Signals to carry and to ors
  signal s_A1, s_A2   : std_logic;
  
begin
  --------------------------------------------------------------------------
  -- Level 0: Load values from inputs
  ---------------------------------------------------------------------------
  g_Xor1: xorg2
   port MAP( i_A     => A,
             i_B     => B,
             o_F     => s_XOR);
   
   g_And2: andg2
    port MAP(i_A     => A,
             i_B     => B,
             o_F     => s_A2);
   --------------------------------------------------------------------------
  -- Level 1: Load values from inputs
  ---------------------------------------------------------------------------
  g_And1: andg2
   port MAP(i_A     => s_XOR,
            i_B     => C,
            o_F     => s_A1);
  g_Xor2: xorg2
   port MAP(i_A     => s_XOR,
            i_B     => C,
            o_F     => o_OA);
  --------------------------------------------------------------------------
  -- Level 2: Load values from inputs
  ---------------------------------------------------------------------------
   g_orG: org2
    port MAP(i_A     => s_A1,
             i_B     => s_A2,
             o_F     => o_OB);

end structural;
