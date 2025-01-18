library ieee;
use ieee.std_logic_1164.all;
library work;
use work.Gates.all;

entity or_nor is
	port(a, b : in std_logic;
			y : out std_logic);
end entity;

architecture struct of or_nor is
	signal s1 : std_logic;
begin
	inst1: NOR_2 port map(a=>a, b=>b, y=>s1);
	inst2: NOR_2 port map(a=>s1, b=>s1, y=>y);
end architecture;
