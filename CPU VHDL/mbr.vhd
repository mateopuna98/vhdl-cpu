
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity MBR is
	port(
		r,w,activar_mbr:in STD_LOGIC;
		operando: in std_logic_vector(3 downto 0);
		mbr_in: in std_logic_vector(23 downto 0);
		mbr_out_1:out std_logic_vector(7 downto 0);
		mbr_out_2:out std_logic_vector(7 downto 0);
		mbr_ir_out: out std_logic_vector(23 downto 0)
	);
	 end MBR;

architecture Behavioral of mbr is
	signal mbr_value :std_logic_vector(23 downto 0) := "000000000000000000000000";

begin
	process (activar_mbr)
	begin
		if (activar_mbr = '1') then
			if (r = '0' and w = '1') then
				mbr_value <= mbr_in;
			elsif (r = '1' and w = '0') then
				if (operando = "0001") then
					mbr_out_1 <= mbr_value(23 downto 16);
				elsif (operando = "0010") then
					mbr_out_2 <= mbr_value(23 downto 16);
				end if;	
				mbr_ir_out <= mbr_value;
			end if;
		end if;
	end process;

end Behavioral;

