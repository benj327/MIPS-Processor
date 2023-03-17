library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_textio.all;  -- For logic types I/O
library std;
use std.env.all;                -- For hierarchical/external signals
use std.textio.all;             -- For basic I/O

-- Usually name your testbench similar to below for clarity tb_<name>
-- TODO: change all instances of tb_rightBarrelShifter to reflect the new testbench.
entity tb_control is
  generic(gCLK_HPER   : time := 10 ns; P : integer := 6);   -- Generic for half of the clock cycle period
end tb_control;

architecture mixed of tb_control is

-- Define the total clock period time
constant cCLK_PER  : time := gCLK_HPER * 2;
constant N : integer := 32;

-- We will be instantiating our design under test (DUT), so we need to specify its
-- component interface.
-- TODO: change component declaration as needed.
component control is
	port(
        Opcode             : in std_logic_vector(P-1 downto 0);
       funct              : in std_logic_vector(P-1 downto 0);
       RegDst                : out std_logic_vector(1 downto 0); --00 for writing to rt, 01 for writing to rd, 10 JumpAddr for writing to r[31]
       Jump                : out std_logic;
       Branch              : out std_logic;
       MemRead                : out std_logic;
       MemtoReg                : out std_logic;
       ALUOp                : out std_logic_vector(8 downto 0);
       MemWrite               : out std_logic;
       ALUSrc                : out std_logic;
       RegWrite                : out std_logic;
       MoveN                  : out std_logic;      -- Simple mux that writes [rs] to RegWrite
       SignOrU                : out std_logic;      --0 for signed, 1 for unsigned
       Jr                     : out std_logic
    );
end component;

-- Create signals for all of the inputs and outputs of the file that you are testing
-- := '0' or := (others => '0') just make all the signals start at an initial value of zero
signal OpcodeS, functS : std_logic_vector(P-1 downto 0);
signal jumpS, BranchS, MemReadS, MemtoRegS, MemWriteS, ALUSrcS, RegWriteS, MoveNS, SignOrUS, JrS : std_logic;
signal regDstS : std_logic_vector(1 downto 0);
signal ALUOpS : std_logic_vector(8 downto 0);

signal CLK, reset : std_logic := '0';

begin

  -- TODO: Actually instantiate the component to test and wire all signals to the corresponding
  -- input or output. Note that DUT0 is just the name of the instance that can be seen 
  -- during simulation. What follows DUT0 is the entity name that will be used to find
  -- the appropriate library component during simulation loading.
  DUT0: control
  port map(
    Opcode         => OpcodeS,
       funct       => functS,
       RegDst      => regDstS,     
       Jump        => jumpS,       
       Branch      => BranchS,      
       MemRead     => MemReadS,        
       MemtoReg    => MemtoRegS,      
       ALUOp       => ALUOpS,   
       MemWrite    => MemWriteS,        
       ALUSrc      => ALUSrcS,       
       RegWrite    => RegWriteS,   
       MoveN       => MoveNS,   
       SignOrU     => SignOrUS,
       Jr          => JrS 
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

    --test case 1 expect output from add
    OpcodeS <= "000000";
    functS  <= "100000";
    wait for gCLK_HPER*2;

    
    wait for gCLK_HPER*2;

   
    wait for gCLK_HPER*2;

    
    wait for gCLK_HPER*2;

    
    wait for gCLK_HPER*2;
    

    end process;

    end mixed;