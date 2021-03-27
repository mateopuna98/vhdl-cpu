library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
    port (
        clk   : in std_logic;
        control_signal: in std_logic_vector(15  downto 0);
        aux_out: out std_logic_vector(15  downto 0)
        );   
end entity;

architecture behavioral of CPU is

    component PC is
        port(
            activar_pc:in STD_LOGIC;
            micro_op: in std_logic_vector(1 downto 0);
            pc_in: in std_logic_vector(7 downto 0);
            pc_out:out STD_LOGIC_VECTOR(7 downto 0)        
        );
	end component;

    component unidadControl is
        port(clk:in STD_LOGIC;  
        ir_in: in STD_LOGIC_VECTOR(23 downto 0);    
        state_out: out STD_LOGIC_VECTOR(15 downto 0)         
    );
   end component;
   
    component mar_mux is
        port (
             read_from_pc : in std_logic;
             read_from_ir: in std_logic;
             in_1: in std_logic_vector(7 downto 0);
             in_2: in std_logic_vector(7 downto 0);
             mux_out_signal: out std_logic_vector(7 downto 0)
        );
    end component;

    component MAR is
        port(
            w,r,activar_mar:in STD_LOGIC;
            mar_in: in STD_LOGIC_VECTOR(7 downto 0);       
            mar_out:out STD_LOGIC_VECTOR(7 downto 0)        
        );
	end component;

    component registers is
        port (
            w,r: in std_logic;
            activate_reg_code: in std_logic_vector(2 downto 0);
            mar_address: in std_logic_vector(7 downto 0);
            reg_in: in std_logic_vector(7 downto 0);
            reg_out: out std_logic_vector(7 downto 0)
        );
    end component;

    component RAM is
        port(w,r,activar_ram:in STD_LOGIC; 
         address:in STD_LOGIC_VECTOR(7 downto 0);
         data_in:in STD_LOGIC_VECTOR(7 downto 0);
         data_out:out STD_LOGIC_VECTOR(23 downto 0)
     );
    end component; 
	 
    component mbr_mux_in is
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
    end component;

    component MBR is
        port(
            r,w,activar_mbr:in STD_LOGIC;
            operando: in std_logic_vector(3 downto 0);
            mbr_in: in std_logic_vector(23 downto 0);
            mbr_out_1:out std_logic_vector(7 downto 0);
            mbr_out_2:out std_logic_vector(7 downto 0);
            mbr_ir_out: out std_logic_vector(23 downto 0)
        );
	 end component;

     component IR is
        port(w,r, activar_ir:in STD_LOGIC;
        operando: std_logic_vector(3 downto 0);
        ir_in: in std_logic_vector(23 downto 0);
        ir_out: out std_logic_vector(7 downto 0);
        ir_out_full: out std_logic_vector(23 downto 0)       
    );
    end component;

    component alu is
        port (
            w,r,activar_alu   : in std_logic;
            input_1,input_2: in std_logic_vector(7 downto 0);
            operation: in std_logic_vector(3 downto 0);
            alu_out: out std_logic_vector(7 downto 0);
            carry,zero: out std_logic
        );
    end component;

    component carry is
        port (
            carry_in   : in std_logic;
            carry_out : out std_logic
        );
    end component;

    component zero is
        port (
            zero_in   : in std_logic;
            zero_out : out std_logic
        );
    end component;

    signal instruction: std_logic_vector(23 downto 0):= "000000000000000000000000";
    signal pc_value : std_logic_vector(7 downto 0) := "00000000";
	signal ir_value : std_logic_vector(7 downto 0) := "00000000";   
	signal registers_out : std_logic_vector(7 downto 0) := "00000000";  
    signal mar_mux_out : std_logic_vector(7 downto 0) :=  "00000000";
    signal mar_out : std_logic_vector(7 downto 0) :=  "00000000";
    signal alu_out : std_logic_vector(7 downto 0) :=  "00000000";
    signal alu_carry_out : std_logic :=  '1';
    signal alu_zero_out : std_logic :=  '1';
    signal carry_out : std_logic :=  '1';
    signal zero_out : std_logic :=  '1';
    signal mbr_mux_out : std_logic_vector(23 downto 0) := "000000000000000000000000";
    signal mbr_output_1 : std_logic_vector(7 downto 0) := "00000000";
    signal mbr_output_2 : std_logic_vector(7 downto 0) := "00000000";
    signal mbr_ir_output : std_logic_vector(23 downto 0) := "000000000000000000000000";
    signal operation : std_logic_vector(3 downto 0) := "0000";
    signal ram_data_out: std_logic_vector(23 downto 0):= "000000000000000000000000";
	signal control_out : std_logic_vector(15 downto 0) := "0000000000000000";

begin
    --saque el clk porque habia errores y no entendia bien como servia, lo puedes anadir si lo necesitas
	unidadControlU: unidadControl port map(
        clk,
		instruction, 
		control_out
	);
    
    pcU: pc port map ( 
        control_out(7),
        control_out(10 downto 9),
        ir_value,      
        pc_value
    );

    marMuxU: mar_mux port map (
        control_out(7),
        control_out(3),
        pc_value,
        ir_value,
        mar_mux_out
    );

    marU: mar port map (        
        control_out(9),
        control_out(10),
        control_out(6),
        mar_mux_out,
        mar_out
    );

    registersU: registers port map (
        control_out(9),
        control_out(10),
        control_out(2 downto 0),
        mar_out,
        mbr_output_1,
        registers_out
    );

    ramU: ram port map (        
        control_out(9),
		control_out(10),
        control_out(5),
        mar_out,
        mbr_output_1,
        ram_data_out
    );

    mbrMuxInU: mbr_mux_in port map (
        control_out(3),
        control_out(5),
        control_out(0),
        control_out(8),
        ir_value,
        ram_data_out,
        registers_out,
        alu_out,
        mbr_mux_out
    );
	mbrU: mbr port map (        
        control_out(10),
        control_out(9),
		control_out(4),
        control_out(15 downto 12),
        mbr_mux_out,
        mbr_output_1,
        mbr_output_2,
        mbr_ir_output
    );
	 
	irU: ir port map (        
        control_out(9),
        control_out(10),
		control_out(3),
        control_out(15 downto 12),
        mbr_ir_output,
        ir_value,
        instruction
    );

    aluU: alu port map (
        control_out(9),
        control_out(10),
        control_out(8),
        mbr_output_1,
        mbr_output_2,
        control_out(15 downto 12),
        alu_out,
        alu_carry_out,
        alu_zero_out
    );

	 carryU: carry port map (
         alu_carry_out,
         carry_out
     );

     zeroU: zero port map (
         alu_zero_out,
         zero_out
     );
end architecture;