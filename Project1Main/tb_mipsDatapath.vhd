-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------
-- tb_mipsDatapath.vhd
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
use work.mux2darr.all;

entity tb_mipsDatapath is
  generic(gCLK_HPER : time := 50 ns ;N : integer := 32; M : integer := 5);   -- Generic for half of the clock cycle period
end tb_mipsDatapath;

architecture behavior of tb_mipsDatapath is

   constant cCLK_PER  : time := gCLK_HPER * 2;

   component mipsDatapath is
    port(CLK        : in std_logic;     -- Clock input
       reset        : in std_logic;     -- Reset input
       saddSub         : in std_logic;     -- Write enable input
       ALUSrc        : in std_logic;  
       WE           : in std_logic;
       src1         : in std_logic_vector(M-1 downto 0);     -- src1 input
       src2          : in std_logic_vector(M-1 downto 0);    -- src2 input
       dstR          : in std_logic_vector(M-1 downto 0);    -- Destination Register
       imme           : in std_logic_vector(N-1 downto 0);    -- Data write
       o_src1        : out std_logic_vector(N-1 downto 0);    -- src1 output
       o_src2          : out std_logic_vector(N-1 downto 0));  -- src2 output
    end component;

    signal s_CLK, s_reset, s_addSub, s_ALUSrc, s_WE  : std_logic;
    signal s_imme, s_data1, s_data2 : std_logic_vector(N-1 downto 0);
    signal s_src1, s_src2, s_dstR : std_logic_vector(M-1 downto 0);

begin

    dataPath: mipsDatapath
    port MAP(s_CLK, s_reset, s_addSub, s_ALUSrc, s_WE, s_src1, s_src2, s_dstR, s_imme, s_data1, s_data2);

    P_CLK: process
	  begin
	    s_clk <= '0';
	    wait for gCLK_HPER;
	    s_clk <= '1';
	    wait for gCLK_HPER;
	  end process;
	  
	  -- Testbench process  
	  P_TB: process
	  begin
	    -- Reset the Registers
	    s_reset <= '1';
		s_WE 	<= '0';
		s_addSub <= '0';
		s_ALUSrc 	<= '0';
		s_dstR		<= "00000";
		s_src1		<= "00000";
		s_src2		<= "00000";
		s_imme	<= x"00000000";
	    wait for cCLK_PER*2;
		s_reset <= '0';
		s_WE 	<= '1';
		s_addSub <= '0';
		s_ALUSrc 	<= '1';
		s_src1		<= "00000";
		s_src2		<= "00001";
		s_dstR		<= "00001";
		s_imme	<= x"00000001";
		wait for cCLK_PER*2; --addi $1, $0, 1 
		s_dstR		<= "00010";
		s_imme	<= x"00000002";
		wait for cCLK_PER*2; --addi $2, $0, 2
		s_dstR		<= "00011";
		s_imme	<= x"00000003";
		wait for cCLK_PER*2; --addi $3, $0, 3
		s_dstR		<= "00100";
		s_imme	<= x"00000004";
		wait for cCLK_PER*2; --addi $4, $0, 4
		s_dstR		<= "00101";
		s_imme	<= x"00000005";
		wait for cCLK_PER*2; --addi $5, $0, 5
		s_dstR		<= "00110";
		s_imme	<= x"00000006";
		wait for cCLK_PER*2; --addi $6, $0, 6
		s_dstR		<= "00111";
		s_imme	<= x"00000007";
		wait for cCLK_PER*2; --addi $7, $0, 7
		s_dstR		<= "01000";
		s_imme	<= x"00000008";
		wait for cCLK_PER*2; --addi $8, $0, 8
		s_dstR		<= "01001";
		s_imme	<= x"00000009";
		wait for cCLK_PER*2; --addi $9, $0, 9
		s_dstR		<= "01010";
		s_imme	<= x"0000000A";
		wait for cCLK_PER*2; --addi $10, $0, 10
		s_ALUsrc 	<= '0';
		s_src1		<= "00001";
		s_src2		<= "00010";
		s_dstR		<= "01011";
		s_imme	<= x"00000000";
		wait for cCLK_PER*2; --add $11, $1, $2 
		s_addSub <= '1';
		s_src1		<= "01011";
		s_src2		<= "00011";
		s_dstR		<= "01100";
		wait for cCLK_PER*2; --sub $12, $11, $3
		s_addSub 	<= '0';
		s_src1	<= "01100";
		s_src2 <= "00100";
		s_dstR  <= "01101";
		wait for cCLK_PER*2; --add $13,$12, $4
		s_addSub <= '1'; 
		s_src1  <= "01101";
		s_src2  <= "00101";
		s_dstR  <= "01110";
        wait for cCLK_PER*2;      --sub $14, $13, $5
		s_addSub <= '0'; 
		s_src1  <= "01110";
		s_src2  <= "00110";
		s_dstR  <= "01111";
        wait for cCLK_PER*2; --add $15, $14, $6
		s_addSub <= '1'; 
		s_src1  <= "01111";
		s_src2  <= "00111";
		s_dstR  <= "10000";
        wait for cCLK_PER*2; --sub $16, $15, $7
        s_addSub <= '0'; 
		s_src1  <= "10000";
		s_src2  <= "01000";
		s_dstR  <= "10001";
        wait for cCLK_PER*2; --add $17, $16, $8
		s_addSub <= '1'; 
		s_src1  <= "10001";
		s_src2  <= "01001";
		s_dstR  <= "10010";
        wait for cCLK_PER*2; --sub $18, $17, $9
		s_addSub <= '0'; 
		s_src1  <= "10010";
		s_src2  <= "01010";
		s_dstR  <= "10011";
        wait for cCLK_PER*2; --add $19, $18, $10
		s_ALUSrc   <= '1';
		s_src1   <= "00000";
		s_dstR   <= "10100";
		s_imme   <= x"FFFFFFDD";
		wait for cCLK_PER*2; --addi $20, $0, -35
		s_ALUSrc  <= '0';
		s_imme  <= x"00000000";
		s_src1  <= "10011";
		s_src2  <= "10100";
		s_dstR  <= "10101";
		wait for cCLK_PER*2; --add $21, $19, $20
        
		end process;

end behavior;