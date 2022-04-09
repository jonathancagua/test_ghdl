library IEEE;
use IEEE.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture mux_tb_arq of mux_tb is
	-- declaracion componente
	constant WIDTH: natural := 1;
	component mux is
		port (
			x_o     : out std_logic_vector(WIDTH-1 downto 0);
			sel     : in  std_logic;
			a_i     : in  std_logic_vector(WIDTH-1 downto 0);
			b_i     : in  std_logic_vector(WIDTH-1 downto 0)
		);
	end component;
	-- senales de prueba
	signal x_tb: std_logic_vector(WIDTH-1 downto 0);
	signal sel_tb: std_logic := '0';
	signal a_tb: std_logic_vector(WIDTH-1 downto 0);
	signal b_tb: std_logic_vector(WIDTH-1 downto 0);
	
begin
	-- Senales de excitacion
	a_tb(0) <= '1','0' after 20 ns;
	b_tb(0) <= '0','1' after 40 ns;
	sel_tb <= '0','1' after 10 ns,'0' after 20 ns,'1' after 30 ns;

	-- Instanciacion del componente a probar
	DUT: mux
		port map(
			x_o		=> x_tb,
			sel 	=> sel_tb,
			a_i		=> a_tb,
			b_i 	=> b_tb
		);
end mux_tb_arq;