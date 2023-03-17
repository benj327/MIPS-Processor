library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extender is
	port 
	(
		i_Data : in std_logic_vector(15 downto 0);
        i_sign : in std_logic; --0 for zero, 1 for sign
        o_Data : out std_logic_vector(31 downto 0)
	);

end extender;

architecture behavior of extender is

begin
    process (i_Data, i_sign)
    begin
        o_Data(15 downto 0) <= i_Data;
        for i in 16 to 31 loop
            o_Data(i) <= (i_Data(15) and i_sign);
        end loop;
    end process;
end behavior;