library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;  -- For logic types I/O
library std;
use std.env.all;                -- For hierarchical/external signals
use std.textio.all;             -- For basic I/O

-- Usually name your testbench similar to below for clarity tb_<name>
-- TODO: change all instances of tb_rightBarrelShifter to reflect the new testbench.
entity tb_aluLogical is
  generic(gCLK_HPER   : time := 10 ns);   -- Generic for half of the clock cycle period
end tb_aluLogical;

architecture mixed of tb_aluLogical is

-- Define the total clock period time
constant cCLK_PER  : time := gCLK_HPER * 2;
constant N : integer := 32;

-- We will be instantiating our design under test (DUT), so we need to specify its
-- component interface.
-- TODO: change component declaration as needed.
component aluLogical is
	port(
        i_A : in std_logic_vector(31 downto 0);
        i_B : in std_logic_vector(31 downto 0);
        i_control : in std_logic_vector(2 downto 0);
        o_result : out std_logic_vector(31 downto 0)
    );
end component;

-- Create signals for all of the inputs and outputs of the file that you are testing
-- := '0' or := (others => '0') just make all the signals start at an initial value of zero
signal s_iA : std_logic_vector(31 downto 0);
signal s_iB : std_logic_vector(31 downto 0);
signal s_oResult : std_logic_vector(31 downto 0);
signal s_iControl : std_logic_vector(2 downto 0);

signal CLK, reset : std_logic := '0';

begin

  -- TODO: Actually instantiate the component to test and wire all signals to the corresponding
  -- input or output. Note that DUT0 is just the name of the instance that can be seen 
  -- during simulation. What follows DUT0 is the entity name that will be used to find
  -- the appropriate library component during simulation loading.
  DUT0: aluLogical
  port map(
    i_A => s_iA,
    i_control => s_iControl,
    i_B => s_iB,
    o_result => s_oResult
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

    -- Test case 1: expect not a (0 then 31 1's)
    s_iA <= "10000000000000000000000000000000";
    s_iControl <= "000";
    s_iB <= "10000000000000000000000000000000";
    wait for gCLK_HPER*2;

    --Test case 2: expect not a (0 then 31 1's)
    s_iA <= "10000000000000000000000000000000";
    s_iControl <= "000";
    s_iB <= "10000000000000000000000000000000";
    wait for gCLK_HPER*2;

    --Test case 3: expect a nor b 11 28 0's 11
    s_iA <= "11000000000000000000000000000011";
    s_iControl <= "001";
    s_iB <= "11000000000000000000000000000000";
    wait for gCLK_HPER*2;

    --Test case 4: expect a or b 5 1's on each end
    s_iA <= "11111000000000000000000000011111";
    s_iControl <= "011";
    s_iB <= "00000000000000000000000000000000";
    wait for gCLK_HPER*2;

    --Test case 5: expect a and b 30 1's and 2 0's
    s_iA <= "11000000000000000000000000000011";
    s_iControl <= "100";
    s_iB <= "11000000000000000000000000000000";
    wait for gCLK_HPER*2;
    

    end process;

    end mixed;