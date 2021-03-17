library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity mar is
    port(
        w,activar_mar:in STD_LOGIC;
        mar_in: in STD_LOGIC_VECTOR(11 downto 0) := "XXXXXXXXXXXX";      
        mar_out:out STD_LOGIC_VECTOR(11 downto 0):= "XXXXXXXXXXXX"       
    );
end mar;

architecture behavioral of mar is
begin
    process (activar_mar)
	 variable mar_val : STD_LOGIC_VECTOR(11 downto 0):= "XXXXXXXXXXXX";  
    begin
        if(activar_mar = '1') then
                if (w = '1') then
						  mar_val := mar_in;
                    mar_out <= mar_val;
                end if;
        end if;
    end process;
    
end architecture behavioral;