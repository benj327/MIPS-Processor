-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- NBitAdder.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a structural schematic of Adder
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity NBitAdder is
  generic(N : integer := 32);
  port(i_A  : in std_logic_vector(N-1 downto 0);
       i_B  : in std_logic_vector(N-1 downto 0);
       i_C  : in std_logic;
       o_O  : out std_logic_vector(N-1 downto 0);
       o_C  : out std_logic); --Overflow

end NBitAdder;

architecture structural of NBitAdder is
  
  component AdderS
  port(A   : in std_logic;
       B   : in std_logic;
       C   : in std_logic;
       o_OA  : out std_logic;
       o_OB  : out std_logic);
  end component;

  -- Signals to carry CINs
  signal s_Cin        : std_logic_vector(N-1 downto 0);
  
begin
    Adder: AdderS port map(
              A       => i_A(0),
              B       => i_B(0),
              C       => i_C,
              o_OA    => o_O(0),  
              o_OB    => s_Cin(0));
  G_NBit: for i in 1 to N-1 generate
    AdderN: AdderS port map(
              A       => i_A(i),
              B       => i_B(i),
              C       => s_Cin(i-1),
              o_OA    => o_O(i),  
              o_OB    => s_Cin(i));
   end generate G_NBit;
              o_C     <= s_Cin(N-1);
end structural;
