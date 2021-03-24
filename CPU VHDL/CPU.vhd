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

    component RAM is
        port(
		r,w , activar_ram:in STD_LOGIC;         
        address:in STD_LOGIC_VECTOR(7 downto 0);
        data_in:in STD_LOGIC_VECTOR(7 downto 0);
        data_out:out STD_LOGIC_VECTOR(7 downto 0)
    );
    end component; 
	 
component	 unidadControl is
	 port(ir_in: in STD_LOGIC_VECTOR(15 downto 0);    
         state_out: out STD_LOGIC_VECTOR(15 downto 0)         
     );
end component;

 component MBR is
         port(
         r,w,activar_mbr:in STD_LOGIC;
         mbr_in: in std_logic_vector(15 downto 0);
         mbr_out:out std_logic_vector(15 downto 0)        
     );
	 end component;

     component mbr_demux is
         port (
             op : in std_logic_vector(1 downto 0);
             write_to: out std_logic
         );
     end component;

     component AC is
         port(r,w,suma, activar_ac:in STD_LOGIC;
         ac_in: in std_logic_vector(15 downto 0);
         ac_out: out std_logic_vector(15 downto 0)
     );
	 end component;

     component IR is
         port(r,w, activar_ir:in STD_LOGIC;
         ir_in: in std_logic_vector(7 downto 0);
         ir_out: out std_logic_vector(7 downto 0);
         instruction: out std_logic_vector(23 downto 0)       
     );
	 end component;

    signal pc_value : std_logic_vector(7 downto 0) := "00000000";
	signal ir_value : std_logic_vector(7 downto 0) := "00000000";   
	signal ac_value : std_logic_vector(15 downto 0) := "0000000000000000";  
    signal mar_mux_out : std_logic_vector(7 downto 0) :=  "00000000";
    signal operation : std_logic_vector(3 downto 0) := "0000";
    signal mar_out : std_logic_vector(11 downto 0) := "000000000000";
	signal mbr_out : std_logic_vector(15 downto 0) := "0000000000000000";
    signal ram_data_in : std_logic_vector(15 downto 0) := "0000000000000000";
    signal ram_data_out : std_logic_vector(15 downto 0) := "0000000000000000";
	signal control_out : std_logic_vector(15 downto 0) := "0000000000000000";

begin
    --saque el clk porque habia errores y no entendia bien como servia, lo puedes anadir si lo necesitas
	unidadControlU: unidadControl port map(
		ir_value, 
		control_out
		);
    
    pcU: pc port map ( 
        control_out(7),
        control_out(10 downto 9),
        ir_value,      
        pc_value
    );

    marMuxU: mar_mux port map (
        pc_value,
        ir_value,
        control_out(7),
        control_out(3),
        mar_mux_out
    );

    marU: mar port map (        
        control_out(6),
        control_out(4),
        mar_mux_out,
        mar_out
    );

    ramU: ram port map (        
        control_out(7),
		control_out(6),
        control_out(3),
        mar_out,
        ac_value,
        ram_data_out
    );
	 
	  mbrU: mbr port map (        
        control_out(7),
        control_out(6),
		  control_out(2),
		  ram_data_out,
        mbr_out
    );
	 
	  irU: ir port map (        
        control_out(7),
        control_out(6),
		  control_out(1),
        mbr_out,
        ir_value
    );
	 
	  
	  acU: ac port map (        
        control_out(7),
        control_out(6),
		  control_out(8),
		  control_out(0),
        mbr_out,
        ac_value
    );

end architecture;