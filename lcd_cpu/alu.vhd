library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
    port (
        w,r,activar_alu   : in std_logic;
        input_1,input_2: in std_logic_vector(7 downto 0);
        operation: in std_logic_vector(3 downto 0);
        alu_out: out std_logic_vector(7 downto 0);
        carry,zero: out std_logic
    );
end entity;

architecture behavioral of alu is
    signal op1: std_logic_vector(7 downto 0);
    signal op2: std_logic_vector(7 downto 0);
    
    signal input_1_integer: integer :=to_integer(unsigned(input_1));
    signal input_2_integer: integer :=to_integer(unsigned(input_2)); 
begin
    process (activar_alu)
		  variable resultado: std_logic_vector(7 downto 0) := "00000000";
        variable resultado_integer: integer range 0 to 255;
    begin
        if(activar_alu = '1') then
            if(r = '0' and w = '1') then
                op1 <= input_1;
                op2 <= input_2;
            elsif (r = '1' and w = '0') then
                alu_out <= resultado;
            elsif(r = '0' and w = '0') then
					if (operation = "0011") then
						  resultado_integer := input_1_integer+input_2_integer;
                    resultado := std_logic_vector(to_unsigned(resultado_integer, 8));
					elsif (operation = "0100") then
							resultado_integer := input_1_integer-input_2_integer;
                    resultado := std_logic_vector(to_unsigned(resultado_integer, 8));
					elsif (operation = "0101") then
							resultado_integer := input_1_integer*input_2_integer;
                    resultado := std_logic_vector(to_unsigned(resultado_integer, 8));			
						  elsif (operation = "1000") then
							  if(input_1_integer = input_2_integer) then
                            carry <= '0';
                            zero  <= '1';
                        elsif (input_1_integer > input_2_integer) then
                            carry <= '1';
                            zero  <= '0'; 
                        elsif (input_1_integer < input_2_integer) then
                            carry <= '0';
                            zero  <= '0'; 
                        end if;
							 elsif (operation = "1001") then
						  resultado := (input_1 and input_2);
						   elsif (operation = "1010") then
						   resultado := (input_1 or input_2);
						   elsif (operation = "1011") then
						        resultado := (not input_1);
							else
							  resultado := resultado;	
							 end if;
				

            end if;
        end if;
    end process;
end architecture behavioral;