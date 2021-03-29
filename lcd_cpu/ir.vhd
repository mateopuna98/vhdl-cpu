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
	signal ir_val: std_logic_vector(23 downto 0) := "000000000000000000000000";
begin
	process (activar_ir,operando) 
		variable ir_value: std_logic_vector(23 downto 0):=ir_val;

		begin
			if(activar_ir = '1') then
				if (r = '0' and w = '1') then
					if(operando = "0001") then
						ir_out <= ir_value(15 downto 8);
					elsif (operando= "0010") then
						ir_out <= ir_value(7 downto 0);
					else
						ir_value := ir_in;
						ir_val <= ir_in; 
					end if;
					ir_out_full  <= ir_value;
				end if;
			end if;	
	end process;

end Behavioral;

