----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:52:09 03/27/2021 
-- Design Name: 
-- Module Name:    lcd - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
entity lcd is
	 Port ( 
			  clk : in  STD_LOGIC;  
			  activar_lcd : in  STD_LOGIC;           
           lcd_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  reset : in STD_LOGIC;
			  E: inout std_logic;
			  RS,RW : out std_logic;
		     DB : out std_logic_vector (3 downto 0));	
end lcd;

architecture Behavioral of lcd is
	type estados is (FI1A,FI1B,FI2A,FI2B,FI3A,FI3B,BOR1,BOR2,CONT1,CONT2,
						  MOD1,MOD2,v1,v2,a1,a2,l1,l2,o1,o2,rr1,rr2,espacio1,espacio2,ll1,ll2,e1,e2,i1,i2,d1,d2,oo1,oo2,dos1,dos2,
						  l21,l22,r1,r2, centena1,centena2,decena1,decena2,unidad1,unidad2);
	signal pr_estado,sig_estado:estados;
	signal centenas,decenas,unidades : std_logic_vector (3 downto 0);
	
	
begin
reloj: process (clk)
--podemos cambiar el valor de cuenta para coordinar
		variable cuenta: integer range 0 to 100000:=0;
			begin
				if(clk'event and clk = '1') then
					if (cuenta < 100000) then
						cuenta:=cuenta + 1;
					else
						cuenta := 0;
					end if;
					if (cuenta < 50000) then
						E <= '0';
					else
						E <= '1';
					end if;
				end if;
			end process reloj;

SEC_maquina: process (E)
	variable unid,dec : integer range 0 to 10;
		begin	
			if (E'event and E ='1') then						
				if (reset = '1') then
					pr_estado <= FI1A;								
			else
				pr_estado <= sig_estado;
			end if;	
				
end if;
end process;
		
process (activar_lcd, lcd_in)
variable valor_completo : integer range 0 to 255 := 0;
variable unid,dec,cen: integer range 0 to 10;
begin
	if (activar_lcd = '1') then
		valor_completo := to_integer(unsigned(lcd_in));	
	else
		valor_completo := 0;
	end if;
	cen := valor_completo / 100;
	dec := (valor_completo - (cen * 100)) / 10;
	unid := (valor_completo - (cen * 100) - (dec * 10));	
	centenas <= std_logic_vector(to_unsigned(cen,4));
	decenas <= std_logic_vector(to_unsigned(dec,4));
	unidades <= std_logic_vector(to_unsigned(unid,4));
end process;

process (activar_lcd, pr_estado, unidades, decenas, centenas)
	begin

		case (pr_estado) is
		when FI1A =>
			RS <= '0';
			RW <= '0';
			DB <= "0010";
			sig_estado <= FI1B;
		when FI1B =>
			RS <= '0';
			RW <= '0';
			DB <= "1000";
			sig_estado <= FI2A;
		when FI2A =>
			RS <= '0';
			RW <= '0';
			DB <= "0010";
			sig_estado <= FI2B;
		when FI2B =>
			RS <= '0';
			RW <= '0';
			DB <= "1000";
			sig_estado <= FI3A;
		when FI3A =>
			RS <= '0';
			RW <= '0';
			DB <= "0010";
			sig_estado <= FI3B;
		when FI3B =>
			RS <= '0';
			RW <= '0';
			DB <= "1000";
			sig_estado <= BOR1;
		when BOR1 =>
			RS <= '0';
			RW <= '0';
			DB <= "0000";
			sig_estado <= BOR2;
		when BOR2 =>
			RS <= '0';
			RW <= '0';
			DB <= "0001";
			sig_estado <= CONT1;
		when CONT1 =>
			RS <= '0';
			RW <= '0';
			DB <= "0000";
			sig_estado <= CONT2;
		when CONT2 =>
			RS <= '0';
			RW <= '0';
			DB <= "1100";
			sig_estado <= MOD1;
		when MOD1 =>
			RS <= '0';
			RW <= '0';
			DB <= "0000";
			sig_estado <= MOD2;
		when MOD2 =>
			RS <= '0';
			RW <= '0';
			DB <= "0110";
			sig_estado <= v1;
		when v1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0101";
			sig_estado <= v2;
		when v2 =>
			RS <= '1';
			RW <= '0';
			DB <= "0110";
			sig_estado <= a1;
		when a1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= a2;
		when a2 =>
			RS <= '1';
			RW <= '0';
			DB <= "0001";
			sig_estado <= l1;
		when l1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= l2;
		when l2 =>
			RS <= '1';
			RW <= '0';
			DB <= "1100";
			sig_estado <= o1;
		when o1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= o2;
		when o2 =>
			RS <= '1';
			RW <= '0';
			DB <= "1111";
			sig_estado <= rr1;
		when rr1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0101";
			sig_estado <= rr2;
		when rr2 =>
			RS <= '1';
			RW <= '0';
			DB <= "0010";
			sig_estado <= espacio1;
		when espacio1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0010";
			sig_estado <= espacio2;
		when espacio2 =>
			RS <= '1';
			RW <= '0';
			DB <= "0000";
			sig_estado <= ll1;
		when ll1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= ll2;
		when ll2 =>
			RS <= '1';
			RW <= '0';
			DB <= "1100";
			sig_estado <= e1;
		when e1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= e2;
		when e2 =>
			RS <= '1';
			RW <= '0';
			DB <= "0101";
			sig_estado <= i1;
		when i1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= i2;
		when i2 =>
			RS <= '1';
			RW <= '0';
			DB <= "1001";
			sig_estado <= d1;
		when d1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= d2;
		when d2 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= oo1;
		when oo1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0100";
			sig_estado <= oo2;
		when oo2 =>
			RS <= '1';
			RW <= '0';
			DB <= "1111";
			sig_estado <= dos1;
		when dos1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0011";
			sig_estado <= dos2;
		when dos2 =>
			RS <= '1';
			RW <= '0';
			DB <= "1010";
			sig_estado <= l21;		
		when l21 =>
			RS <= '0';
			RW <= '0';
			DB <= "1100";
			sig_estado <= l22;
		when l22 =>
			RS <= '0';
			RW <= '0';
			DB <= "0000";
			sig_estado <= centena1;
		when centena1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0011";
			sig_estado <= centena2;
		when centena2 =>
			RS <= '1';
			RW <= '0';
			DB <= centenas;
			sig_estado <= decena1;
		when decena1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0011";
			sig_estado <= decena2;
		when decena2 =>
			RS <= '1';
			RW <= '0';		
			DB <= decenas;			
			sig_estado <= unidad1;
		when unidad1 =>
			RS <= '1';
			RW <= '0';
			DB <= "0011";
			sig_estado <= unidad2;
		when unidad2 =>
			RS <= '1';
			RW <= '0';			
			DB <= unidades;						
			sig_estado <= r1;		
		when r1 =>		
			RS <= '0';
			RW <= '0';
			DB <= "1100";
			sig_estado <= r2;		
		when r2 =>
			RS <= '0';
			RW <= '0';
			DB <= "0000";
			sig_estado <= centena1;
		end case;
	
end process;
end Behavioral;

