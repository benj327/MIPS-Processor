library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;  -- For logic types I/O
library std;
use std.env.all;                -- For hierarchical/external signals
use std.textio.all;             -- For basic I/O

entity tb_ALU is
    generic(gCLK_HPER   : time := 10 ns);
end tb_ALU;

architecture structure of tb_ALU is

    -- Define the total clock period time
constant cCLK_PER  : time := gCLK_HPER * 2;
constant N : integer := 32;

--test component
--for test purposes, initializing with following ports, subject to change
component ALU is 
    port(
        Rs : in std_logic_vector(31 downto 0);
        Rt : in std_logic_vector(31 downto 0);
        ALUOp : in std_logic_vector(8 downto 0);
        ShiftA : in std_logic_vector(4 downto 0);
        BranchE : out std_logic;
        ALUOut : out std_logic_vector(31 downto 0)
    );
end component;

--signals
signal CLK, reset : std_logic := '0';
signal s_Rs : std_logic_vector(31 downto 0);
signal s_Rt : std_logic_vector(31 downto 0);
signal s_ALUOp : std_logic_vector(8 downto 0);
signal s_ShiftA : std_logic_vector(4 downto 0);
signal s_BranchE : std_logic;
signal s_ALUOut : std_logic_vector(31 downto 0);



--test
begin

    -- TODO: Actually instantiate the component to test and wire all signals to the corresponding
    -- input or output. Note that DUT0 is just the name of the instance that can be seen 
    -- during simulation. What follows DUT0 is the entity name that will be used to find
    -- the appropriate library component during simulation loading.
    DUT0: ALU
    port map(

        Rs => s_Rs,
        Rt => s_Rt,
        ALUOp => s_ALUOp,
        ShiftA => s_ShiftA,
        BranchE => s_BranchE,
        ALUOut => s_ALUOut

    );
    --You can also do the above port map in one line using the below format: http://www.ics.uci.edu/~jmoorkan/vhdlref/compinst.html
  
    
    --This first process is to setup the clock for the test bench
    P_CLK: process
    begin
      CLK <= '1';         -- clock starts at 1
      wait for gCLK_HPER; -- after half a cycle
      CLK <= '0';         -- clock becomes a 0 (negative edge)
      wait for gCLK_HPER; -- after half a cycle, process begins evaluation again
    end process;
  
    -- This process resets the sequential components of the design.
    -- It is held to be 1 across both the negative and positive edges of the clock
    -- so it works regardless of whether the design uses synchronous (pos or neg edge)
    -- or asynchronous resets.
    P_RST: process
    begin
        reset <= '0';   
      wait for gCLK_HPER/2;
      reset <= '1';
      wait for gCLK_HPER*2;
      reset <= '0';
      wait;
    end process;  
    
    P_TEST_CASES: process
    begin
        wait for gCLK_HPER/2; -- for waveform clarity, I prefer not to change inputs on clk edges
        --test cases here

        --test add - opcode 000000000 - expect 0000000000000000000000000000000000001111
        s_Rs <= "00000000000000000000000000000000";
        s_Rt <= "00000000000000000000000000001111";
        s_ALUOp <= "000000000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test sub - opcode 000100000 - expect 00000000000000000000000000000011
        s_Rs <= "00000000000000000000000000001111";
        s_Rt <= "00000000000000000000000000000011";
        s_ALUOp <= "000100000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test not - opcode 001000000 - expect 11111111111111111111111111111111
        s_Rs <= "00000000000000000000000000000000";
        s_Rt <= "00000000000000000000000000000011";
        s_ALUOp <= "001000000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test slt - opcode 100100000 - 

        --test and - opcode 001001000 - expect 00000000000000000000000000000010
        s_Rs <= "00000000000000000000000000000010";
        s_Rt <= "00000000000000000000000000000011";
        s_ALUOp <= "001001000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test or - 001000110 - expect 11111111111111111111111111111100
        s_Rs <= "11111111111111111111111111111111";
        s_Rt <= "00000000000000000000000000000011";
        s_ALUOp <= "001000110";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test xor - 001000100 - expect 11111111111111111111111111111100
        s_Rs <= "11111111111111111111111111111110";
        s_Rt <= "00000000000000000000000000000010";
        s_ALUOp <= "001000100";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test nor - 001000010 - expect 00000000000000000000000000000001
        s_Rs <= "11111111111111111111111111111110";
        s_Rt <= "00000000000000000000000000000010";
        s_ALUOp <= "001000010";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test sll - 011000000 - expect 11111111111111111111100000000000
        s_Rs <= "11111111111111111111111111111000";
        s_Rt <= "11111111111111111111111111111000";
        s_ALUOp <= "011000000";
        s_ShiftA <= "00100";
        wait for gCLK_HPER*2;

        --test srl - 010000000 - expect 1111111111111111111111111111111
        s_Rs <= "11111111111111111111111111111000";
        s_Rt <= "11111111111111111111111111111000";
        s_ALUOp <= "010000000";
        s_ShiftA <= "00011";
        wait for gCLK_HPER*2;

        --test sra - 010000001 - fill in msb for each shift value - expect 1111111111111111111111111111111111111
        s_Rs <= "11111111111111111111111111111000";
        s_Rt <= "11111111111111111111111111111000";
        s_ALUOp <= "010000001";
        s_ShiftA <= "00011";
        wait for gCLK_HPER*2;

        --test repl.qb - 001001010 - expect 111110001111100011111000
        s_Rs <= "11111111111111111111111111111000";
        s_Rt <= "11111111111111111111111111111000";
        s_ALUOp <= "001001010";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test movn - 001001110 - expect 0000000000000001111111111111111
        s_Rs <= "11111111111111111111111111111111";
        s_Rt <= "00000000000000000000000000000000";
        s_ALUOp <= "001001110";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test lui - 001001100 
        s_Rs <= "11111111111111111111111111111111";
        s_Rt <= "00000000000000000000000000000000";
        s_ALUOp <= "001001110";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test lw - 000000000 - expect 000000000000000000000000000000
        s_Rs <= "11111111111111111111111111111111";
        s_Rt <= "00000000000000000000000000000000";
        s_ALUOp <= "000000000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test sw - 000000000 - expect 00000000000000000000000
        s_Rs <= "11111111111111111111111111111111";
        s_Rt <= "00000000000000000000000000000000";
        s_ALUOp <= "000000000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test beq - 000100000 - expect BranchE to be 1
        s_Rs <= "11111111111111111111111111111111";
        s_Rt <= "11111111111111111111111111111111";
        s_ALUOp <= "000100000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;

        --test bne 000110000 - expect BranchE to be 1
        s_Rs <= "11111111111111111111111111111111";
        s_Rt <= "00000000000000000000000000000000";
        s_ALUOp <= "000110000";
        s_ShiftA <= "00000";
        wait for gCLK_HPER*2;



  end process;

end structure;