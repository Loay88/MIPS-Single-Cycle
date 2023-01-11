----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:28 05/07/2022 
-- Design Name: 
-- Module Name:    Proccessor_LM_19101664 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Proccessor_LM_19101664 is
    Port ( clock : in  STD_LOGIC);
end Proccessor_LM_19101664;

architecture Behavioral of Proccessor_LM_19101664 is

component RegisterFile_LM_19101664 is
    Port ( readReg1_num : in  STD_LOGIC_VECTOR (4 downto 0);
           readReg2_num : in  STD_LOGIC_VECTOR (4 downto 0);
           writeRegnum : in  STD_LOGIC_VECTOR (4 downto 0);
           writeData : in  STD_LOGIC_VECTOR (31 downto 0);
           regWrite : in  STD_LOGIC;
           readData1 : out  STD_LOGIC_VECTOR (31 downto 0);
           readData2 : out  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC);
end component;

component PC202_LM_19101664 is
    Port ( inp : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           outp : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component InstructionMem_LM_19101664 is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
           Instruction : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ShiftLeft_LM_19101664 is
    Port ( inputt : in  STD_LOGIC_VECTOR (31 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component SignExtend_LM_19101664 is
    Port ( inputt : in  STD_LOGIC_VECTOR (15 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component ControlUnit_LM_19101664 is
    Port ( operation : in  STD_LOGIC_VECTOR (5 downto 0);
           regdst : out  STD_LOGIC;
           ALUsrc : out  STD_LOGIC;
           MemtoReg : out  STD_LOGIC;
           RegWrite : out  STD_LOGIC;
           MemRead : out  STD_LOGIC;
           MemWrite : out  STD_LOGIC;
           Branch : out  STD_LOGIC;
           ALUop : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

component Data_Memory_LM_19101664 is
    Port ( add : in  STD_LOGIC_VECTOR (31 downto 0);
           w_data : in  STD_LOGIC_VECTOR (31 downto 0);
           r_data : out  STD_LOGIC_VECTOR (31 downto 0);
           mem_w : in  STD_LOGIC;
           mem_r : in  STD_LOGIC;
           clk : in  STD_LOGIC);
end component;

component ALU_LM_19101664 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           op : in  STD_LOGIC_VECTOR (3 downto 0);
           res : out  STD_LOGIC_VECTOR (31 downto 0);
           zeroFlag : out  STD_LOGIC);
end component;

component ALU_Control_LM_19101664 is
    Port ( funcfield : in  STD_LOGIC_VECTOR (5 downto 0);
           ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
           ALUoperation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Mux5_LM_19101664 is
    Port ( in1 : in  STD_LOGIC_VECTOR (4 downto 0);
           in2 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (4 downto 0));
end component;

component LM_Mux32_1_19101664 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component LM_Mux32_2_19101664 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component LM_Mux_3_19101664 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           in2 : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC;
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component Adder4 is
    Port ( in1 : in  STD_LOGIC_VECTOR (31 downto 0);
           outt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component adder_LM_19101664 is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           outputt : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

--Sign extend
signal sign_out: STD_LOGIC_VECTOR (31 downto 0);

--ALU Control
signal alu_control_out: STD_LOGIC_VECTOR (3 downto 0);

--ALU
signal alu_out_res: STD_LOGIC_VECTOR (31 downto 0);
--Data Memory
signal datamem_out_mux2in: STD_LOGIC_VECTOR (31 downto 0);
--PC
signal pc_out: STD_LOGIC_VECTOR (31 downto 0);

signal a4_out : STD_LOGIC_VECTOR (31 downto 0);
signal shl_out_adder_in2 : STD_LOGIC_VECTOR (31 downto 0);
signal adder_out_mux_in : STD_LOGIC_VECTOR (31 downto 0);
signal adder_out_mux1_in: STD_LOGIC_VECTOR (31 downto 0);
signal mux1_out_pc_in: STD_LOGIC_VECTOR (31 downto 0);
signal mux3_out_ALU_B: STD_LOGIC_VECTOR (31 downto 0);
signal alu_zero_out: STD_LOGIC;
--control unit
signal inst_mem_out: STD_LOGIC_VECTOR (31 downto 0); --instruction memory output

signal regdst_mux5_s: STD_LOGIC; --select line of mux5
signal branch_line: STD_LOGIC;
signal memread_to_memr: STD_LOGIC;
signal memtoreg_s2: STD_LOGIC; --select line of mux2
signal ALUOp_alucontrol: STD_LOGIC_VECTOR (1 downto 0);
signal memwrite_to_memw: STD_LOGIC;
signal ALUsrc_s3: STD_LOGIC; --select line of  mux3
signal regwrite_control: STD_LOGIC;

--register file
signal mux5_out_writeregnum_in: STD_LOGIC_VECTOR (4 downto 0);
signal rdata1_A: STD_LOGIC_VECTOR (31 downto 0);
signal rdata2_out: STD_LOGIC_VECTOR (31 downto 0);
signal mux2_out_writedata_in: STD_LOGIC_VECTOR (31 downto 0);
begin

--Control unit
Control: ControlUnit_LM_19101664 port map(
operation => inst_mem_out(31 downto 26),
regdst =>regdst_mux5_s,
branch =>branch_line,
MemRead =>memread_to_memr,
MemtoReg =>memtoreg_s2,
ALUop => ALUOp_alucontrol,
MemWrite => memwrite_to_memw,
ALUsrc => ALUsrc_s3,
RegWrite =>regwrite_control);

--Registers File
Registers: RegisterFile_LM_19101664 port map(
regWrite =>regwrite_control,
readReg1_num => inst_mem_out(25 downto 21),
readReg2_num => inst_mem_out(20 downto 16),
writeRegnum => mux5_out_writeregnum_in ,
writeData => mux2_out_writedata_in,
readData1 => rdata1_A,
readData2 => rdata2_out,
clk => clock
);

--SignExtend
SignExtend: SignExtend_LM_19101664 port map(
inputt => inst_mem_out(15 downto 0),
outputt => sign_out
);

--ALU Control
ALUcontrol: ALU_Control_LM_19101664 port map(
funcfield => inst_mem_out(5 downto 0),
ALUop => ALUOp_alucontrol,
ALUoperation => alu_control_out
);

--ALU
ALU: ALU_LM_19101664 port map(
A => rdata1_A,
B => mux3_out_ALU_B,
op => alu_control_out,
res => alu_out_res ,
zeroFlag =>alu_zero_out
);

--Data Memory
DataMem: Data_Memory_LM_19101664 port map(
add => alu_out_res,
w_data => rdata2_out,
r_data => datamem_out_mux2in,
mem_w => memwrite_to_memw ,
mem_r => memread_to_memr,
clk => clock
);

--PC
PC: PC202_LM_19101664 port map(
inp => mux1_out_pc_in,
clk => clock,
outp =>pc_out
);

--Instruction memory
instmem: InstructionMem_LM_19101664 port map(
Address => pc_out,
clk => clock,
Instruction => inst_mem_out
);
--add4
adderr4: Adder4 port map(
in1 => pc_out,
outt => a4_out
);
--Adder
adderrr: adder_LM_19101664 port map(
input1 => a4_out,
input2 => shl_out_adder_in2,
outputt => adder_out_mux_in);

--ShiftLeft
shl: ShiftLeft_LM_19101664 port map(
inputt => sign_out,
outputt => shl_out_adder_in2);

--Mux1
mux1: LM_Mux32_1_19101664 port map(
in1 => a4_out,
in2 => adder_out_mux_in,
s => (branch_line AND alu_zero_out) ,
outt =>mux1_out_pc_in);

--Mux2
mux2: LM_Mux32_2_19101664 port map(
in1 => alu_out_res,
in2 => datamem_out_mux2in,
outt => mux2_out_writedata_in,
s => memtoreg_s2
);
--Mux3
mux3: LM_Mux_3_19101664 port map(
in1 => rdata2_out,
in2 => sign_out,
s => ALUsrc_s3,
outt => mux3_out_ALU_B
);

--Mux5
mux5: Mux5_LM_19101664 port map(
in1 => inst_mem_out(20 downto 16),
in2 => inst_mem_out(15 downto 11),
outt => mux5_out_writeregnum_in,
s => regdst_mux5_s
);

end Behavioral;
