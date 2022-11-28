library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FULL_ADDER is
	port (
		in_a : in std_logic;
		in_b : in std_logic;
		in_cin : in std_logic;
		  clk : in std_logic;
		o_f : out std_logic;
		o_cout : out std_logic);
end FULL_ADDER;

architecture Behavioral of FULL_ADDER is

component D_FF 
	port(D,CLOCK : in std_logic;
		  Q : out std_logic);
end component;

	signal a,b,cin,cout,f : std_logic;
begin

	f <= a xor b xor cin;
	cout <= (a and b) or (cin and (a xor b));
	
 D1: D_FF port map (in_a,clk,a);
 D2: D_FF port map (in_b,clk,b);
 D3: D_FF port map (in_cin,clk,cin);
 D4: D_FF port map (cout,clk,o_cout);
 D5: D_FF port map (f,clk,o_f);
end Behavioral;