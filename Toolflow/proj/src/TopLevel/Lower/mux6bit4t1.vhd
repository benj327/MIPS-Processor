library IEEE;
use IEEE.std_logic_1164.all;

entity mux6bit4t1 is 
    port(
        i_A : in std_logic_vector(4 downto 0);
        i_B : in std_logic_vector(4 downto 0);
        i_C : in std_logic_vector(4 downto 0);
        i_D : in std_logic_vector(4 downto 0);
        i_select : in std_logic_vector(1 downto 0);
        o_result : out std_logic_vector(4 downto 0)
    );
end entity mux6bit4t1;

architecture structure of mux6bit4t1 is


    --signals
    signal result : std_logic_vector(4 downto 0);

    --logic
        --we can use basic operations on vectors in vhdl

    begin
        with i_select select
        result <=  i_A when "00",
                   i_B when "01",
                   i_C when "10",
                   i_D when "11",
		   i_A when others;
		

        o_result <= result;

end structure;