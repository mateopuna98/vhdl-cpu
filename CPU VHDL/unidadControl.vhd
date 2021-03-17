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
         ir_in: in STD_LOGIC_VECTOR(15 downto 0);    
         state_out: out STD_LOGIC_VECTOR(8 downto 0)         
     );
end unidadControl;

architecture Behavioral of unidadControl is
	 
	type estados is (start,add,op1_01,op1_02,op1_03,op1_04,op2_01,op3_01,op3_02,op3_03, 
	inicio_01, inicio_02, inicio_03, inicio_04);
	signal current_st : estados := add;

	
begin		
	process (clk)
		type data_array is array (15 downto 0) of STD_LOGIC_VECTOR (8 downto 0);
		variable CAR : STD_LOGIC_VECTOR(3 downto 0);
		variable cMemory : data_array := (0 => "100100000", 1 => "001010000", 2 => "010001000", 3 => "001000100", 
		4 => "001000010", 5 => "001010010", 6 => "001000001", 7 => "001001000", 8 => "100000001", others => "000000000");	
		variable ucout : STD_LOGIC_VECTOR(5 downto 0);
		variable CBR : STD_LOGIC_VECTOR(8 downto 0);
		variable ir_op : STD_LOGIC_VECTOR(3 downto 0);
		variable ir_ad : STD_LOGIC_VECTOR(11 downto 0);
		variable next_val : STD_LOGIC_VECTOR(3 downto 0) := "0000";
		
		begin
	if (clk'event and clk = '1') then
		ir_op := ir_in(15 downto 12);
		ir_ad := ir_in(11 downto 0);
		if (current_st = start and next_val = "1111") then
		next_val := "0000";	
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
	
	elsif (ir_op = "0001") then
		if (current_st = start) then
			CAR := "0101";
			CBR := cMemory(to_integer(unsigned(CAR)));			
			next_val := "0010";
			state_out <= CBR;
			current_st <= op1_01;
		elsif (current_st = op1_01) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "0011";
			state_out <= CBR;
				current_st <= op1_02;
		elsif (current_st = op1_02) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "0110";
			state_out <= CBR;
			current_st <= op1_03;
		elsif (current_st = op1_03) then
			CAR := next_val;
			CBR := cMemory(to_integer(unsigned(CAR)));				
			next_val := "1111";
			state_out <= CBR;
			current_st <= add;			
	end if;
		
	elsif (ir_op ="0010") then
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
	
	elsif (ir_op ="0011") then
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

