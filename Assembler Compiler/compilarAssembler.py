import argparse
import sys
import re
cod_instruccion = {
    "add": {"binario": "00001", "num_args": 2},
    "sub": {"binario": "00010", "num_args": 2},
    "mul": {"binario": "00011", "num_args": 2},
    "div": {"binario": "00100", "num_args": 2},
    "pot": {"binario": "00101", "num_args": 2},
    "mov": {"binario": "00110", "num_args": 2},
    "and": {"binario": "00111", "num_args": 2},
    "or":  {"binario": "01000", "num_args": 2},
    "not": {"binario": "01001", "num_args": 1},
    "db":  {"binario": "01010", "num_args": 1},
    "cmp": {"binario": "01011", "num_args": 2},
    "jz":  {"binario": "01100", "num_args": 1},
    "jg":  {"binario": "01101", "num_args": 1},
    "jl":  {"binario": "01110", "num_args": 1},
    "jmp": {"binario": "01111", "num_args": 1},
    "prt": {"binario": "10000", "num_args": 1},
    "rst": {"binario": "10001", "num_args": 0},
    "hlt": {"binario": "10010", "num_args": 0}
}

cod_registro = {
    "a" : "00000001",
    "b" : "00000010",
    "c" : "00000011",
    "d" : "00000100"
}
data_address_start = 128
variables = dict()

def clean_lines(lines):
    lines = [line.replace("\n","").lower().strip() for line in lines]
    return list(filter(None,lines))

def parse_hlt(lines):
    hlt_present = False
    hlt_index  = -1
    hlt_line = ""
    for idx,line in enumerate(lines):
        if "hlt" in line:
            hlt_present = True
            hlt_index = idx
            hlt_line = line

    hlt_syntax_correct = True if len(hlt_line) == 3 else False
    hlt_at_the_end = True if hlt_index == len(lines) - 1 else False
    
    if not hlt_present:
        raise Exception("HLT command is not present in the code")
    elif not hlt_at_the_end:
        raise Exception("HLT should be the last line of a program")
    elif not hlt_syntax_correct:
        raise Exception("HLT carries no arguments and should be the only elem in a line")

def parse_db(lines):
    db_lines_idx = list()
    for idx,line in enumerate(lines):
        if "db" in line:
           db_lines_idx.append(idx) 
    for i,idx in enumerate(db_lines_idx):
        if i != idx:
            raise Exception("DB constant can only be declared at the beginning of the file")

    db_lines = list(filter(lambda line: True if "db" in line else False,lines))
    split_db_lines = [re.split(': |\s',line) for line in db_lines]

    db_instructions = list()
    op_code = cod_instruccion["db"]["binario"]
    op1_dir_mode = "0"
    op2_dir_mode = "10"

    for idx,split_db_line in enumerate(split_db_lines):
        if len(split_db_line) > 3 or len(split_db_line) < 3:
            raise Exception("Invalid arguments for constant declaration. Line: " + str(idx))
        elif split_db_line[0] in ["a","b","c","d","db"] or split_db_line[0].isnumeric():
            raise Exception("Invalid name for constant. Register names and number only names are not allowed. Line: " + str(idx))
        elif not split_db_line[2].isnumeric():
            raise Exception("Contant value must be integer. Line: " + str(idx)) 
        op1_address = '{0:08b}'.format(data_address_start +int(idx))
        op2_value =  '{0:08b}'.format(int(split_db_line[2]))
        variables[split_db_line[0]] = op1_address
        db_instructions.append(op_code + op1_dir_mode + op2_dir_mode + op1_address + op2_value)

    return db_instructions

def parse_lines(lines,db_instructions):
    binary_instructions = list()
    for idx,line in enumerate(lines):
        if idx < len(db_instructions):
            continue
        instruction = list(filter(None,re.split(',|\s',line)))
        instruction_keyword = instruction[0]
        if instruction_keyword not in cod_instruccion.keys():
            raise Exception("Instruction \'" + instruction_keyword+"\' not found. Please enter a valid instruction. Line: " + str(idx))
        instruction_args_number = cod_instruccion[instruction_keyword]["num_args"]
        if len(instruction) - 1 != instruction_args_number:
            raise Exception("Wrong number of arguments. Instruction " + instruction_keyword + " takes " + str(instruction_args_number) + " args. Line: " + str(idx))

        binary_keyword = cod_instruccion[instruction_keyword]["binario"]
        op1_dir_mode = "0"
        op2_dir_mode = "00"
        op1 = "00000000"
        op2 = "00000000"
        for idx,word in enumerate(instruction[1:]):
            if idx == 0:
                if word in cod_registro:
                    op1_dir_mode = "1"
                    op1 = cod_registro[word]
                elif word in variables:
                    op1_dir_mode = "0"
                    op1 = variables[word]
            elif idx == 1:
                if word in cod_registro:
                    op2_dir_mode = "01"
                    op2 = cod_registro[word]
                elif word in variables:
                    op2_dir_mode = "00"
                    op2 = variables[word]
                else:
                    op2_dir_mode = "10"
                    op2 = '{0:08b}'.format(int(word))
        binary_word = binary_keyword + op1_dir_mode + op2_dir_mode + op1 + op2
        binary_instructions.append(binary_word)
    return db_instructions + binary_instructions


def compile(input):
    lines = list()
    with open(input,'r') as file_in:
        lines = file_in.readlines()
    lines = clean_lines(lines)
    parse_hlt(lines)
    db_instructions = parse_db(lines)
    binary_instructions = parse_lines(lines,db_instructions)

    name = input.split('/')[1]
    f = open("bin_" + name,'x')
    for instruction in binary_instructions:
        f.write("%s\n" % instruction)    
    f.close()

def setup_cli():
    """
    Configura los argumentos a ser usados en el assembler compiler. Usando argparse library
    """
    pars_arg = argparse.ArgumentParser(description='',
                                       prog='compilarAssembler.py', usage='python %(prog)s --args')

    pars_arg.add_argument('--f', help='Obligatorio. El archivo assembler a ser leido.  '
                                            ' - uso:  --f <archivo>.txt', default="",
                          dest='input', type=str)
    return pars_arg

if __name__ == "__main__":
    parser = setup_cli()
    if len(sys.argv) < 2:
        parser.print_help()
        
        sys.exit(1)
    else:
        res = parser.parse_args()
        print(res.input)

        compile(input=res.input)



