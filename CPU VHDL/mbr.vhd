----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:24 03/08/2021 
-- Design Name: 
-- Module Name:    mbr - Behavioral 
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

entity MBR is
         port(
         r,w,activar_mbr:in STD_LOGIC;
         mbr_in: in std_logic_vector(15 downto 0);
         mbr_out:out std_logic_vector(15 downto 0)        
     );
	 end MBR;

architecture Behavioral of mbr is

begin
	process (activar_mbr)
	variable mbr_value :std_logic_vector(15 downto 0);
	begin
		if (activar_mbr = '1') then
			if (r = '1' and w = '0') then
				mbr_out <= mbr_value;
			elsif (w = '1' and r = '0') then
				mbr_value := mbr_in;
		END IF;
		end if;
	mbr_out <= mbr_value;
	END PROCESS;


end Behavioral;

