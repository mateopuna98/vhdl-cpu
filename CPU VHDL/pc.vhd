LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PC is
    port(
        activar_pc:in STD_LOGIC;
        micro_op: in std_logic_vector(1 downto 0);
        pc_in: in std_logic_vector(7 downto 0);
        pc_out:out STD_LOGIC_VECTOR(7 downto 0)        
    );
end PC;

architecture behavorial of pc is
    signal pc_aux : std_logic_vector(7 downto 0) := "00000000";
begin
    process(activar_pc)  
    variable pc_count: Integer := to_integer(unsigned(pc_aux));
    begin	
        if(activar_pc = '1') then       
            if(micro_op = "01") then 
                pc_count := to_integer(unsigned(pc_in));
            elsif(micro_op = "11") then 
                pc_count := pc_count  + 1; 
            end if;
            pc_out <= std_logic_vector(to_unsigned(pc_count,pc_out'length));
            pc_aux <= std_logic_vector(to_unsigned(pc_count,pc_aux'length));

        end if;
    end process;

end behavorial;