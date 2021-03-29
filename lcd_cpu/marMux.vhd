LIBRARY ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity mar_mux is
    port (
        read_from_pc : in std_logic;
        read_from_ir: in std_logic;
        in_1: in std_logic_vector(7 downto 0);
        in_2: in std_logic_vector(7 downto 0);
        mux_out_signal: out std_logic_vector(7 downto 0)
   );
end mar_mux;

architecture behavioral of mar_mux is
    
begin
    process (read_from_pc,read_from_ir)
    begin
        if (read_from_pc = '1') then
            mux_out_signal <= in_1;
        elsif (read_from_ir = '1') then
            mux_out_signal <= in_2;
			else
				mux_out_signal <= in_1;
        end if;
    end process;
    
end architecture behavioral;