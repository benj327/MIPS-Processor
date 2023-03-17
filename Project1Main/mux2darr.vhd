library IEEE;
use IEEE.std_logic_1164.all;
package mux2darr is
    type t_Memory is array (0 to 31) of std_logic_vector(31 downto 0);
    signal r_Mem : t_Memory;
end package mux2darr;