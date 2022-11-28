-- Quartus II VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;

entity electronic_dice is

	port(
		clk		 : in	std_logic;
		x	 : in	std_logic;
		reset	 : in	std_logic;
		z	 : out	std_logic_vector(2 downto 0)
	);

end entity;

architecture rtl of electronic_dice is

	-- Build an enumerated type for the state machine
	type state_type is (s1, s2, s3, s4, s5, s6);

	-- Register to hold the current state
	signal state   : state_type;

begin

	-- Logic to advance to the next state
	process (clk, reset)
	begin
		if reset = '1' then
			state <= s1;
		elsif (rising_edge(clk)) then
			case state is
				when s1=>
					if x = '1' then
						state <= s2;
					else
						state <= s1;
					end if;
				when s2=>
					if x = '1' then
						state <= s3;
					else
						state <= s2;
					end if;
				when s3 =>
					if x = '1' then
						state <= s4;
					else
						state <= s3;
					end if;
				when s4 =>
					if x = '1' then
						state <= s5;
					else
						state <= s4;
					end if;
				when s5 =>
					if x = '1' then
						state <= s6;
					else
						state <= s5;
					end if;
				when s6 =>
					if x = '1' then
						state <= s1;
					else
						state <= s6;
					end if;
			end case;
		end if;
	end process;

	-- Output depends solely on the current state
	process (state)
	begin
		case state is
			when s1 =>
				z <= "001";
			when s2 =>
				z <= "010";
			when s3 =>
				z <= "011";
			when s4 =>
				z <= "100";
			when s5 =>
				z <= "101";
			when s6 =>
				z <= "110";
		end case;
	end process;

end rtl;
