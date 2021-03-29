library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity zero is
    port (
        zero_in   : in std_logic;
        zero_out : out std_logic
    );
end entity;

architecture behavioral of zero is
begin
    process(zero_in)
    begin
        zero_out <= zero_in;
    end process;
    
end architecture;