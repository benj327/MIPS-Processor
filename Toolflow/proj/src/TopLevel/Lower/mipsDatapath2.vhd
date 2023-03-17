-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- mipsDatapath2.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a structural schematic of Adder/Subtractor with control
--
--
-- NOTES:
-- 1/6/20 by H3::Created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mipsDatapath2 is
    generic(N : integer := 32 ; M : integer := 5;DATA_WIDTH : natural := 32; ADDR_WIDTH : natural := 10);
  port(CLK        : in std_logic;     -- Clock input
       reset        : in std_logic;     -- Reset input
       saddSub         : in std_logic;     -- Write enable input
       ALUSrc        : in std_logic;
       storeD       : in std_logic;  
       loadD           : in std_logic;
       WE           : in std_logic;
       src1         : in std_logic_vector(M-1 downto 0);     -- src1 input
       src2          : in std_logic_vector(M-1 downto 0);    -- src2 input
       dstR          : in std_logic_vector(M-1 downto 0);    -- Destination Register
       imme           : in std_logic_vector(15 downto 0);    -- Data write
       o_src1        : out std_logic_vector(N-1 downto 0);    -- src1 output
       o_src2          : out std_logic_vector(N-1 downto 0));   -- src2 output

end mipsDatapath2;

architecture structural of mipsDatapath2 is
  
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

  component extender
	port 
	(
		i_Data : in std_logic_vector(15 downto 0);
        i_sign : in std_logic; --0 for zero, 1 for sign
        o_Data : out std_logic_vector(31 downto 0)
	);
  end component;

  component mem
	port 
	(
		clk		: in std_logic;
		addr	        : in std_logic_vector((ADDR_WIDTH-1) downto 0);
		data	        : in std_logic_vector((DATA_WIDTH-1) downto 0);
		we		: in std_logic := '1';
		q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
	);
  end component;

  signal regWrite, data1, data2, AluD, memD, immeV, regIn  : std_logic_vector(N-1 downto 0);
  signal s_Cout : std_logic;  --Created to send value to nowhere, since its never used
  signal memAddr : std_logic_vector(9 downto 0);    --Gets address from addsub output

  begin
    addersub: AddSub
    port MAP(data1, AluD, saddSub, regWrite, s_Cout);

    registerFile: regFile
    port MAP(CLK, reset, WE, src1, src2, dstR, regIn, data1, data2);

    aluMUX: mux2t1_N
    port MAP(ALUSrc, data2, immeV, AluD);

    extended: extender
    port MAP(imme, '1', immeV);

    dmem: mem
    port MAP(CLK, memAddr, data2, storeD, memD);

    regDMUX: mux2t1_N
    port MAP(loadD, regWrite, memD, regIn);

    memAddr(9 downto 0) <= regWrite(9 downto 0);
    o_src1 <= data1;
    o_src2 <= data2;
    
end structural;