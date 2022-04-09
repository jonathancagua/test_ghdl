library IEEE;
use IEEE.std_logic_1164.all;

entity comp_tb is
end comp_tb;

architecture comp_tb_arq of comp_tb is

	constant n: integer := 4;
	component Comparator is
		Port(
			A_i: in std_logic_vector(n-1 downto 0);
			B_i: in std_logic_vector(n-1 downto 0);
			AmenorB_o, AmayorB_o, AigualB_o: out std_logic);
	end component;

	signal A_tb: std_logic_vector(n-1 downto 0);
	signal B_tb: std_logic_vector(n-1 downto 0);
	signal AmenorB_tb,AmayorB_tb, AigualB_tb: std_logic := '0';
	
begin
	A_tb <= "0010","0000" after 150 ns, "0001" after 400 ns,"1000" after 600 ns;
	B_tb <= "0100","1000" after 150 ns, "0001" after 400 ns,"0001" after 600 ns;
	DUT: entity work.Comparator
		port map(
			A_i => A_tb,
			B_i => B_tb,
			AmenorB_o => AmenorB_tb,
			AmayorB_o => AmayorB_tb,
			AigualB_o => AigualB_tb
		);

end comp_tb_arq;