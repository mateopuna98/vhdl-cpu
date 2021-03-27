library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity carry is
    port (
        carry_in   : in std_logic;
        carry_out : out std_logic
    );
end entity;

architecture behavioral of carry is
begin
    process(carry_in)
    begin
        carry_out <= carry_in;
    end process;
    
end architecture;