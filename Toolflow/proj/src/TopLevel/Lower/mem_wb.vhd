library IEEE;
use IEEE.std_logic_1164.all;

entity mem_wb is 
    port(
        i_RS : in std_logic;
        i_CLK: in std_logic;
        i_DMEM : in std_logic_vector(31 downto 0);
        i_ALU : in std_logic_vector(31 downto 0);
        i_MoveMUX : in std_logic_vector(31 downto 0);
        i_DMemMUXSel : in std_logic;
        i_DMUXSel : in std_logic;
	i_halt : in std_logic;
	i_regWrite : in std_logic;
	i_regDst : in std_logic_vector(4 downto 0);
	o_regDst : out std_logic_vector(4 downto 0);
	o_halt : out std_logic;
        o_regWrite : out std_logic;
        o_DMemMUXSel : out std_logic;
        o_DMUXSel : out std_logic;
        o_DMEM : out std_logic_vector(31 downto 0);
        o_ALU : out std_logic_vector(31 downto 0);
        o_MoveMUX : out std_logic_vector(31 downto 0));
end entity mem_wb;

architecture structure of mem_wb is

    component NReg
    port(i_CLKa        : in std_logic;     -- Clock input
        i_RS        : in std_logic;     -- Reset input
        i_E         : in std_logic;     -- Write enable input
        i_Di         : in std_logic_vector(31 downto 0);     -- Data value input
        o_Do          : out std_logic_vector(31 downto 0));
    end component;

    component NRegF
    port(
        i_CLKa        : in std_logic;     -- Clock input
        i_RS        : in std_logic;     -- Reset input
        i_E         : in std_logic;     -- Write enable input
        i_Di         : in std_logic_vector(4 downto 0);     -- Data value input
        o_Do          : out std_logic_vector(4 downto 0)
    );
    end component;
    
    component NRegO
    port(i_CLKa        : in std_logic;     -- Clock input
    i_RS        : in std_logic;     -- Reset input
    i_E         : in std_logic;     -- Write enable input
    i_Di         : in std_logic;     -- Data value input
    o_Do          : out std_logic   -- Data value output
    );
    end component;

    begin
    haltR : NRegO
    port map(
        i_CLKa => i_CLK,
        i_RS => i_RS,
        i_E => '1',
        i_Di => i_halt,
        o_Do => o_halt
    );
    regWriteR : NRegO
    port map(
	i_CLKa => i_CLK,
            i_RS => i_RS,
            i_E => '1',
            i_Di => i_regWrite,
            o_Do => o_regWrite
    );
    dmem_reg: NReg 
    port map(
            i_CLKa => i_CLK,
            i_RS => i_RS,
            i_E => '1',
            i_Di => i_DMEM,
            o_Do => o_DMEM
    );

    alu_reg: NReg 
    port map(
            i_CLKa => i_CLK,
            i_RS => i_RS,
            i_E => '1',
            i_Di => i_ALU,
            o_Do => o_ALU
    );

    MoveMUX_reg: NReg 
    port map(
            i_CLKa => i_CLK,
            i_RS => i_RS,
            i_E => '1',
            i_Di => i_MoveMUX,
            o_Do => o_MoveMUX
    );

    regDstR : NRegF
    port map(
        i_CLKa => i_CLK,
       i_RS => i_RS,
       i_E => '1',
       i_Di => i_regDst,
       o_Do => o_regDst
    );

    DataMemMUXSel: NRegO
    port map(
        i_CLKa => i_CLK,
       i_RS => i_RS,
       i_E => '1',
       i_Di => i_DMemMUXSel,
       o_Do => o_DMemMUXSel
    );

    DataMUXSel: NRegO
    port map(
        i_CLKa => i_CLK,
       i_RS => i_RS,
       i_E => '1',
       i_Di => i_DMUXSel,
       o_Do => o_DMUXSel
    );



end structure;
