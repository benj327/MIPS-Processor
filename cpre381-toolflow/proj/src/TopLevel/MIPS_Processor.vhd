-------------------------------------------------------------------------
-- Henry Duwe
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- MIPS_Processor.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains a skeleton of a MIPS_Processor  
-- implementation.

-- 01/29/2019 by H3::Design created.
-------------------------------------------------------------------------


library IEEE;
use IEEE.std_logic_1164.all;

library work;
use work.MIPS_types.all;

entity MIPS_Processor is
  generic(N : integer := DATA_WIDTH);
  port(iCLK            : in std_logic;
       iRST            : in std_logic;
       iInstLd         : in std_logic;
       iInstAddr       : in std_logic_vector(N-1 downto 0);
       iInstExt        : in std_logic_vector(N-1 downto 0);
       oALUOut         : out std_logic_vector(N-1 downto 0)); -- TODO: Hook this up to the output of the ALU. It is important for synthesis that you have this output that can effectively be impacted by all other components so they are not optimized away.

end  MIPS_Processor;


architecture structure of MIPS_Processor is
  --Hopefully control signals
  signal s_Jump  : std_logic; 



  signal s_branch_and : std_logic;
  signal muxtmux : std_logic_vector(N-1 downto 0);
        

  -- Required data memory signals
  signal s_DMemWr       : std_logic; -- TODO: use this signal as the final active high data memory write enable signal
  signal s_DMemAddr     : std_logic_vector(N-1 downto 0); -- TODO: use this signal as the final data memory address input
  signal s_DMemData     : std_logic_vector(N-1 downto 0); -- TODO: use this signal as the final data memory data input
  signal s_DMemOut      : std_logic_vector(N-1 downto 0); -- TODO: use this signal as the data memory output
 
  -- Required register file signals 
  signal s_RegWr        : std_logic; -- TODO: use this signal as the final active high write enable input to the register file
  signal s_RegWrAddr    : std_logic_vector(4 downto 0); -- TODO: use this signal as the final destination register address input
  signal s_RegWrData    : std_logic_vector(N-1 downto 0); -- TODO: use this signal as the final data memory data input

  -- Required instruction memory signals
  signal s_IMemAddr     : std_logic_vector(N-1 downto 0); -- Do not assign this signal, assign to s_NextInstAddr instead
  signal s_NextInstAddr : std_logic_vector(N-1 downto 0); -- TODO: use this signal as your intended final instruction memory address input.
  signal s_Inst         : std_logic_vector(N-1 downto 0); -- TODO: use this signal as the instruction signal 

  -- Required halt signal -- for simulation
  signal s_Halt         : std_logic := '0';  -- TODO: this signal indicates to the simulation that intended program execution has completed. (Opcode: 01 0100)

  -- Required overflow signal -- for overflow exception detection
  signal s_Ovfl         : std_logic;  -- TODO: this signal indicates an overflow exception would have been initiated


  component regFile
  port(CLK        : in std_logic;     -- Clock input
  i_R        : in std_logic;     -- Reset input
  i_E         : in std_logic;     -- Write enable input
  src1         : in std_logic_vector(5-1 downto 0);     -- src1 input
  src2          : in std_logic_vector(5-1 downto 0);    -- src2 input
  dstR          : in std_logic_vector(5-1 downto 0);    -- Destination Register
  i_D           : in std_logic_vector(N-1 downto 0);    -- Data write
  o_src1        : out std_logic_vector(N-1 downto 0);    -- src1 output
  o_src2          : out std_logic_vector(N-1 downto 0));   -- src2 output
  end component;

  component mem is
    generic(ADDR_WIDTH : integer;
            DATA_WIDTH : integer);
    port(
          clk          : in std_logic;
          addr         : in std_logic_vector((ADDR_WIDTH-1) downto 0);
          data         : in std_logic_vector((DATA_WIDTH-1) downto 0);
          we           : in std_logic := '1';
          q            : out std_logic_vector((DATA_WIDTH -1) downto 0));
    end component;

    component andg2 is
      port(i_A          : in std_logic;
      i_B          : in std_logic;
      o_F          : out std_logic);
      end component;

    component shiftL2 
    port(i_I          : in std_logic_vector(31 downto 0);
       o_O          : out std_logic_vector(31 downto 0));
    end component;

    component extender
    port 
    (
      i_Data : in std_logic_vector(15 downto 0);
          i_sign : in std_logic; --0 for zero, 1 for sign
          o_Data : out std_logic_vector(31 downto 0)
    );
    end component;

    component mux2t1_N
    port(i_S          : in std_logic;
         i_D0         : in std_logic_vector(N-1 downto 0);
         i_D1         : in std_logic_vector(N-1 downto 0);
         o_O          : out std_logic_vector(N-1 downto 0));
         end component;

    component mux6bit4t1
    port(
      i_A : in std_logic_vector(4 downto 0);
        i_B : in std_logic_vector(4 downto 0);
        i_C : in std_logic_vector(4 downto 0);
        i_D : in std_logic_vector(4 downto 0);
        i_select : in std_logic_vector(1 downto 0);
        o_result : out std_logic_vector(4 downto 0)
    );
    end component;

component control is
  generic(N : integer := 32; P : integer := 6);
    port(Opcode             : in std_logic_vector(P-1 downto 0);
         funct              : in std_logic_vector(P-1 downto 0);
         RegDst                : out std_logic_vector(1 downto 0); --00 for writing to rt, 01 for writing to rd, 10 JumpAddr for writing to r[31]
         Jump                : out std_logic;
         Branch              : out std_logic;
         Halt                 :out std_logic;
         MemtoReg                : out std_logic;
         ALUOp                : out std_logic_vector(8 downto 0);
         MemWrite               : out std_logic;
         ALUSrc                : out std_logic;
         RegWrite                : out std_logic;
         MoveN                  : out std_logic;      -- Simple mux that writes [rs] to RegWrite
         SignOrU                : out std_logic;      --0 for signed, 1 for unsigned
         Jr                     : out std_logic
            );     --Sent Mux from [rs] to PC 
  end component;

    component PC_reg
    port(i_CLKa        : in std_logic;     -- Clock input
         i_RS          : in std_logic;     -- Reset input
         i_E           : in std_logic;     -- Write enable input
         i_Di          : in std_logic_vector(N-1 downto 0);     -- Data value input
         o_Do          : out std_logic_vector(N-1 downto 0));   -- Data value output
    end component;
  

    component AddSub 
  
      port(i_A  : in std_logic_vector(N-1 downto 0);
      i_B  : in std_logic_vector(N-1 downto 0);
      i_Cin  : in std_logic; --Control for add/ subtract 0/1
      o_O  : out std_logic_vector(N-1 downto 0);
      o_Cout  : out std_logic); --Overflow
    
    end component;

  component ALU is
    port(Rs            : in std_logic_vector(N-1 downto 0);
    Rt              : in std_logic_vector(N-1 downto 0);
    ALUOp                : in std_logic_vector(8 downto 0);
    ShiftA               : in std_logic_vector(4 downto 0);
    BranchE                : out std_logic;
    ALUOut              : out std_logic_vector(N-1 downto 0);
    Overflow : out std_logic);
    end component;

  signal s_fetch_muxtPC : std_logic_vector(N-1 downto 0);
  signal s_fetch_addtMux : std_logic_vector(N-1 downto 0);
  signal s_fetch_dummy : std_logic;
  signal s_fetch_dummy2 : std_logic;
  signal s_Jr_dummy : std_logic;
  signal s_jump_addr : std_logic_vector(N-1 downto 0);
  signal s_JumpMuxO : std_logic_vector(N-1 downto 0);
  signal s_signext_imm : std_logic_vector(N-1 downto 0);
  signal s_branchAdder_in : std_logic_vector(N-1 downto 0);
  signal s_branchaddtMux : std_logic_vector(N-1 downto 0);
  signal s_Move_Mux_dataMux : std_logic_vector(N-1 downto 0);
  signal s_JrAdder_Move_Mux : std_logic_vector(N-1 downto 0);
  signal s_reg_data : std_logic_vector(N-1 downto 0);
  signal s_inputRegDst : std_logic_vector(4 downto 0);
  signal s_RegAout: std_logic_vector(N-1 downto 0);
  signal s_RegBout: std_logic_vector(N-1 downto 0);
  signal s_PC_in: std_logic_vector(N-1 downto 0);
  signal s_PCM_in: std_logic_vector(N-1 downto 0);
  signal s_DataMemMux_WriteData: std_logic_vector(N-1 downto 0); 
  signal s_control_dstReg: std_logic_vector(1 downto 0);
  signal s_branch_control : std_logic;
  signal s_memtoreg_mux : std_logic;
  signal s_ALU_source : std_logic;
  signal s_ALU_in : std_logic_vector(N-1 downto 0);
  signal s_control_regWrite : std_logic;
  signal s_control_Jr : std_logic;
  signal s_control_sign: std_logic;
  signal s_mov_control : std_logic;
  signal s_ALUOP : std_logic_vector(8 downto 0);
  signal s_branch_zero : std_logic;
  signal s_ovfl_1 : std_logic;
  signal s_ALU_result : std_logic_vector (N-1 downto 0);

  -- TODO: You may add any additional signals or components your implementation 
  --       requires below this comment

begin

  -- TODO: This is required to be your final input to your instruction memory. This provides a feasible method to externally load the memory module which means that the synthesis tool must assume it knows nothing about the values stored in the instruction memory. If this is not included, much, if not all of the design is optimized out because the synthesis tool will believe the memory to be all zeros.
  with iInstLd select
    s_IMemAddr <= s_NextInstAddr when '0',
      iInstAddr when others;

PC: PC_reg
  port map(
  i_CLKa => iCLK,
  i_RS => '0',
  i_E => '1',
  i_Di => s_PC_in,
  o_Do => s_NextInstAddr);

  PCRstMux: mux2t1_N
  port MAP( 
  i_S => iRST,
  i_D0 => s_PCM_in,
  i_D1 => x"00400000",
  o_O => s_PC_in
  );

  PCMux: mux2t1_N
  port MAP( 
  i_S => s_control_Jr,
  i_D0 => s_JumpMuxO,
  i_D1 => s_RegAout,
  o_O => s_PCM_in
  );

AdderPC: AddSub
port map(i_A => s_NextInstAddr,
      i_B => x"00000004",
      i_Cin => '0',
      o_O => s_fetch_addtMux,
      o_Cout => s_fetch_dummy);
 s_Halt <= '1' when s_Inst(31 downto 26) = "010100" 
 else '0';

cont: control
port map(
  Opcode => s_Inst(31 downto 26),
  funct => s_Inst(5 downto 0),        
  RegDst => s_control_dstReg,         
  Jump => s_Jump,          
  Branch => s_branch_control,          
  Halt => open,            
  MemtoReg => s_memtoreg_mux,
  ALUOp => s_ALUOP,            
  MemWrite => s_DMemWr,     
  ALUSrc => s_ALU_source,              
  RegWrite => s_control_regWrite,             
  MoveN => s_mov_control,               
  SignOrU => s_control_sign,              
  Jr => s_control_Jr           
);

s_regWr <= s_control_regWrite;

aluunit: ALU
port map(
  Rs => s_RegAout,
  Rt => s_ALU_in,
  ALUOp => s_ALUOP,
  ShiftA => s_Inst(10 downto 6),
  BranchE =>s_branch_zero,
  ALUOut => s_ALU_result,
  Overflow => s_ovfl_1
);
s_dmemAddr <= s_ALU_result;
s_Ovfl <= s_ovfl_1 and not s_control_sign;
oALUOut <= s_ALU_result;

aluSrc: mux2t1_N
port map(
  i_S => s_ALU_source,
  i_D0 => s_RegBout,
  i_D1 => s_signext_imm,
  o_O => s_ALU_in       
);


JumpAddrComp: shiftL2
port map(
  i_I => s_Inst,
  o_O => s_jump_addr);


sign_ext: extender
port map(
i_Data => s_Inst(15 downto 0),
i_sign => s_control_sign,
o_Data => s_signext_imm);

BranchComp: shiftL2
port map(
  i_I => s_signext_imm,
  o_O => s_branchAdder_in);

  --s_branchAdder_in(31 downto 28) <= s_fetch_addtmux(31 downto 28);

AdderBranch: AddSub
port map(i_A => s_fetch_addtMux,
      i_B => s_branchAdder_in,
      i_Cin => '0',
      o_O => s_branchaddtMux,
      o_Cout => s_fetch_dummy2);
  
branch_and: andg2
port map(i_A => s_branch_control,
i_B => s_branch_zero,
o_F => s_branch_and);

BranchMux: mux2t1_N
port map( 
  i_S => s_branch_and,   
  i_D0 => s_fetch_addtMux,   
  i_D1 => s_branchaddtMux,
  o_O => muxtmux );

  JumpMux: mux2t1_N
port map( 
  i_S => s_Jump,   
  i_D0 => muxtmux, 
  i_D1 => s_fetch_addtmux(31 downto 28) & s_jump_addr(27 downto 0),
  o_O => s_JumpMuxO);

  JrAdder: AddSub
  port map (
    i_A => s_NextInstAddr,
    i_B => "00000000000000000000000000001000",
    i_Cin => '0',
    o_O => s_JrAdder_Move_Mux,
    o_Cout => s_Jr_dummy);

DstMux: mux6bit4t1
port MAP(
  i_A => s_Inst(20 downto 16),
  i_B => s_Inst(15 downto 11),
  i_C => "11111",
  i_D => s_Inst(25 downto 21),
  i_select => s_control_dstReg,
  o_result => s_inputRegDst);

DataMux: mux2t1_N
port map(
  i_S => s_control_dstReg(1),
  i_D0 => s_DataMemMux_WriteData,
  i_D1 => s_Move_Mux_dataMux,
  o_O => s_reg_data);

  RegisterFile: regFile 
  port MAP(
  CLK => iCLK,
  i_R => iRST,
  i_E => s_control_regWrite,  
  src1 => s_Inst(25 downto 21),
  src2 => s_Inst(20 downto 16),
  dstR => s_inputRegDst,
  i_D => s_reg_data,
  o_src1=> s_RegAout,
  o_src2 => s_RegBout
  );
  s_RegWrAddr <= s_inputRegDst;
  s_RegWrData <= s_reg_data;
  Move_mux: mux2t1_N
  port map( 
    i_S => s_mov_control,   
    i_D0 => s_fetch_addtMux,   
    i_D1 => s_RegAout,
    o_O => s_Move_Mux_dataMux );

  DataMemMux: mux2t1_N
port map(
  i_S => s_memtoreg_mux,
  i_D0 => s_ALU_result,
  i_D1 => s_DMemOut,
  o_O => s_DataMemMux_WriteData);

  IMem: mem
    generic map(ADDR_WIDTH => ADDR_WIDTH,
                DATA_WIDTH => N)
    port map(clk  => iCLK,
             addr => s_IMemAddr(11 downto 2),
             data => iInstExt,
             we   => iInstLd,
             q    => s_Inst);
  
  s_DMemAddr <= s_ALU_result;

  s_DMemData <= s_RegBout;
  DMem: mem
    generic map(ADDR_WIDTH => ADDR_WIDTH,
                DATA_WIDTH => N)
    port map(clk  => iCLK,
             addr => s_DMemAddr(11 downto 2),
             data => s_DMemData,
             we   => s_DMemWr,
             q    => s_DMemOut);

  -- TODO: Ensure that s_Halt is connected to an output control signal produced from decoding the Halt instruction (Opcode: 01 0100)
  -- TODO: Ensure that s_Ovfl is connected to the overflow output of your ALU

  -- TODO: Implement the rest of your processor below this comment! 

end structure;

