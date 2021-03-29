LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity PC is
    port(
        activar_pc:in STD_LOGIC;
        micro_op: in std_logic;
        pc_in: in std_logic_vector(7 downto 0);
        pc_out:out STD_LOGIC_VECTOR(7 downto 0)        
    );
end PC;

architecture behavorial of pc is
    signal pc_aux : std_logic_vector(7 downto 0) := "00000000";
begin
    process(activar_pc)  
    variable pc_count: Integer := 0;
    begin	
        if(activar_pc = '1') then       
            if(micro_op = '1') then
					 pc_count := pc_count  + 3; 
--              pc_count := to_integer(unsigned(pc_in));
--            elsif(micro_op = "11") then               
            end if;
        end if;
		    pc_out <= std_logic_vector(to_unsigned(pc_count,pc_out'length));
          pc_aux <= std_logic_vector(to_unsigned(pc_count,pc_aux'length));
    end process;

end behavorial;