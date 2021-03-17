----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:34:15 03/08/2021 
-- Design Name: 
-- Module Name:    AC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;


ENTITY AC is
         port(r,w,suma, activar_ac:in STD_LOGIC;
         ac_in: in std_logic_vector(15 downto 0);
         ac_out: out std_logic_vector(15 downto 0)
     );
end ac;

architecture Behavioral of AC is

begin
	 
	process (activar_ac) 
	variable ac_value : std_logic_vector(15 downto 0);
	begin 
		if (activar_ac = '1') then
			if (w = '1' and r ='0' and suma = '0') then
				ac_value := ac_in;			
			elsif (w = '0' and r ='1' and suma = '0') then				
			elsif (w = '0' and r ='0' and suma = '1') then
				ac_value := ac_in + ac_value;				
		end if;
		end if;
		ac_out <= ac_value;
		
		end process;


end Behavioral;

