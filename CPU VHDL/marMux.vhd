LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mar_mux is
    port (
        in_1: in std_logic_vector(11 downto 0);
        in_2: in std_logic_vector(11 downto 0);
        selector : in std_logic;
        mux_out_signal: out std_logic_vector(11 downto 0)
   );
end mar_mux;

architecture behavioral of mar_mux is
    
begin

    process (in_1,in_2,selector)
    begin
        if (selector = '0') then
            mux_out_signal <= in_1;
        elsif (selector = '1') then
            mux_out_signal <= in_2;
        end if;
    end process;
    
end architecture behavioral;