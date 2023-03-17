-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- AddSub.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a structural schematic of Adder/Subtractor with control
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity AddSub is
    generic(N : integer := 32);
    port(i_A  : in std_logic_vector(N-1 downto 0);
         i_B  : in std_logic_vector(N-1 downto 0);
         i_Cin  : in std_logic; --Control for add/ subtract 0/1
         o_O  : out std_logic_vector(N-1 downto 0);
         o_Cout  : out std_logic); --Overflow

end AddSub;

architecture structural of AddSub is
  
  component NBitAdder
  port(i_A  : in std_logic_vector(N-1 downto 0);
       i_B  : in std_logic_vector(N-1 downto 0);
       i_C  : in std_logic;
       o_O  : out std_logic_vector(N-1 downto 0);
       o_C  : out std_logic); 
  end component;

  component OnesComp
  port(i_I          : in std_logic_vector(N-1 downto 0);
       o_O          : out std_logic_vector(N-1 downto 0));
  end component;
  
  component mux2t1_N
  port(i_S          : in std_logic;
       i_D0         : in std_logic_vector(N-1 downto 0);
       i_D1         : in std_logic_vector(N-1 downto 0);
       o_O          : out std_logic_vector(N-1 downto 0));
  end component;

  -- Signals to carry and to ors
  signal s_In, s_Mux  : std_logic_vector(N-1 downto 0);
begin
Inverter: OnesComp port map(
    i_I    => i_B,
    o_O    => s_In);
NMux: mux2t1_N port map(
    i_S     => i_Cin,
    i_D0    => i_B,
    i_D1    => s_In,
    o_O     => s_Mux);
AdderN: NBitAdder port map(
    i_A     => i_A,
    i_B    => s_Mux,
    i_C     => i_Cin,
    o_O     => o_O,  
    o_C     => o_Cout);

end structural;