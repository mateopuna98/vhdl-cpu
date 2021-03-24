----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:14:15 03/04/2021 
-- Design Name: 
-- Module Name:    unidadControl - Behavioral 
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

entity unidadControl is
	 port(clk:in STD_LOGIC;  
         ir_in: in STD_LOGIC_VECTOR(23 downto 0);    
         state_out: out STD_LOGIC_VECTOR(15 downto 0)         
     );
end unidadControl;

architecture Behavioral of unidadControl is
	 
	type estados is (start,add, ir_mbr_01, mbr_alu1_01, ir_mar_01, ram_mbr_01, mbr_alu2_01, mbr_reg_01, mbr_reg_02, 
	ir_mar_02, ram_mbr_02,op1_01,op1_02,op1_03,op1_04,op2_01,op3_01,op3_02,op3_03, 
	inicio_01, inicio_02, inicio_03, inicio_04);
	signal current_st : estados := add;

	
begin		
	process (clk)
		type data_array is array (255 downto 0) of STD_LOGIC_VECTOR (15 downto 0);
		variable CAR : STD_LOGIC_VECTOR(7 downto 0);
		variable cMemory : data_array := (0 => "0000000000000000");
		variable ucout : STD_LOGIC_VECTOR(5 downto 0);
		variable CBR : STD_LOGIC_VECTOR(15 downto 0);
		variable ir_op : STD_LOGIC_VECTOR(4 downto 0);
		variable ir_dir_mod : STD_LOGIC_VECTOR(2 downto 0);
		variable ir_ad1 : STD_LOGIC_VECTOR(7 downto 0);
		variable ir_ad2 : STD_LOGIC_VECTOR(7 downto 0);	
		variable next_val : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
		variable op2_isVal: STD_LOGIC_VECTOR := '0';
		
		
		begin
	if (clk'event and clk = '1') then
		ir_op := ir_in(23 downto 19);
		ir_dir_mod := ir_in(18 downto 15);
		ir_ad1 := ir_in(15 downto 8);
		ir_ad2 := ir_in(7 downto 0);
-- Verificar como se comporta op2		
		if (ir_dir_mod(1 downto 0) < 2) then
			op2_isVal := '0';
		else
			op2_isVal := '1';
		end if;
		if (current_st = start and next_val = "1111") then
		next_val := "0000";	
-- Estado inicial que incrementa el PC		
		elsif (current_st = add) then
			CAR := "0000";
			CBR := cMemory(to_integer(unsigned(CAR)));			
			next_val := "0001";
			state_out <= CBR;
			current_st <= inicio_01;
		elsif (current_st = inicio_01) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "0010";
			state_out <= CBR;
			current_st <= inicio_02;
		elsif (current_st = inicio_02) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "0011";
			state_out <= CBR;
			current_st <= inicio_03;
		elsif (current_st = inicio_03) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));			
			next_val := "0100";
			state_out <= CBR;
			current_st <= inicio_04;
		elsif (current_st = inicio_04) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "1111";
			state_out <= CBR;
			current_st <= start;		
-- Fin Estado Inicial
-- Estado ADD	
-- anadir con or cualquier otra operacion a tomarse en cuenta en el mismo proceso
	elsif (ir_op = "00001" or ir_op = "00010" or ir_op = "00011" or ir_op = "00100" or ir_op = "00101"	or 
	ir_op = "01000" or ir_op = "01110" or ir_op = "01111") then
		if (op2_isVal = '1') then		
			if (current_st = start) then
				CAR := "00000001";
				CBR := cMemory(to_integer(unsigned(CAR)));			
				next_val := "00000010";
				state_out <= CBR;
				current_st <= mbr_alu1_01;
			elsif (current_st = mbr_alu1_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000011";
				state_out <= CBR;
				current_st <= ir_mar_01;
			elsif (current_st = ir_mar_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "000000100";
				state_out <= CBR;
				current_st <= ram_mbr_01;
			elsif (current_st = ram_mbr_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000101";
				state_out <= CBR;
				current_st <= mbr_alu2_01;
			elsif (current_st = mbr_alu2_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));
-- aqui debe cambiar porque se elige la operacion a realizar
				if (ir_op = "00001") then					
-- esto representa la operacion que se hara en la ALU
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				elsif (ir_op = "00010") then
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				elsif (ir_op = "00011") then
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				elsif (ir_op = "00100") then
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				elsif (ir_op = "00101") then
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				elsif (ir_op = "01000") then
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				elsif (ir_op = "01110") then
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				elsif (ir_op = "01111") then
					next_val := "00000110";
					state_out <= CBR;
					current_st <= mbr_reg_01;
				end if;
			elsif (current_st = mbr_reg_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000111";
				state_out <= CBR;
				current_st <= mbr_reg_02;
			elsif (current_st = mbr_reg_02 then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00001000";
				state_out <= CBR;
				current_st <= add;		
		end if;
		elsif (op2_isVal = '0') then
			if (current_st = start) then
				CAR := "00001001";
				CBR := cMemory(to_integer(unsigned(CAR)));			
				next_val := "00001010";
				state_out <= CBR;
				current_st <= ram_mbr_02;
			elsif (current_st = ram_mbr_02) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00001000";
				state_out <= CBR;
				current_st <= mbr_alu1_01;
		end if;		
		end if;	
		elsif (ir_op ="00111") then
			if (current_st = start) then
				CAR := "0101";
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "0111";
				state_out <= CBR;
				current_st <= op2_01;
			elsif (current_st = op2_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "1111";
				state_out <= CBR;
				current_st <= add;			
		end if;
		
		elsif (ir_op ="01001" or ir_op ="01010" or ir_op ="01011" or ir_op ="01100" ) then
			if (current_st = start) then
				CAR := "0101";
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "0010";
				state_out <= CBR;
				current_st <= op3_01;
			elsif (current_st = op3_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "0011";
				state_out <= CBR;
				current_st <= op3_02;
			elsif (current_st = op3_02) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "1000";
				state_out <= CBR;
				current_st <= op3_03;
			elsif (current_st = op3_03) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "1111";
				state_out <= CBR;
				current_st <= add;			
		end if;	

		end if;
		end if;
	end process;
	
end Behavioral;

