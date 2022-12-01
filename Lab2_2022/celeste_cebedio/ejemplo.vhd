library ieee;
	use ieee.std_logic_1164.all;
	
entity ejemplo is
	port( entrada : in std_logic;
			salida  : out std_logic);
end ejemplo;

architecture uno of ejemplo is

begin
	salida <= not(entrada);
end architecture; 