-----------------------------------------------------------------
-- Module Name: lab3_user_logic
-----------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity lab3_user_logic is
	generic(
		LED_WIDTH: natural := 8	
	);
	port(
		S_AXI_ACLK: 	in std_logic;
		slv_reg_wren: 	in std_logic;
		axi_awaddr: 	in std_logic_vector(1 downto 0);
		S_AXI_WDATA: 	in std_logic_vector(31 downto 0);
		S_AXI_ARESETN: 	in std_logic;
		LED: 			out std_logic_vector(LED_WIDTH-1 downto 0)
	);
end;

architecture lab3_user_logic_tb of lab3_user_logic is
	signal led_pipeline_reg: 	std_logic_vector(LED_WIDTH-1 downto 0);
	signal cnt_data: 			std_logic_vector(7 downto 0);
begin

	process(S_AXI_ACLK)
		variable cnt 			: UNSIGNED(7 downto 0);
		variable temporal 		: UNSIGNED(7 downto 0);
		variable temporal2 		: UNSIGNED(7 downto 0);
		variable temporal3 		: UNSIGNED(7 downto 0);
		variable char_data		: std_logic_vector(7 downto 0);
	begin
		if rising_edge(S_AXI_ACLK) then
			if S_AXI_ARESETN = '0' then
				LED <= (LED_WIDTH-1 downto 0 => '0');
				cnt 			:= (others => '0');
				cnt_data 		<= std_logic_vector(cnt);
			elsif slv_reg_wren = '1' and axi_awaddr = "00" then
				temporal 	:= unsigned(S_AXI_WDATA(LED_WIDTH-1 downto 0));
				temporal2 	:= temporal and "00000011";
				temporal3 	:= temporal and "00001100";
				if(temporal2 = "00000010") then
					cnt := cnt + 1;
				end if;
				if(temporal2 = "00000001") then
					cnt := cnt - 1;
				end if;
				cnt_data  <= std_logic_vector(cnt);
				if(temporal3 = "00001000") then
					led_pipeline_reg <= cnt_data and "00001111";
				end if;
				if(temporal3 = "00000100") then
					led_pipeline_reg <= cnt_data and "11110000";
				end if;
			end if;
			LED <= led_pipeline_reg;
		end if;
		
	end process;

end;
