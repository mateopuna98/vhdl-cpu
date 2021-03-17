LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ram is
    port(w,r:in STD_LOGIC; 
        activar_ram:in STD_LOGIC := '0';    
         address:in STD_LOGIC_VECTOR(11 downto 0);
         data_in:in STD_LOGIC_VECTOR(15 downto 0);
         data_out:out STD_LOGIC_VECTOR(15 downto 0)
     );
end ram;

architecture behavorial of ram is

    type data_array_data is array (4095 downto 0) of STD_LOGIC_VECTOR (15 downto 0);	
    signal data_array : data_array_data := (0 => "0010000001100101", 1 => "0001000001100100", 2 => "0010000001100101", 3 =>  "0011000001100110",
	 200 => "0100111111111111", 201 => "0101111111111111", 202 => "0110000000000000", 203 => "0111111111111110", 204 => "1001000000000000",  205 => "1010000000000000",   
	 100 => "1111000000000000", 102 => "0000000000000011", others => "0000000000000000");

begin

    process(activar_ram)
    begin
        if(activar_ram = '1') then
            if(w = '1') then
                data_array(to_integer(unsigned(address))) <= data_in;
				elsif(r = '1') then 
					data_out <= data_array(to_integer(unsigned(address)));
            end if;
        end if;
    end process;

end behavorial;