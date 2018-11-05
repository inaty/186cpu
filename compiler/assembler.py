import re
import struct
import sys

R_opcodes = {
    "add": "0110011",
    "sub": "0110011",
    "sll": "0110011",
    "slt": "0110011",
    "sltu": "0110011",
    "xor": "0110011",
    "srl": "0110011",
    "sra": "0110011",
    "or": "0110011",
    "and": "0110011",
    "mul": "0110011",
    "div": "0110011",
    "fsgnj.s": "1010011",
    "fsgnjn.s": "1010011",
    "fsgnjx.s": "1010011",
    "feq.s": "1010011",
    "flt.s": "1010011",
}
R_funct7s = {
    "add": "0000000",
    "sub": "0100000",
    "sll": "0000000",
    "slt": "0000000",
    "sltu": "0000000",
    "xor": "0000000",
    "srl": "0000000",
    "sra": "0100000",
    "or": "0000000",
    "and": "0000000",
    "mul": "0000001",
    "div": "0000001",
    "fsgnj.s": "0010000",
    "fsgnjn.s": "0010000",
    "fsgnjx.s": "0010000",
    "feq.s": "1010000",
    "flt.s": "1010000",
}
R_funct3s = {
    "add": "000",
    "sub": "000",
    "sll": "001",
    "slt": "010",
    "sltu": "011",
    "xor": "100",
    "srl": "101",
    "sra": "101",
    "or": "110",
    "and": "111",
    "mul": "000",
    "div": "100",
    "fsgnj.s": "000",
    "fsgnjn.s": "001",
    "fsgnjx.s": "010",
    "feq.s": "010",
    "flt.s": "001",
}

Rrm_opcodes = {
    "fadd.s": "1010011",
    "fsub.s": "1010011",
    "fmul.s": "1010011",
    "fdiv.s": "1010011",
}
Rrm_funct7s = {
    "fadd.s": "0000000",
    "fsub.s": "0000100",
    "fmul.s": "0001000",
    "fdiv.s": "0001100",
}

I_opcodes = {
    "jalr": "1100111",
    "lb": "0000011",
    "lh": "0000011",
    "lw": "0000011",
    "lbu": "0000011",
    "lhu": "0000011",
    "addi": "0010011",
    "slti": "0010011",
    "sltiu": "0010011",
    "xori": "0010011",
    "ori": "0010011",
    "andi": "0010011",
    "slli": "0010011",
    "srli": "0010011",
    "slai": "0010011",
    "flw": "0000111",
    "in": "0001011",
    "ins": "0001011",
    "out": "0001011",
}
I_funct3s = {
    "jalr": "000",
    "lb": "000",
    "lh": "001",
    "lw": "010",
    "lbu": "100",
    "lhu": "101",
    "addi": "000",
    "slti": "010",
    "sltiu": "011",
    "xori": "100",
    "ori": "110",
    "andi": "111",
    "slli": "001",
    "srli": "101",
    "srai": "101",
    "flw": "010",
    "in": "100",
    "ins": "000",
    "out": "001",
}
I_imm = {
    "slli": "0000000",
    "srli": "0000000",
    "srai": "0100000",
}

Irm_opcodes = {
    "fsqrt.s": "1010011",
    "fcvt.w.s": "1010011",
    "fcvt.s.w": "1010011",
    "fcos.s": "1010011",
    "fsin.s": "1010011",
    "fatan.s": "1010011",
    "fmv.w.x": "1010011",
}
Irm_imms = {
    "fsqrt.s": "010110000000",
    "fcvt.w.s": "110000000000",
    "fcvt.s.w": "110100000000",
    "fcos.s": "110000100000",
    "fsin.s": "110000100001",
    "fatan.s": "110100100000",
    "fmv.w.x": "111100000000",
}

S_opcodes = {
    "sb": "0100011",
    "sh": "0100011",
    "sw": "0100011",
    "fsw": "0100111"
}
S_funct3s = {
    "sb": "000",
    "sh": "001",
    "sw": "010",
    "fsw": "010",
}

B_opcodes = {
    "beq": "1100011",
    "bne": "1100011",
    "blt": "1100011",
    "bge": "1100011",
    "bltu": "1100011",
    "bgeu": "1100011",
}
B_funct3s = {
    "beq": "000",
    "bne": "001",
    "blt": "100",
    "bge": "101",
    "bltu": "110",
    "bgeu": "111",
}

U_opcodes = {
    "lui": "0110111",
    "auipc": "0010111",
}

J_opcodes = {
    "jal": "1101111",
}

rms = {
    "rne": "000",
    "rtz": "001",
    "rdn": "010",
}

def regnum(regname):
    # x1など
    matched = re.match("x(\d{1,2})", regname)
    if matched:
        n = int(matched.group(1))
        assert 0 <= n and n <= 31, n
        return n

    # 名前固定レジスタ
    if (regname == "zero"):
        return 0
    if (regname == "ra"):
        return 1
    if (regname == "sp"):
        return 2
    if (regname == "ap"):
        return 3
    if (regname == "hp"):
        return 4

    # a0など
    matched = re.match("a(\d{1,2})", regname)
    if matched:
        n = int(matched.group(1))
        assert 0 <= n and n <= 21, n
        return n+5

    # t0など
    matched = re.match("t(\d)", regname)
    if matched:
        n = int(matched.group(1))
        assert 0 <= n and n <= 4, n
        return n+27

    # fa0など
    matched = re.match("fa(\d{1,2})", regname)
    if matched:
        n = int(matched.group(1))
        assert 0 <= n and n <= 26, n
        return n

    # t0など
    matched = re.match("ft(\d)", regname)
    if matched:
        n = int(matched.group(1))
        assert 0 <= n and n <= 4, n
        return n+27

    assert False, regname

def regstr(regname):
    n = regnum(regname)
    # 正なのでこれでよい（負だとまずい）
    return "{0:05b}".format(n)

def immstr(imm):
    if imm >= 0:
        return "{0:032b}".format(imm)
    else:
        inverted_imm = "{0:032b}".format(~imm)
        return "".join(["0" if c == "1" else "1" for c in inverted_imm])

# imm[31:12]などを実現する
def immsubstr(immstr, h, l):
    n = len(immstr)
    return immstr[(n-1)-h:(n-1)-l+1]

def binary_string_of_inst(opcode, operands):
    if opcode in R_opcodes:
        opcode_org = opcode
        opcode = R_opcodes[opcode]
        funct7, funct3 = R_funct7s[opcode_org], R_funct3s[opcode_org]
        rd = regstr(operands[0])
        rs1, rs2 = regstr(operands[1]), regstr(operands[2])
        return "{}{}{}{}{}{}".format(funct7, rs2, rs1, funct3, rd, opcode)
    elif opcode in Rrm_opcodes:
        opcode_org = opcode
        opcode = Rrm_opcodes[opcode]
        funct7, rm = Rrm_funct7s[opcode_org], rms[operands[3]]
        rd = regstr(operands[0])
        rs1, rs2 = regstr(operands[1]), regstr(operands[2])
        return "{}{}{}{}{}{}".format(funct7, rs2, rs1, rm, rd, opcode)
    elif opcode in I_opcodes:
        opcode_org = opcode
        opcode, funct3 = I_opcodes[opcode], I_funct3s[opcode]
        rd, rs1 = regstr(operands[0]), regstr(operands[1])
        imm = immstr(int(operands[2]))
        if opcode_org in I_imm:
            imm1 = I_imm[opcode_org] + immsubstr(imm, 4, 0)
        else:
            imm1 = immsubstr(imm, 11, 0)
        return "{}{}{}{}{}".format(imm1, rs1, funct3, rd, opcode)
    elif opcode in Irm_opcodes:
        opcode_org = opcode
        opcode, imm1 = Irm_opcodes[opcode], Irm_imms[opcode]
        rd, rs1 = regstr(operands[0]), regstr(operands[1])
        if opcode_org == "fmv.w.x":
            rm = "000"
        else:
            rm = rms[operands[2]]
        return "{}{}{}{}{}".format(imm1, rs1, rm, rd, opcode)
    elif opcode in S_opcodes:
        opcode, funct3 = S_opcodes[opcode], S_funct3s[opcode]
        rs1, rs2 = regstr(operands[0]), regstr(operands[1])
        imm = immstr(int(operands[2]))
        imm1 = immsubstr(imm, 11, 5)
        imm2 = immsubstr(imm, 4, 0)
        return "{}{}{}{}{}{}".format(imm1, rs2, rs1, funct3, imm2, opcode)
    elif opcode in B_opcodes:
        opcode, funct3 = B_opcodes[opcode], B_funct3s[opcode]
        rs1, rs2 = regstr(operands[0]), regstr(operands[1])
        imm = immstr(int(operands[2]))
        imm1 = immsubstr(imm, 12, 12) + immsubstr(imm, 10, 5)
        imm2 = immsubstr(imm, 4, 1) + immsubstr(imm, 11, 11)
        return "{}{}{}{}{}{}".format(imm1, rs2, rs1, funct3, imm2, opcode)
    elif opcode in U_opcodes:
        opcode = U_opcodes[opcode]
        rd = regstr(operands[0])
        imm = immstr(int(operands[1])) # TODO:範囲チェック
        imm1 = immsubstr(imm, 31, 12)
        return "{}{}{}".format(imm1, rd, opcode)
    elif opcode in J_opcodes:
        opcode = J_opcodes[opcode]
        rd = regstr(operands[0])
        imm = immstr(int(operands[1]))
        imm1 = (immsubstr(imm, 20, 20) + immsubstr(imm, 10, 1)
               + immsubstr(imm, 11, 11) + immsubstr(imm, 19, 12))
        return "{}{}{}".format(imm1, rd, opcode)
    elif opcode == "float":
        f = float(operands[0])
        return "".join(["{:08b}".format(b) for b in struct.pack(">f", f)])
    elif opcode == "fin":
        return "0" * 32
    else:
        assert False, "{} {}".format(opcode, ", ".join(operands))

def main():
    # ファイル読み込み
    argv = sys.argv
    argc = len(argv)

    if argc < 2:
        print("input file is needed")
        return

    lines = None
    with open(argv[1]) as file:
        lines = file.readlines()
    if lines is None:
        print("file error")
        return

    # オプション
    opt_hexadecimal = False
    opt_little = False
    if argc >= 3 and argv[2][0] == "-":
        for c in argv[2][1:]:
            if c == "x":
                opt_hexadecimal = True
            if c == "l":
                opt_little = True

    # 変換
    binary_strings = []
    for line in lines:
        opcode, operands = line.strip("\t\n").split("\t")
        operands = operands.split(", ")
        binary_strings.append(binary_string_of_inst(opcode, operands))

    # 表示
    for b in binary_strings:
        if b is None:
            print("None")
            continue

        if opt_little:
            b = b[24:32] + b[16:24] + b[8:16] + b[0:8]
        if opt_hexadecimal:
            i = int("0" + b, 2)
            print("{:08x}".format(i))
        else:
            print(b)

main()
