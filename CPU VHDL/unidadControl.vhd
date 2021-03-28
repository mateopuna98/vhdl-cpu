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
	 
	type estados is (start, mbr_write_02, ir_out_01, ir_out_02, mar_write_00, reg_read_00, mbr_write_01, alu_write_00,
	 alu_op_02, mbr_write_00, reg_write_00, pc_add_00, mar_write_01, reg_read_01, ram_read_00, ram_write_00,
	 pc_write_00,
	 inicio_01,inicio_02, inicio_03, inicio_04);
	signal current_st : estados := pc_add_00;

	
begin		
	process (clk)
		type data_array is array (255 downto 0) of STD_LOGIC_VECTOR (15 downto 0);
		variable CAR : STD_LOGIC_VECTOR(7 downto 0);
		variable cMemory : data_array := (0 => "0010001000001000",
1 => "0010001000010000", 2 => "0001001000001000", 3 => "0000001001000000",
4 => "0000010000000001", 5 => "0001001000010000", 6 => "0000001100000000",
7 => "0000001000010000", 8 => "0000001000000001", 9 => "0000010000100000",
10 => "0000001001000000", 11 => "0000001010000000",12 => "0000100111111001",
13 => "0000001000000010", 14 => "0000111000000000", 15 => "0000001010000100",
16 => "0000001000001000",
100 => "0011001100000000", 101 => "0100001100000000", 102 => "0101001100000000",
103 => "0110001100000000", 104 => "0111001100000000", 105 => "1000001100000000",
106 => "1001001100000000", 107 => "1010001100000000", 108 => "1011001100000000",
others => "0000000000000000");
		variable ucout : STD_LOGIC_VECTOR(5 downto 0);
		variable CBR : STD_LOGIC_VECTOR(15 downto 0);
		variable ir_op : STD_LOGIC_VECTOR(4 downto 0);
		variable ir_dir_mod_op2 : STD_LOGIC_VECTOR(1 downto 0);
		variable ir_ad1 : STD_LOGIC_VECTOR(7 downto 0);
		variable ir_ad2 : STD_LOGIC_VECTOR(7 downto 0);	
		variable next_val : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
		variable ir_dir_mod_op1: STD_LOGIC := '0';
		
		
		begin
	if (clk'event and clk = '1') then
		ir_op := ir_in(23 downto 19);
		ir_dir_mod_op1 := ir_in(18);
		ir_dir_mod_op2 := ir_in(17 downto 16);
		ir_ad1 := ir_in(15 downto 8);
		ir_ad2 := ir_in(7 downto 0);
		
		if (current_st = start and next_val = "11111111") then
		next_val := "00000000";	
-- Estado inicial que incrementa el PC		
		elsif (current_st = pc_add_00) then
			CAR := "00000011";
			CBR := cMemory(to_integer(unsigned(CAR)));			
			next_val := "00001111";
			state_out <= CBR;
			current_st <= inicio_01;
		elsif (current_st = inicio_01) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "00001001";
			state_out <= CBR;
			current_st <= inicio_02;
		elsif (current_st = inicio_02) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "00000111";
			state_out <= CBR;
			current_st <= inicio_03;
		elsif (current_st = inicio_03) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));			
			next_val := "00010000";
			state_out <= CBR;
			current_st <= inicio_04;
		elsif (current_st = inicio_04) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "11111111";
			state_out <= CBR;
			current_st <= start;		
-- Fin Estado Inicial
-- Operaciones ALU
-- anadir con or cualquier otra operacion a tomarse en cuenta en el mismo proceso
	elsif (ir_op = "00001" or ir_op = "00010" or ir_op = "00011" or ir_op = "00100" or ir_op = "00101"	or 
	ir_op = "01000" or ir_op = "01110" or ir_op = "01111" or ir_op = "10000") then
	if (ir_op /= "10000") then
		if (ir_dir_mod_op2 = "10") then		
			if (current_st = start) then
				CAR := "00000000";
				CBR := cMemory(to_integer(unsigned(CAR)));			
				next_val := "00000001";
				state_out <= CBR;
				current_st <= mbr_write_02;	
			end if;
		elsif (ir_dir_mod_op2 = "01") then
			if (current_st = start) then
				CAR := "00000000";
				CBR := cMemory(to_integer(unsigned(CAR)));			
				next_val := "00000011";
				state_out <= CBR;
				current_st <= mar_write_01;
			elsif (current_st = mar_write_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000100";
				state_out <= CBR;
				current_st <= reg_read_01;
			elsif (current_st = reg_read_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000001";
				state_out <= CBR;
				current_st <= mbr_write_02;
			end if;
		elsif (ir_dir_mod_op2 = "00") then
			if (current_st = start) then
				CAR := "00000000";
				CBR := cMemory(to_integer(unsigned(CAR)));			
				next_val := "00000011";
				state_out <= CBR;
				current_st <= mar_write_01;
			elsif (current_st = mar_write_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00001001";
				state_out <= CBR;
				current_st <= ram_read_00;
			elsif (current_st = ram_read_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000001";
				state_out <= CBR;
				current_st <= mbr_write_02;
			end if;
		end if;
	end if;
	if (current_st = start) then
				CAR := "00000010";
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000011";
				state_out <= CBR;
				current_st <= mar_write_00;	
	elsif	(current_st = mbr_write_02) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000010";
				state_out <= CBR;
				current_st <= ir_out_01;			
	elsif (current_st = ir_out_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000011";
				state_out <= CBR;
				current_st <= mar_write_00;
	elsif (current_st = mar_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000100";
				state_out <= CBR;
				current_st <= reg_read_00;
	elsif (current_st = reg_read_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000101";
				state_out <= CBR;
				current_st <= mbr_write_01;
	elsif (current_st = mbr_write_01) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000110";
				state_out <= CBR;
				current_st <= alu_write_00;
	elsif (current_st = alu_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));
-- aqui debe cambiar porque se elige la operacion a realizar
				if (ir_op = "00001") then					
-- esto representa la operacion que se hara en la ALU
					next_val := "01100100";
					state_out <= CBR;
					current_st <= alu_op_02;
				elsif (ir_op = "00010") then
					next_val := "01100101";
					state_out <= CBR;
					current_st <= alu_op_02;
				elsif (ir_op = "00011") then
					next_val := "01100110";
					state_out <= CBR;
					current_st <= alu_op_02;
				elsif (ir_op = "00100") then
					next_val := "01100111";
					state_out <= CBR;
					current_st <= alu_op_02;
				elsif (ir_op = "00101") then
					next_val := "01101000";
					state_out <= CBR;
					current_st <= alu_op_02;
				elsif (ir_op = "01000") then
					next_val := "01101001";
					state_out <= CBR;
					current_st <=alu_op_02;
				elsif (ir_op = "01110") then
					next_val := "01101010";
					state_out <= CBR;
					current_st <= alu_op_02;
				elsif (ir_op = "01111") then
					next_val := "01101011";
					state_out <= CBR;
					current_st <= alu_op_02;
				elsif (ir_op = "10000") then
					next_val := "01101100";
					state_out <= CBR;
					current_st <= alu_op_02;
				end if;
		elsif (current_st = alu_op_02) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000111";
				state_out <= CBR;
				current_st <= mbr_write_00;
		elsif (current_st =  mbr_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00001000";
				state_out <= CBR;
				current_st <= reg_write_00;
		elsif (current_st =  reg_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "11111111";
				state_out <= CBR;
				current_st <= pc_add_00;	
	end if;
		elsif (ir_op ="00110") then
		
		elsif (ir_op ="00111") then
			if (current_st = start) then
				CAR := "00000010";
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000011";
				state_out <= CBR;
				current_st <= mar_write_00;
			elsif (current_st = mar_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000000";
				state_out <= CBR;
				current_st <= ir_out_02;
				elsif (current_st = ir_out_02) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00000111";
				state_out <= CBR;
				current_st <= mbr_write_00;
			elsif (current_st = mbr_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00001010";
				state_out <= CBR;
				current_st <= ram_write_00;
			elsif (current_st = ram_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "11111111";
				state_out <= CBR;
				current_st <= pc_add_00;
		end if;
		
		elsif (ir_op ="01001" or ir_op ="01010" or ir_op ="01011" or ir_op ="01100" ) then
			if (current_st = start) then
				CAR := "00000010";
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "00001011";
				state_out <= CBR;
				current_st <= pc_write_00;
			elsif (current_st = pc_write_00) then
				CAR := next_val;
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "11111111";
				state_out <= CBR;
				current_st <= pc_add_00;				
		end if;
		elsif (ir_op = "01101") then
			if (current_st = start) then
				CAR := "00001100";
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "11111111";
				state_out <= CBR;
				current_st <= pc_add_00;					
		end if;
		elsif (ir_op = "10001") then
			if (ir_dir_mod_op1 = '0') then
				if (current_st = start) then
					CAR := "00000010";
					CBR := cMemory(to_integer(unsigned(CAR)));			
					next_val := "00000011";
					state_out <= CBR;
					current_st <= mar_write_01;
				elsif (current_st = mar_write_01) then
					CAR := next_val;
					CBR := cMemory(to_integer(unsigned(CAR)));				
					next_val := "00001001";
					state_out <= CBR;
					current_st <= ram_read_00;
				elsif (current_st = ram_read_00) then
					CAR := next_val;
					CBR := cMemory(to_integer(unsigned(CAR)));				
					next_val := "00000101";
					state_out <= CBR;
					current_st <= mbr_write_01;
				end if;
			else
				if (current_st = start) then
					CAR := "00000010";
					CBR := cMemory(to_integer(unsigned(CAR)));			
					next_val := "00000011";
					state_out <= CBR;
					current_st <= mar_write_01;
				elsif (current_st = mar_write_01) then
					CAR := next_val;
					CBR := cMemory(to_integer(unsigned(CAR)));				
					next_val := "00000100";
					state_out <= CBR;
					current_st <= reg_read_00;
				elsif (current_st = reg_read_00) then
					CAR := next_val;
					CBR := cMemory(to_integer(unsigned(CAR)));				
					next_val := "00000101";
					state_out <= CBR;
					current_st <= mbr_write_01;
				end if;			
			end if;
			if (current_st = mbr_write_01) then
					CAR := "00001101";
					CBR := cMemory(to_integer(unsigned(CAR)));			
					next_val := "11111111";
					state_out <= CBR;
					current_st <= pc_add_00;
			end if;
		elsif (ir_op = "10010") then
			if (current_st = start) then
				CAR := "00001110";
				CBR := cMemory(to_integer(unsigned(CAR)));				
				next_val := "11111111";
				state_out <= CBR;
				current_st <= pc_add_00;					
		end if;
		end if;
		end if;
	end process;
	
end Behavioral;

