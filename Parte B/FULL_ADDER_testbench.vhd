library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER_testbench is
end FULL_ADDER_testbench;

architecture Behavior of FULL_ADDER_testbench is

component FULL_ADDER --component declaration
port(
	in_a : in std_logic;
	in_b : in std_logic;
	in_cin : in std_logic;
	clk : in std_logic;
	o_f : out std_logic;
	o_cout : out std_logic
	);
end component;

--Inputs
signal in_a : std_logic :='0';
signal in_b : std_logic :='0';
signal in_cin : std_logic :='0';
signal clk : std_logic :='0';
--Outputs
signal o_f : std_logic;
signal o_cout : std_logic;

--Clock period definition
constant clock_period : time := 20ns;

Begin
	--Instantiate the Unit Under Test (UUT)
	uut: FULL_ADDER PORT MAP (
		in_a => in_a,
		in_b => in_b,
		in_cin => in_cin,
		clk => clk,
		o_f => o_f,
		o_cout => o_cout
	);
		
--Clock process definitions
clock_process:process 
	begin
		clk <='0';
		wait for clock_period/2;
		clk <='1';
		wait for clock_period/2;
	end process;

stim_proc: process -- Stimulus process
	begin
		--stimulus
		in_a <= '0'; in_b <= '0'; in_cin <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '0'; in_cin <= '1'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_cin <= '0'; wait for 30ns;
		in_a <= '0'; in_b <= '1'; in_cin <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_cin <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '0'; in_cin <= '1'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_cin <= '0'; wait for 30ns;
		in_a <= '1'; in_b <= '1'; in_cin <= '1'; wait for 30ns;
		wait;
	end process;
end;