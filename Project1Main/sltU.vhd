library IEEE;
use IEEE.std_logic_1164.all;

entity sltU is
  generic(N : integer := 32; P : integer := 6);
  port(SubOut            : in std_logic;
       Overflow              : in std_logic;
       sltOut             : out std_logic_vector(N-1 downto 0));
       --jal control mux 2 to 1
       --make regWrite a 4to1 mux to suit jal
       --jr takes output of readdata1 sends into decoder and uses a mux at the end of fetch (new control line)
       --repl in ALU
       --movn control line
       --bne and beq will be implemented into the ALU (change the zero line out from ALU to be 1 when either is true)
       
end sltU;

architecture structure of sltU is
    
    signal OverflowC : std_logic;

   -- OverflowC <= SubOut xor Overflow;

    begin
        OverflowC <= SubOut xor Overflow;

        with OverflowC select
        sltOut <= x"00000000" when '0',
                  x"00000001" when others;

end structure;