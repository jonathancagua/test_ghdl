--Library
library ieee;
use ieee.std_logic_1164.all;

--Entity
Entity Comparator is
	generic ( n: integer :=4);--<-- nbits
	Port(
		A_i: in std_logic_vector(n-1 downto 0);
		B_i: in std_logic_vector(n-1 downto 0);
		AmenorB_o, AmayorB_o, AigualB_o: out std_logic);
end Comparator;

--Architecture
Architecture solve of Comparator is
	-- Signals,Constants,Variables,Components
	Begin
		AmenorB_o<='1' when A_i<B_i else '0';
		AmayorB_o<='1' when A_i>B_i else '0';
		AigualB_o<='1' when A_i=B_i else '0';
end solve;