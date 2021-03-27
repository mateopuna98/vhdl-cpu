library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mbrMuxIn is
    port (
        read_from_ir : in std_logic;
        read_from_ram: in std_logic;
        read_from_register: in std_logic;
        read_from_alu: in std_logic;
        in_ir: in std_logic_vector(7 downto 0);
        in_ram: in std_logic_vector(23 downto 0);
        in_register: in std_logic_vector(7 downto 0);
        in_alu: in std_logic_vector(7 downto 0);
        mbr_mux_in_out_signal: out std_logic_vector(23 downto 0)
     );
end entity;

architecture behavioral of mbrMuxIn is

begin
    
process (read_from_ir,read_from_ram,read_from_register,read_from_alu)
    variable aux_mbr_in: std_logic_vector(23 downto 0):= "000000000000000000000000";

begin
    if(read_from_ir = '1') then
        aux_mbr_in(23 downto 16) := in_ir;
    elsif (read_from_ram = '1') then
        aux_mbr_in := in_ram;
    elsif (read_from_register = '1') then
        aux_mbr_in(23 downto 16) := in_register;
    elsif (read_from_alu = '1') then
        aux_mbr_in(23 downto 16) := in_alu;
    end if;
    mbr_mux_in_out_signal <= aux_mbr_in;

end process;

end architecture;
