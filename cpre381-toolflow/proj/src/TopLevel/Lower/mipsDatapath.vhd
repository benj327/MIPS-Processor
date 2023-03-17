-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- mipsDatapath.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a structural schematic of Adder/Subtractor with control
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mipsDatapath is
    generic(N : integer := 32 ; M : integer := 5);
  port(CLK        : in std_logic;     -- Clock input
       reset        : in std_logic;     -- Reset input
       saddSub         : in std_logic;     -- Write enable input
       ALUSrc        : in std_logic;  
       WE           : in std_logic;
       src1         : in std_logic_vector(M-1 downto 0);     -- src1 input
       src2          : in std_logic_vector(M-1 downto 0);    -- src2 input
       dstR          : in std_logic_vector(M-1 downto 0);    -- Destination Register
       imme           : in std_logic_vector(N-1 downto 0);    -- Data write
       o_src1        : out std_logic_vector(N-1 downto 0);    -- src1 output
       o_src2          : out std_logic_vector(N-1 downto 0));   -- src2 output

end mipsDatapath;

architecture structural of mipsDatapath is
  
  component regFile
  port(CLK        : in std_logic;     -- Clock input
  i_R        : in std_logic;     -- Reset input
  i_E         : in std_logic;     -- Write enable input
  src1         : in std_logic_vector(M-1 downto 0);     -- src1 input
  src2          : in std_logic_vector(M-1 downto 0);    -- src2 input
  dstR          : in std_logic_vector(M-1 downto 0);    -- Destination Register
  i_D           : in std_logic_vector(N-1 downto 0);    -- Data write
  o_src1        : out std_logic_vector(N-1 downto 0);    -- src1 output
  o_src2          : out std_logic_vector(N-1 downto 0));   -- src2 output
  end component;

  component AddSub
  port(i_A  : in std_logic_vector(N-1 downto 0);
  i_B  : in std_logic_vector(N-1 downto 0);
  i_Cin  : in std_logic; --Control for add/ subtract 0/1
  o_O  : out std_logic_vector(N-1 downto 0);
  o_Cout  : out std_logic); 
  end component;

  component mux2t1_N
  port(i_S          : in std_logic;
  i_D0         : in std_logic_vector(N-1 downto 0);
  i_D1         : in std_logic_vector(N-1 downto 0);
  o_O          : out std_logic_vector(N-1 downto 0));
  end component;

  signal regWrite, data1, data2, AluD : std_logic_vector(N-1 downto 0);
  signal s_Cout : std_logic;  --Created to send value to nowhere, since its never used

  begin
    addersub: AddSub
    port MAP(data1, AluD, saddSub, regWrite, s_Cout);

    registerFile: regFile
    port MAP(CLK, reset, WE, src1, src2, dstR, regWrite, data1, data2);

    aluMUX: mux2t1_N
    port MAP(ALUSrc, data2, imme, AluD);

    o_src1 <= data1;
    o_src2 <= data2;
    
end structural;