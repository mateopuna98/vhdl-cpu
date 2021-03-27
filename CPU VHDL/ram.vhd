LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ram is
    port(w,r:in STD_LOGIC; 
        activar_ram:in STD_LOGIC := '0';    
         address:in STD_LOGIC_VECTOR(7 downto 0);
         data_in:in STD_LOGIC_VECTOR(7 downto 0);
         data_out:out STD_LOGIC_VECTOR(23 downto 0)
     );
end ram;

architecture behavorial of ram is

    type data_array_data is array (255 downto 0) of STD_LOGIC_VECTOR (7 downto 0);	
    signal data_array : data_array_data := (others => "00000000");

begin
    process(activar_ram)
        variable aux_out: std_logic_vector(23 downto 0):= "000000000000000000000000";
        variable address_int: integer := to_integer(unsigned(address));

    begin
        if(activar_ram = '1') then
            if(r = '0' and 'w' = '1') then
                data_array(to_integer(unsigned(address))) <= data_in;
			elsif(r = '1' and w = '0') then 
                    if(address > "10000000") then
                        aux_out(23 downto 16) := data_array(address_int);
                    else 
                        aux_out(23 downto 16) := data_array(address_int);
                        aux_out(15 downto 8) := data_array(address_int+1);
                        aux_out(7 downto 0) := data_array(address_int+2);
                    end if;
                    data_out <= aux_out;
            end if;
        end if;
    end process;

end behavorial;