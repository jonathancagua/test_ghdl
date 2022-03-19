library IEEE;
use IEEE.std_logic_1164.all;

entity sumres4b is
	port(
		a_i: in std_logic_vector(3 downto 0);
		b_i: in std_logic_vector(3 downto 0);
		sr_i: in std_logic;
		s_o: out std_logic_vector(3 downto 0);
		co_o: out std_logic
	);
end;

architecture sumres4b_arq of sumres4b is
	
	component sum4b is
		port(
			a_i: in std_logic_vector(3 downto 0);
			b_i: in std_logic_vector(3 downto 0);
			ci_i: in std_logic;
			s_o: out std_logic_vector(3 downto 0);
			co_o: out std_logic
		);
	end component;
	signal b_xor: std_logic_vector(3 downto 0);
begin
	b_xor <= b_i xor (3 downto 0 => sr_i);
	sum4b_inst: sum4b
		port map(
			a_i		=> a_i, 
			b_i		=> b_xor, 
			ci_i	=> sr_i,
			s_o		=> s_o, 
			co_o	=> co_o
		);
end;