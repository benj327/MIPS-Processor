library IEEE;
use IEEE.std_logic_1164.all;

entity aluLogical is 
    port(
        i_A : in std_logic_vector(31 downto 0);
        i_B : in std_logic_vector(31 downto 0);
        i_control : in std_logic_vector(2 downto 0);
        o_result : out std_logic_vector(31 downto 0)
    );
end entity aluLogical;

architecture structure of aluLogical is


    --signals
    signal result : std_logic_vector(31 downto 0);
    signal imm : std_logic_vector(7 downto 0);
    signal imm16a : std_logic_vector(15 downto 0);
    signal imm16b : std_logic_vector(15 downto 0);


    --logic
        --we can use basic operations on vectors in vhdl

    begin
        imm <= i_B(7 downto 0);
        imm16a <= i_A(15 downto 0);
        imm16b <= i_B(15 downto 0);

        with i_control select
        result <= not i_A when "000",
                   i_A nor i_B when "001",
                   i_A xor i_B when "010",
                   i_A or i_B when "011",
                   i_A and i_B when "100",
                   imm & imm & imm & imm when "101",
                   imm16b & imm16a when "110",
                   i_A when "111",
                   i_A when others;

        o_result <= result;

end structure;