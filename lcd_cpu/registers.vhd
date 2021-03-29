library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity registers is
    port (
        w,r: in std_logic;
        activate_reg_code: in std_logic_vector(2 downto 0);
        mar_address: in std_logic_vector(7 downto 0);
        reg_in: in std_logic_vector(7 downto 0);
        reg_out: out std_logic_vector(7 downto 0)
    );
end entity;

architecture behavioral of registers is
    signal a_value : std_logic_vector(7 downto 0) := "10101010";
    signal b_value : std_logic_vector(7 downto 0) := "11111111";
    signal c_value : std_logic_vector(7 downto 0) := "11111110";
    signal d_value : std_logic_vector(7 downto 0) := "11110000";

begin
    process (activate_reg_code)
    variable aux_value: std_logic_vector(7 downto 0) := "00000000";
    variable mar_address_split: std_logic_vector(2 downto 0);

    begin
        mar_address_split := mar_address(2 downto 0);
        if(activate_reg_code /= "000") then
            if(w = '1') then
                aux_value := reg_in;
            end if;
            case mar_address_split is
                when "001" =>
                    if(w = '1') then 
                        a_value <= aux_value;
                    else
                        aux_value := a_value;
                    end if;
                    reg_out <= aux_value;
                when "010" =>
                    if(w = '1') then 
                        b_value <= aux_value;
                    else
                        aux_value := b_value;
                    end if;
                    reg_out <= aux_value;
                when "011" =>
                    if(w = '1') then 
                        c_value <= aux_value;
                    else
                        aux_value := c_value;
                    end if;
                    reg_out <= aux_value;
                when "100" =>
                    if(w = '1') then 
                        d_value <= aux_value;
                    else
                        aux_value := d_value;
                    end if;
                    reg_out <= aux_value;
                when others =>
                    aux_value := aux_value;
            end case;
        end if;
    end process;
    
end architecture behavioral;