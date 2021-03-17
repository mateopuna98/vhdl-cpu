library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CPU is
    port (
        clk   : in std_logic;
        control_signal: in std_logic_vector(8  downto 0);
        aux_out: out std_logic_vector(15  downto 0)
        );   
end entity;

architecture behavioral of CPU is

    component PC is
        port(
            sumar, activar_pc:in STD_LOGIC;
            pc_out:out STD_LOGIC_VECTOR(11 downto 0)        
        );
	end component;

    component MAR is
        port(
            w,activar_mar:in STD_LOGIC;
            mar_in: in STD_LOGIC_VECTOR(11 downto 0);       
            mar_out:out STD_LOGIC_VECTOR(11 downto 0)        
        );
	end component;

    component mar_mux is
        port (
             in_1: in std_logic_vector(11 downto 0);
             in_2: in std_logic_vector(11 downto 0);
             selector : in std_logic;
             mux_out_signal: out std_logic_vector(11 downto 0)
        );
    end component;

    component RAM is
        port(
			r,w , activar_ram:in STD_LOGIC;         
        address:in STD_LOGIC_VECTOR(11 downto 0);
        data_in:in STD_LOGIC_VECTOR(15 downto 0);
        data_out:out STD_LOGIC_VECTOR(15 downto 0)
    );
    end component; 
	 
component	 unidadControl is
	 port(clk:in STD_LOGIC;  
         ir_in: in STD_LOGIC_VECTOR(15 downto 0);    
         state_out: out STD_LOGIC_VECTOR(8 downto 0)         
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
         ir_in: in std_logic_vector(15 downto 0);
         ir_out: out std_logic_vector(15 downto 0)       
     );
	 end component;

    signal pc_value : std_logic_vector(11 downto 0) := "XXXXXXXXXXXX";
	 signal ir_value : std_logic_vector(15 downto 0) := "XXXXXXXXXXXXXXXX";   
	 signal ac_value : std_logic_vector(15 downto 0) := "XXXXXXXXXXXXXXXX";  
    signal mux_out : std_logic_vector(11 downto 0) :=  "XXXXXXXXXXXX";
    signal operation : std_logic_vector(3 downto 0) := "0000";
    signal mar_out : std_logic_vector(11 downto 0) := "XXXXXXXXXXXX";
	 signal mbr_out : std_logic_vector(15 downto 0) := "XXXXXXXXXXXXXXXX";
    signal ram_data_in : std_logic_vector(15 downto 0) := "XXXXXXXXXXXXXXXX";
    signal ram_data_out : std_logic_vector(15 downto 0) := "XXXXXXXXXXXXXXXX";
	 signal control_out : std_logic_vector(8 downto 0) := "XXXXXXXXX";

begin
	unidadControlU: unidadControl port map(
		clk, 
		ir_value, 
		control_out
		);
    pcU: pc port map (        
        control_out(8),
        control_out(5),
        pc_value
    );

    marMuxU: mar_mux port map (
        pc_value,
        ir_value(11 downto 0),
        control_out(1),
        mux_out
    );

    marU: mar port map (        
        control_out(6),
        control_out(4),
        mux_out,
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