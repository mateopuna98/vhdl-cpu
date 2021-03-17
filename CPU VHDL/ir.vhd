----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:23:49 03/08/2021 
-- Design Name: 
-- Module Name:    ir - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

  entity IR is
         port(r,w, activar_ir:in STD_LOGIC;
         ir_in: in std_logic_vector(15 downto 0);
         ir_out: out std_logic_vector(15 downto 0)       
     );
	 end IR;

architecture Behavioral of ir is

begin
	process (activar_ir) 
		variable ir_value :  std_logic_vector(15 downto 0);
		begin
			if(activar_ir = '1') then
				if ( w = '1' and r = '0') then
					ir_value := ir_in;
				elsif ( w = '0' and r = '1') then
					ir_out <= ir_value;
				end if;
			elsif(activar_ir = '0') then
				ir_out <= "0000000000000000";
			end if;
		ir_out <= ir_value;
	
	end process;

end Behavioral;

