library IEEE;
use IEEE.std_logic_1164.all;

entity if_idR is 
    port(
        i_RS : in std_logic;
        i_CLK: in std_logic;
        i_PC : in std_logic_vector(31 downto 0);
        i_IM : in std_logic_vector(31 downto 0);
        o_IM : out std_logic_vector(31 downto 0);
        o_PC : out std_logic_vector(31 downto 0));
end entity if_idR;

architecture structure of if_idR is

    component NReg
    port(i_CLKa        : in std_logic;     -- Clock input
        i_RS        : in std_logic;     -- Reset input
        i_E         : in std_logic;     -- Write enable input
        i_Di         : in std_logic_vector(31 downto 0);     -- Data value input
        o_Do          : out std_logic_vector(31 downto 0));
    end component;

    begin
    imem_reg: NReg 
    port map(
            i_CLKa => i_CLK,
            i_RS => i_RS,
            i_E => '1',
            i_Di => i_IM,
            o_Do => o_IM
    );
    pc_reg: NReg
    port map(
        i_CLKa => i_CLK,
        i_RS => i_RS,
        i_E => '1',
        i_Di => i_PC,
        o_Do => o_PC
    );
end structure;
