library ieee;
use ieee.std_logic_1164.all;

entity mux is
    generic (
        WIDTH : positive := 1
    );
    port (
        x_o     : out std_logic_vector(WIDTH-1 downto 0);
        sel     : in  std_logic;
        a_i     : in  std_logic_vector(WIDTH-1 downto 0);
        b_i     : in  std_logic_vector(WIDTH-1 downto 0)
    );
end mux;

architecture BHV of mux is
begin
    
    x_o <=
        a_i when sel = '0' else
        b_i when sel = '1' else
        (others => '0');
    
end BHV;