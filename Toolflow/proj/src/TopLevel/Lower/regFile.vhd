library IEEE;
use IEEE.std_logic_1164.all;
use work.mux2darr.all;

entity regFile is
    generic(N : integer := 32 ; M : integer := 5);
  port(CLK        : in std_logic;     -- Clock input
       i_R        : in std_logic;     -- Reset input
       i_E         : in std_logic;     -- Write enable input
       src1         : in std_logic_vector(M-1 downto 0);     -- src1 input
       src2          : in std_logic_vector(M-1 downto 0);    -- src2 input
       dstR          : in std_logic_vector(M-1 downto 0);    -- Destination Register
       i_D           : in std_logic_vector(N-1 downto 0);    -- Data write
       o_src1        : out std_logic_vector(N-1 downto 0);    -- src1 output
       o_src2          : out std_logic_vector(N-1 downto 0));   -- src2 output

end regFile;

architecture structure of regFile is
    component NReg is
        port(i_CLKa        : in std_logic;     -- Clock input
        i_RS        : in std_logic;     -- Reset input
        i_E         : in std_logic;     -- Write enable input
        i_Di         : in std_logic_vector(N-1 downto 0);     -- Data value input
        o_Do          : out std_logic_vector(N-1 downto 0));   -- Data value output
      end component;

      component mux32t1 is
        port(i_S          : in std_logic_vector(M-1 downto 0);
             i_D         : in t_Memory;
             o_O          : out std_logic_vector(N-1 downto 0));
      end component;

      component Decoder5t32 is
        port(  i_WE         : in std_logic;     -- Write enable input
               i_D         : in std_logic_vector(M-1 downto 0);     -- Data value input
               o_Do          : out std_logic_vector(N-1 downto 0));   -- Data value output
      end component;

      signal s_CLK, s_R, s_E   : std_logic;
      signal s_WE : std_logic_vector(N-1 downto 0);
      signal t_Memory : t_Memory;
    
    begin
        ---------------------------------------------------------------------------
        -- Level 0: Decoder inputs
        ---------------------------------------------------------------------------
        decoder: Decoder5t32
        port map(i_WE           => i_E,
                 i_D               => dstR,
                 o_Do              => s_WE);
        ---------------------------------------------------------------------------
        -- Level 1: Loading values into NRegs
        ---------------------------------------------------------------------------
        reg0: NReg
        port MAP(i_CLKa   => CLK,     -- Clock input
        i_RS       => '1',     -- Reset input
        i_E        =>  s_WE(0),     -- Write enable input
        i_Di        =>  i_D,     -- Data value input
        o_Do          => t_Memory(0));   -- Data value output
        
        G_NBit_REG: for i in 1 to N-1 generate
        NREGs: NReg port map(i_CLKa      => CLK,       -- Clock input
                      i_RS        => i_R,     -- Reset input
                      i_E         => s_WE(i),     -- Write enable input
                      i_Di        => i_D,       -- Data value input
                      o_Do        => t_Memory(i));
        end generate G_NBit_REG;

        ---------------------------------------------------------------------------
        -- Level 2: 
        ---------------------------------------------------------------------------
        mux1 : mux32t1
        port map(i_S     => src1,
                 i_D     => t_Memory,
                 o_O     => o_src1);
        mux2 : mux32t1
        port map(i_S     => src2,
                 i_D     => t_Memory,
                 o_O     => o_src2);

end structure;