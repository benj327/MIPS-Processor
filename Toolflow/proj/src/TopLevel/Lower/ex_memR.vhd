library IEEE;
use IEEE.std_logic_1164.all;

entity ex_memR is 
    port(
        i_RS : in std_logic;
        i_CLK: in std_logic;

        i_memToReg: in std_logic;
        i_regWrite: in std_logic;
        i_regDst : in std_logic_vector(4 downto 0);
        i_moveV : in std_logic_vector(31 downto 0);
        i_ALU : in std_logic_vector(31 downto 0);
        i_B : in std_logic_vector(31 downto 0);
        i_dataMux : in std_logic;
	i_memWrite : in std_logic;
	i_halt : in std_logic;
	o_memWrite : out std_logic;
        o_ALU : out std_logic_vector(31 downto 0);
        o_B : out std_logic_vector(31 downto 0);
	o_halt : out std_logic;
        o_memToReg: out std_logic;
        o_regDst : out std_logic_vector(4 downto 0);
        o_dataMux : out std_logic;
        o_regWrite: out std_logic;
        o_moveV : out std_logic_vector(31 downto 0)
    );
end entity ex_memR;

architecture structure of ex_memR is

    component NRegO
    port(i_CLKa        : in std_logic;     -- Clock input
        i_RS        : in std_logic;     -- Reset input
        i_E         : in std_logic;     -- Write enable input
        i_Di         : in std_logic;     -- Data value input
        o_Do          : out std_logic
    );
    end component;


    component NReg
    port(
        i_CLKa        : in std_logic;     -- Clock input
        i_RS        : in std_logic;     -- Reset input
        i_E         : in std_logic;     -- Write enable input
        i_Di         : in std_logic_vector(31 downto 0);     -- Data value input
        o_Do          : out std_logic_vector(31 downto 0) 
    );
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

    begin

    memWriteR : NRegO
    port map(
        i_CLKa => i_CLK,
        i_RS => i_RS,
        i_E => '1',
        i_Di => i_memWrite,
        o_Do => o_memWrite
    );
    haltR : NRegO
    port map(
        i_CLKa => i_CLK,
        i_RS => i_RS,
        i_E => '1',
        i_Di => i_halt,
        o_Do => o_halt
    );

        dataMux: NRegO 
    port map(
        i_CLKa  => i_CLK,
        i_RS    => i_RS,
        i_E     => '1',
        i_Di    => i_dataMux,     
        o_Do    => o_dataMux
    );

    memToRegR: NRegO
    port map(
        i_CLKa  => i_CLK,
        i_RS    => i_RS,
        i_E     => '1',
        i_Di    => i_memToReg,     
        o_Do    => o_memToReg
    );
    regWriteR: NRegO
    port map(
        i_CLKa  => i_CLK,
        i_RS    => i_RS,
        i_E     => '1',
        i_Di    => i_regWrite,     
        o_Do    => o_regWrite
    );

    regDstR: NRegF
    port map(
        i_CLKa  => i_CLK,
        i_RS    => i_RS,
        i_E     => '1',
        i_Di    => i_regDst,     
        o_Do    => o_regDst 
    );
    moveVR : NReg
    port map(
        i_CLKa => i_CLK,
        i_RS => i_RS,
        i_E => '1',
        i_Di => i_moveV,
        o_Do => o_moveV
    );
    ALUR : NReg
    port map(
        i_CLKa => i_CLK,
        i_RS => i_RS,
        i_E => '1',
        i_Di => i_ALU,
        o_Do => o_ALU
    );
    BR : NReg
    port map(
        i_CLKa => i_CLK,
        i_RS => i_RS,
        i_E => '1',
        i_Di => i_B,
        o_Do => o_B
    );


end structure;
