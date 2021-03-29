library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity IR is
         port(w,r, activar_ir:in STD_LOGIC;
		 operando: std_logic_vector(3 downto 0);
         ir_in: in std_logic_vector(23 downto 0);
         ir_out: out std_logic_vector(7 downto 0);
		 ir_out_full: out std_logic_vector(23 downto 0)       
     );
	 end IR;

architecture Behavioral of ir is
	signal ir_value: std_logic_vector(23 downto 0);
begin
	process (activar_ir) 
		begin
			if(activar_ir = '1') then
				if (r = '0' and w = '1') then
					ir_value <= ir_in; 
					
				elsif (r = '1' and w = '0') then
					if(operando = "1111") then
						ir_out <= ir_value(23 downto 16);
					elsif(operando = "0001") then
						ir_out <= ir_value(15 downto 8);
					elsif (operando= "0010") then
						ir_out <= ir_value(7 downto 0);
					else
						ir_out <= ir_value(23 downto 16);
					end if;
				
				end if;
					ir_out_full  <= ir_value;
			end if;	
	end process;

end Behavioral;

