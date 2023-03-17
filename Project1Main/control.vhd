library IEEE;
use IEEE.std_logic_1164.all;

entity control is
  generic(N : integer := 32; P : integer := 6);
  port(Opcode             : in std_logic_vector(P-1 downto 0);
       funct              : in std_logic_vector(P-1 downto 0);
       RegDst                : out std_logic_vector(1 downto 0); --00 for writing to rt, 01 for writing to rd, 10 JumpAddr for writing to r[31]
       Jump                : out std_logic;
       Branch              : out std_logic;
       Halt                : out std_logic;
       MemtoReg                : out std_logic;
       ALUOp                : out std_logic_vector(8 downto 0);
       MemWrite               : out std_logic;
       ALUSrc                : out std_logic;
       RegWrite                : out std_logic;
       MoveN                  : out std_logic;      -- Simple mux that writes [rs] to RegWrite
       SignOrU                : out std_logic;      --0 for signed, 1 for unsigned
       Jr                     : out std_logic);     --Sent Mux from [rs] to PC 
       --jal control mux 2 to 1
       --make regWrite a 4to1 mux to suit jal
       --jr takes output of readdata1 sends into decoder and uses a mux at the end of fetch (new control line)
       --repl in ALU
       --movn control line
       --bne and beq will be implemented into the ALU (change the zero line out from ALU to be 1 when either is true)

end control;

architecture structure of control is
  signal controlO : std_logic_vector(20 downto 0);
--begin
begin
Process (Opcode, funct)
begin
   if Opcode = "000000" then --Opcode most important implementation!
     if funct = "100000" then
        controlO  <= "000000000010000011000"; --add
     elsif funct = "100001" then
      controlO  <= "000000000000000011000"; --addu
     elsif funct = "100100" then
      controlO  <= "001001000000000011000";  --and
     elsif funct = "100111" then
      controlO  <= "001000010000000011000"; --nor
     elsif funct = "100101" then
      controlO  <= "001000110000000011000"; --or
     elsif funct = "000000" then
      controlO  <= "011000000000000011000"; --sll
     elsif funct = "000010" then
      controlO  <= "010000000000000011000"; --srl
     elsif funct = "000011" then
      controlO  <= "010000001000000011000"; --sra
     elsif funct = "100010" then
      controlO <=  "000100000010000011000"; --sub
     elsif funct = "100011" then
      controlO <= "000100000000000011000"; -- subu
     elsif funct = "101010" then
      controlO  <= "100100000000000011000"; --slt
     elsif funct = "001000" then
      controlO  <= "000000000100010000000"; --jr
     elsif funct = "100110" then
      controlO  <= "001000100000000011000"; --xor
     elsif funct = "001011" then
      controlO  <= "001001110001000011000"; --movn
     else
        controlO <= "000000000000000000000";

   --when funct select                                               --|    
       --controlO  <=  "000000000000000011000" when "100000", -- add   000000000010000011000
         --            "000000000010000011000" when "100001", -- addu  000000000000000011000
         --            "001001000000000011000" when "100100", --and    001001000010000011000
         --            "001000010000000011000" when "100111", --nor    001000010010000011000
         --            "001000110000000011000" when "100101", --or     001000110010000011000
         --            "011000000000000011000" when "000000", --sll    011000000010000011000
         --            "010000000000000011000" when "000010", --srl    010000000010000011000
         --            "010000001000000011000" when "000011", --sra    010000001010000011000
         --            "000100000000000011000" when "100010", --sub    000100000010000011000
         --            "100100000000000011000" when "101010", --slt    100100000010000011000 (implement 2to1 mux at end of ALU)
         --            "000000000100010000000" when "001000", --jr     000000000110010000000
         --            "001000100000000011000" when "100110", -- xor   001000100010000011000
         --            "001001110001000011000" when "001011", --movn   001001110011000011000
         --            "000000000000000000000" when others;
      end if;
   else
     if Opcode = "001000" then
      controlO  <=  "000000000010000001001"; --addi
     elsif Opcode = "010100" then
      controlO <=   "000000000000001000000"; --HALT
     elsif Opcode = "001001" then
      controlO  <= "000000000000000001001"; --addiu
     elsif Opcode = "001100" then
      controlO  <= "001001000000000001001"; --andi
     elsif Opcode = "001111" then
      controlO  <= "001001100000000001001"; --lui
     elsif Opcode = "100011" then
      controlO  <= "000000000000000001011"; --lw
     elsif Opcode = "111000" then
      controlO  <= "001000000000000001000"; --not
     elsif Opcode = "001110" then
      controlO  <= "001000100000000001001"; --xori
     elsif Opcode = "001101" then
      controlO  <= "001000110000000001001"; --ori
     elsif Opcode = "001010" then
      controlO <=  "100100000000000001001"; --slti
     elsif Opcode = "101011" then
      controlO  <= "000000000000000000101"; --sw
     elsif Opcode = "000100" then
      controlO  <= "000100000010100000000"; --beq
     elsif Opcode = "000101" then
      controlO  <= "000110000010100000000"; --bne
     elsif Opcode = "000010" then
      controlO  <= "000000000000010000000"; --j
     elsif Opcode = "000011" then
      controlO  <= "000000000000010101000"; --jal
     elsif Opcode = "000111" then
      controlO  <= "001001010000000001001"; --repl.qd
     else
      controlO <= "000000000000000000000";
      end if;
     -- when opcode select
     --controlO  <=  "000000000000000001001" when "001000", -- addi    000000000010000001001
       --            "000000000010000001001" when "001001", -- addiu   000000000000000001001
         --          "001001000000000001001" when "001100", -- andi    001001000010000001001
           --        "001001100000000001001" when "001111", -- lui     001001100010000001001
            --       "000000000000000101011" when "100011", -- lw      000000000010000101011
             --      "001000000000000001000" when "111000", -- not     001000000010000001000
              --     "001000100000000001001" when "001110", -- xori    001000100010000001001
               --    "001000110000000001001" when "001101", -- ori     001000110010000001001
          --         "100100000000000001001" when "001010", -- slti    100100000010000001001
           --        "000000000000000000101" when "101011", -- sw      000000000010000000101
           --        "000100000000100000001" when "000100", -- beq     000100000010000000001
           --        "000110000000100000001" when "000101", -- bne     000110000010000000001
           --        "000000000000010000000" when "000010", -- j       000000000010010000000
           --        "000000000000010001000" when "000011", -- jal     000000000010010001000
           --        "001001010000000001001" when "000111", -- repl.qd 001001010010000001001
            --       "000000000000000000000" when others;
    end if;
    end process;



    ALUSrc     <= controlO(0);
    MemtoReg   <= controlO(1);         
    MemWrite   <= controlO(2);            
    RegWrite   <= controlO(3);
    RegDst     <= controlO(5 downto 4); 
    Halt       <= controlO(6);
    Jump       <= controlO(7);
    Branch     <= controlO(8);
    MoveN      <= controlO(9);
    SignOrU    <= controlO(10);
    Jr         <= controlO(11);
    ALUOp      <= controlO(20 downto 12);


  
end structure;