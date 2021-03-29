library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mar is
    port(
        w,r,activar_mar:in STD_LOGIC;
        mar_in: in STD_LOGIC_VECTOR(7 downto 0);      
        mar_out:out STD_LOGIC_VECTOR(7 downto 0)     
    );
end mar;

architecture behavioral of mar is
begin
    process (activar_mar)
	 variable mar_val : STD_LOGIC_VECTOR(7 downto 0):= "11111111";  
    begin
        if(activar_mar = '1') then
                if (w = '1') then
					mar_val := mar_in;                    
                end if;			
        end if;
		  mar_out <= mar_val;
    end process;
    
end architecture behavioral;