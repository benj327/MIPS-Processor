library IEEE;
use IEEE.std_logic_1164.all;

entity leftBarrelShifter is 
    port(
        i_X : in std_logic_vector(31 downto 0);
        i_Shift : in std_logic_vector(4 downto 0);
        o_Y : out std_logic_vector(31 downto 0)
    );
end entity leftBarrelShifter;

architecture structural of leftBarrelShifter is 

    component mux2t1_N 
        port(
            i_S          : in std_logic;
       i_D0         : in std_logic_vector(31 downto 0);
       i_D1         : in std_logic_vector(31 downto 0);
       o_O          : out std_logic_vector(31 downto 0)
        );
    end component;

    component invg 
        port(
            i_A          : in std_logic;
            o_F          : out std_logic
        );
    end component;

signal s_MUX1OUT : std_logic_vector(31 downto 0);
signal s_MUX2OUT : std_logic_vector(31 downto 0);
signal s_MUX4OUT : std_logic_vector(31 downto 0);
signal s_MUX8OUT : std_logic_vector(31 downto 0);
signal s_MUX16OUT : std_logic_vector(31 downto 0);

signal s_MUX1IN : std_logic_vector(31 downto 0);
signal s_MUX2IN : std_logic_vector(31 downto 0);
signal s_MUX4IN : std_logic_vector(31 downto 0);
signal s_MUX8IN : std_logic_vector(31 downto 0);
signal s_MUX16IN : std_logic_vector(31 downto 0);


signal s_shift1 : std_logic;
signal s_shift2 : std_logic;
signal s_shift4 : std_logic;
signal s_shift8 : std_logic;
signal s_shift16 : std_logic;

begin 
    s_shift1 <= i_Shift(0);
    s_shift2 <= i_Shift(1);
    s_shift4 <= i_Shift(2);
    s_shift8 <= i_Shift(3);
    s_shift16 <= i_Shift(4);

    --take 31 least significant bits
    s_MUX1IN(31 downto 0) <= i_X(30 downto 0) & "0";
 
    MUX1 : mux2t1_N 
    port map(
        i_S => s_shift1,
        i_D0 => i_X,
        i_D1 => s_MUX1IN,
        o_O => s_MUX1OUT
    );

    --take 30 lsb
    s_MUX2IN(31 downto 0) <= s_MUX1OUT(29 downto 0) & "00";

    MUX2 : mux2t1_N 
    port map(
        i_S => s_shift2,
        i_D0 => s_MUX1OUT,
        i_D1 => s_MUX2IN,
        o_O => s_MUX2OUT	
    );
    --take 28 lsb
    s_MUX4IN(31 downto 0) <= s_MUX2OUT(27 downto 0) & "0000";

    MUX4 : mux2t1_N
    port map(
        i_S => s_shift4,
        i_D0 => s_MUX2OUT,
        i_D1 => s_MUX4IN,
        o_O => s_MUX4OUT
    );

    --take 24 lsb
    s_MUX8IN(31 downto 0) <= s_MUX4OUT(23 downto 0) & "00000000";

    MUX8 : mux2t1_N
    port map(
        i_S => s_shift8,
        i_D0 => s_MUX4OUT,
        i_D1 => s_MUX8IN,
        o_O => s_MUX8OUT
    );

    --take 16 lsb
    s_MUX16IN(31 downto 0) <= s_MUX8OUT(15 downto 0) & "0000000000000000";

    MUX16 : mux2t1_N
    port map(
        i_S => s_shift16,
        i_D0 => s_MUX8OUT,
        i_D1 => s_MUX16IN,
        o_O => o_Y
    );
    

end structural;
