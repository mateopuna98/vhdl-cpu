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
    signal resultado: std_logic_vector(7 downto 0) := "00000000";
    signal input_1_integer: integer :=to_integer(unsigned(input_1));
    signal input_2_integer: integer :=to_integer(unsigned(input_2)); 
begin
    process (activar_alu)
        variable resultado_integer: integer;
    begin
        if(activar_alu = '1') then
            if(r = '0' and w = '1') then
                op1 <= input_1;
                op2 <= input_2;
            elsif (r = '1' and w = '0') then
                alu_out <= resultado;
            elsif(r = '0' and w = '0') then
                case operation is
                    when "0011" =>
                    resultado_integer := input_1_integer+input_2_integer;
                    resultado <= std_logic_vector(to_unsigned(resultado_integer, resultado'length));
                    when "0100" =>
                    resultado_integer := input_1_integer-input_2_integer;
                    resultado <= std_logic_vector(to_unsigned(resultado_integer, resultado'length));
                    when "0101" =>
                    resultado_integer := input_1_integer*input_2_integer;
                    resultado <= std_logic_vector(to_unsigned(resultado_integer, resultado'length));
                    when "0110" =>
                    resultado_integer := input_1_integer/input_2_integer;
                    resultado <= std_logic_vector(to_unsigned(resultado_integer, resultado'length));
                    when "0111" =>
                    resultado_integer := input_1_integer ** input_2_integer;
                    resultado <= std_logic_vector(to_unsigned(resultado_integer, resultado'length));
                    when "1000" =>
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
                    when "1001" =>
                    resultado <= input_1 and input_2;
                    when "1010" =>
                    resultado <= input_1 or input_2;
                    when "1011" =>
                    resultado <= not input_1;
                    when others =>
                    resultado <= resultado;
                  end case;

            end if;
        end if;
    end process;
end architecture behavioral;