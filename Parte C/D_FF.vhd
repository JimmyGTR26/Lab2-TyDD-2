library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity D_FF is 
	port(D,CLK : in std_logic;
		  Q : out std_logic);
end D_FF;

architecture behavioral of D_FF is
	begin
		process(CLK)
		begin
			if (RISING_EDGE(CLK))  then
				Q <= D;
			end if;
		end process;
end behavioral;
