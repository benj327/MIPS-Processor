-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- mux2t1.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains the 2 to 1 MUX component
--
--
-- NOTES:
-- 9/1/2022
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mux2t1 is

  port(X          : in std_logic;
       Y          : in std_logic;
       S          : in std_logic;
       O          : out std_logic);

end mux2t1;

architecture structure of mux2t1 is

  component invg
    port(i_A	: in std_logic;
         o_F	: out std_logic);
  end component;

  component andg2
    port(i_A	: in std_logic;
         i_B    : in std_logic;
	 o_F	: out std_logic);
  end component;
  
  component org2
    port(i_A	: in std_logic;
	 i_B	: in std_logic;
         o_F	: out std_logic);
  end component;

  signal n_W        : std_logic;
  signal a_X, a_Y   : std_logic;
begin
  ---------------------------------------------------------------------------
  -- Level 0: Load components 
  ---------------------------------------------------------------------------

  g_Not: invg
    port MAP(i_A     => S,
             o_F     => n_W);

  g_And1: andg2
    port MAP(i_A     => X,
             i_B     => n_W,
             o_F     => a_X);

  g_And2: andg2
    port MAP(i_A     => Y,
             i_B     => S,
             o_F     => a_Y);
---------------------------------------------------------------------------
  -- Level 1: Putting inputs into or gate to calculate output
  ---------------------------------------------------------------------------
  g_Or: org2
    port MAP(i_A     => a_X,
             i_B     => a_Y,
             o_F     => O);

end structure;

             
