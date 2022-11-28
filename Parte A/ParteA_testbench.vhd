library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ParteA_testbench is
end ParteA_testbench;

ARCHITECTURE behavior OF ParteA_testbench IS

	COMPONENT ParteA --component declaration
	PORT(
	  sw1 : in STD_LOGIC;
	  sw2 : in STD_LOGIC;
     LED : out STD_LOGIC
	  );
	END COMPONENT;
	
	--Inputs
	signal sw1 : std_logic := '0';
	signal sw2 : std_logic := '0';
	--Outputs
	signal LED : std_logic;
	
BEGIN
	--Instantiate the Unit Under Test (UUT)
	uut: ParteA PORT MAP (
		sw1 => sw1,
		sw2 => sw2,
		LED => LED
	);
	
	stim_proc: process -- Stimulus process
	begin
		--stimulus
		sw1 <= '0'; sw2 <= '0'; wait for 10ns;
		sw1 <= '0'; sw2 <= '1'; wait for 10ns;
		sw1 <= '1'; sw2 <= '0'; wait for 10ns;
		sw1 <= '1'; sw2 <= '1'; wait for 10ns;
		wait;
	end process;
END;