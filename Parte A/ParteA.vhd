library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ParteA is
    Port ( sw1 : in STD_LOGIC;
	        sw2 : in STD_LOGIC;
			  LED : out STD_LOGIC);
end ParteA;

architecture Behavioral of ParteA is


begin

LED <= not (sw1 or sw2);

end Behavioral;