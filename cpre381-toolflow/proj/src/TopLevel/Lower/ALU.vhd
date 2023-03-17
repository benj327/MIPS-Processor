library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
  generic(N : integer := 32; P : integer := 6);
  port(Rs            : in std_logic_vector(N-1 downto 0);
       Rt              : in std_logic_vector(N-1 downto 0);
       ALUOp                : in std_logic_vector(8 downto 0);
       ShiftA               : in std_logic_vector(4 downto 0);
       BranchE                : out std_logic;
       ALUOut              : out std_logic_vector(N-1 downto 0);
       Overflow : out std_logic);
       --jal control mux 2 to 1
       --make regWrite a 4to1 mux to suit jal
       --jr takes output of readdata1 sends into decoder and uses a mux at the end of fetch (new control line)
       --repl in ALU
       --movn control line
       --bne and beq will be implemented into the ALU (change the zero line out from ALU to be 1 when either is true)

end ALU;

architecture structure of ALU is
 
  component mux32bit4t1
  port(
    i_A : in std_logic_vector(31 downto 0);
    i_B : in std_logic_vector(31 downto 0);
    i_C : in std_logic_vector(31 downto 0);
    i_D : in std_logic_vector(31 downto 0);
    i_select : in std_logic_vector(1 downto 0);
    o_result : out std_logic_vector(31 downto 0)
  );
  end component;

  component mux2t1_N
  port(i_S          : in std_logic;
       i_D0         : in std_logic_vector(N-1 downto 0);
       i_D1         : in std_logic_vector(N-1 downto 0);
       o_O          : out std_logic_vector(N-1 downto 0));
  end component; 

  component AddSub
  port (i_A  : in std_logic_vector(N-1 downto 0);
        i_B  : in std_logic_vector(N-1 downto 0);
        i_Cin  : in std_logic; --Control for add/ subtract 0/1
        o_O  : out std_logic_vector(N-1 downto 0);
        o_Cout  : out std_logic);
  end component;

  component aluLogical
  port (i_A : in std_logic_vector(31 downto 0);
        i_B : in std_logic_vector(31 downto 0);
        i_control : in std_logic_vector(2 downto 0);
        o_result : out std_logic_vector(31 downto 0));
  end component;

  component rightBarrelShifter
  port (i_X : in std_logic_vector(31 downto 0);
        i_Shift : in std_logic_vector(4 downto 0);
        i_LorA : std_logic;
        o_Y : out std_logic_vector(31 downto 0));
  end component;

  component leftBarrelShifter
  port (i_X : in std_logic_vector(31 downto 0);
        i_Shift : in std_logic_vector(4 downto 0);
        o_Y : out std_logic_vector(31 downto 0));
  end component;

  component sltU
  port(SubOut            : in std_logic;
       sltOut             : out std_logic_vector(N-1 downto 0)
       );
  end component;

  component ComparatorUnit
  port (branch_type         : in std_logic;     -- zero when beq, and 1 for bne
        sub_out         : in std_logic_vector(N-1 downto 0);
        do_branch            : out std_logic);
  end component;

  signal AdderO, LogicalO, ShiftRO, ShiftLO, bigMuxO, sltOutO: std_logic_vector(N-1 downto 0);
  signal OverflowV : std_logic;
  begin
      Adder: AddSub port map(
            i_A   => Rs,
            i_B   => Rt,
            i_Cin => ALUOp(5),
            o_O => AdderO,
            o_Cout => OverflowV
      );
      Logical: aluLogical port map(
            i_A       => Rs,
            i_B       => Rt,
            i_control => ALUOp(3 downto 1),
            o_result => logicalO
      );
      

      shiftR: rightBarrelShifter port map(
            i_X       => Rt,
            i_Shift   => ShiftA,
            i_LorA    => ALUOp(0),
            o_Y => ShiftRO
      );
      shiftL: leftBarrelShifter port map(
            i_X       => Rt,
            i_Shift   => ShiftA,
            o_Y => ShiftLO
      );
      comparator: ComparatorUnit port map(
            branch_type  => ALUOp(4),
            sub_out      => AdderO,
            do_branch => BranchE
      );
      sltUnit: sltU port map(
            SubOut       => AdderO(31),
            sltOut => sltOutO
      );
      bigMux: mux32bit4t1 port map(
            i_A          => AdderO,
            i_B          => LogicalO,
            i_C          => ShiftRO,
            i_D          => ShiftLO,
            i_select     => ALUOp(7 downto 6),
            o_result => bigMuxO
      );
      littleMux: mux2t1_N port map(
            i_S      => ALUOp(8),
            i_D0     => bigMuxO,
            i_D1     => sltOutO,
            o_O => ALUOut
      );

      Overflow <= OverflowV;









end structure;
