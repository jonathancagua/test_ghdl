library IEEE;
use IEEE.std_logic_1164.all;

entity led_ctl_tb is
end led_ctl_tb;

architecture led_ctl_tb_arq of led_ctl_tb is

	component led_ctl is
		port(
			clk_rx:			in std_logic;					-- Clock input
			rst_clk_rx:		in std_logic;					-- Active HIGH reset - synchronous to clk_rx
			btn_clk_rx:		in std_logic;					-- Button to swap low and high pins
			rx_data:		in std_logic_vector(7 downto 0);-- 8 bit data output
			rx_data_rdy:	in std_logic;					-- valid when rx_data_rdy is asserted
			led_o:			out std_logic_vector(3 downto 0)-- The LED outputs
		);
	end component;

	signal clk_rx_tb:			std_logic := '0';					-- Clock input
	signal rst_clk_rx_tb:		std_logic := '1';					-- Active HIGH reset - synchronous to clk_rx
	signal btn_clk_rx_tb:		std_logic := '0';					-- Button to swap low and high pins
	signal rx_data_tb:			std_logic_vector(7 downto 0):= "00000000";-- 8 bit data output
	signal rx_data_rdy_tb:		std_logic := '0';					-- valid when rx_data_rdy is asserted
	signal led_o_tb:			std_logic_vector(3 downto 0):= "0000";-- The LED outputs
begin
	clk_rx_tb <= not clk_rx_tb after 10 ns;
	rx_data_tb <= "10001111";
	rst_clk_rx_tb <= '0'  after 20 ns;--,'0' after 600 ns;
	rx_data_rdy_tb <= '1'  after 20 ns;
	btn_clk_rx_tb <= '1'  after 600 ns;
	DUT: led_ctl
		port map(
			clk_rx => clk_rx_tb,

			rst_clk_rx => rst_clk_rx_tb,
			btn_clk_rx => btn_clk_rx_tb,
			rx_data => 	rx_data_tb,
			rx_data_rdy => rx_data_rdy_tb,
			led_o => led_o_tb		
		);
end led_ctl_tb_arq;