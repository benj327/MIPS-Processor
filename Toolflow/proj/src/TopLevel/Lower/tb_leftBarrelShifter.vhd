-------------------------------------------------------------------------
-- Henry Duwe
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------
-- tb_leftBarrelShifter.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a testbench for the TPU MAC unit.
--              
-- 01/03/2020 by H3::Design created.
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;  -- For logic types I/O
library std;
use std.env.all;                -- For hierarchical/external signals
use std.textio.all;             -- For basic I/O

-- Usually name your testbench similar to below for clarity tb_<name>
-- TODO: change all instances of tb_leftBarrelShifter to reflect the new testbench.
entity tb_leftBarrelShifter is
  generic(gCLK_HPER   : time := 10 ns);   -- Generic for half of the clock cycle period
end tb_leftBarrelShifter;

architecture mixed of tb_leftBarrelShifter is

-- Define the total clock period time
constant cCLK_PER  : time := gCLK_HPER * 2;
constant N : integer := 32;

-- We will be instantiating our design under test (DUT), so we need to specify its
-- component interface.
-- TODO: change component declaration as needed.
component leftBarrelShifter is
	port(
        i_X : in std_logic_vector(31 downto 0);
        i_Shift : in std_logic_vector(4 downto 0);
        o_Y : out std_logic_vector(31 downto 0)
    );
end component;

-- Create signals for all of the inputs and outputs of the file that you are testing
-- := '0' or := (others => '0') just make all the signals start at an initial value of zero
signal CLK, reset : std_logic := '0';
signal s_iX : std_logic_vector(31 downto 0);
signal s_oY : std_logic_vector(31 downto 0);
signal s_iShift : std_logic_vector(4 downto 0);

begin

  -- TODO: Actually instantiate the component to test and wire all signals to the corresponding
  -- input or output. Note that DUT0 is just the name of the instance that can be seen 
  -- during simulation. What follows DUT0 is the entity name that will be used to find
  -- the appropriate library component during simulation loading.
  DUT0: leftBarrelShifter
  port map(
    i_X => s_iX,
    i_Shift => s_iShift,
    o_Y => s_oY
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
  
  -- Assign inputs for each test case.
  -- TODO: add test cases as needed.
  P_TEST_CASES: process
  begin
    wait for gCLK_HPER/2; -- for waveform clarity, I prefer not to change inputs on clk edges

    -- Test case 1:
    s_iX <= "00000000000000000000000000000001";
    s_iShift <= "00001";
    wait for gCLK_HPER*2;

    -- Test case 2:
    s_iX <= "00000000000000000000000000000001";
    s_iShift <= "00010";
    wait for gCLK_HPER*2;

    -- Test case 3:
    s_iX <= "00000000000000000000000000000001";
    s_iShift <= "01110";
    wait for gCLK_HPER*2;

    -- Test case 4:
    s_iX <= "00000000000000000000000000000001";
    s_iShift <= "11111";
    wait for gCLK_HPER*2;

    -- Test case 5:
    s_iX <= "00000000000000000000000000000001";
    s_iShift <= "00000";
    wait for gCLK_HPER*2;

    --NEW i_X
    s_iX <= "00000000111111110000000011111111";
    s_iShift <= "00001";
    wait for gCLK_HPER*2;

    -- Test case 2:
    s_iX <= "00000000111111110000000011111111";
    s_iShift <= "00010";
    wait for gCLK_HPER*2;

    -- Test case 3:
    s_iX <= "00000000111111110000000011111111";
    s_iShift <= "01110";
    wait for gCLK_HPER*2;

    -- Test case 4:
    s_iX <= "00000000111111110000000011111111";
    s_iShift <= "11111";
    wait for gCLK_HPER*2;

    -- Test case 5:
    s_iX <= "00000000111111110000000011111111";
    s_iShift <= "00000";
    wait for gCLK_HPER*2;




  end process;

end mixed;-------------------------------------------------------------------------