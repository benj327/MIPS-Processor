-------------------------------------------------------------------------
-- Blake Carlson
-- Department of Electrical and Computer Engineering
-- Iowa State University
-------------------------------------------------------------------------


-- mux2t1_df.vhd
-------------------------------------------------------------------------
-- DESCRIPTION: This file contains the 2 to 1 MUX component
--
--
-- NOTES:
-- 9/1/2022
-------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

entity mux2t1_df is

  port(X          : in std_logic;
       Y          : in std_logic;
       S          : in std_logic;
       O          : out std_logic);

end mux2t1_df;

architecture dataflow of mux2t1_df is
begin
	
    O <= X when (S = '0') else
	Y;

end dataflow;
