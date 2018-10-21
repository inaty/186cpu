import sys
import time


# common to linker

def check_and_int(i, bit, mode = ""):
    i = int(i)
    us = (0 <= i and i < 2**(bit+1))
    s = (-(2**bit) <= i and i < 2**bit)
    if mode == "unsigned":
        assert us
    elif mode == "both":
        assert us or s, "i = {}, bit = {}".format(i, bit)
    else:
        # signed
        assert s
    return i

def sign_extend(i, bit):
    assert i >= 0
    s = 1 << (bit - 1)
    if i & s != 0:
        i = i - 2**bit
    return i


M = []
cont = True
F8 = 0xffffffff

inputbuf = []

def read_into_inputbuf():
    assert inputbuf == []
    inputbuf = [s for s in input().strip("\n").split() if s != ""]

def mem_init():
    for i in range(0, 100):
        M.append(0)

def fetch(pc, lines):
    check_and_int(pc, 32, "unsigned")
    assert pc%4 == 0
    return lines[pc//4]

def execute(opcode, operands, regs):
    pc_increment = True

    if (opcode == "lui"):
        rd, imm = operands
        imm = check_and_int(imm, 32, "both")
        assert imm & 0xfff == 0
        regs[rd] = sign_extend(imm & 0xfffff000, 32)
    elif (opcode == "jal"):
        rd, imm = operands
        imm = check_and_int(imm, 20)
        regs[rd] = regs["pc"] + 4
        regs["pc"] = regs["pc"] + imm
        pc_increment = False
    elif (opcode == "jalr"):
        rd, rs1, imm = operands
        imm = check_and_int(imm, 12)
        regs[rd] = regs["pc"] + 4
        regs["pc"] = regs[rs1] + imm
        pc_increment = False
    elif (opcode == "bne"):
        rs1, rs2, imm = operands
        imm = check_and_int(imm, 12)
        if (regs[rs1] != regs[rs2]):
            regs["pc"] = regs["pc"] + imm
            pc_increment = False
    elif (opcode == "blt"):
        rs1, rs2, imm = operands
        imm = check_and_int(imm, 12)
        if (regs[rs1] < regs[rs2]):
            regs["pc"] = regs["pc"] + imm
            pc_increment = False
    elif (opcode == "lw"):
        rd, rs1, imm = operands
        imm = check_and_int(imm, 12)
        addr = regs[rs1] + imm
        assert addr%4 == 0
        regs[rd] = M[addr//4]
    elif (opcode == "sw"):
        rs1, rs2, imm = operands
        imm = check_and_int(imm, 12)
        addr = regs[rs1] + imm
        assert addr%4 == 0
        M[addr//4] = regs[rs2]
    elif (opcode == "addi"):
        rd, rs1, imm = operands
        imm = check_and_int(imm, 12)
        regs[rd] = sign_extend((regs[rs1] + imm) & F8, 32)
    elif (opcode == "slli"):
        rd, rs1, imm = operands
        imm = check_and_int(imm, 5, "unsigned")
        regs[rd] = sign_extend((regs[rs1] << imm) & F8, 32)
    elif (opcode == "add"):
        rd, rs1, rs2 = operands
        regs[rd] = sign_extend((regs[rs1] + regs[rs2]) & F8, 32)
    elif (opcode == "sub"):
        rd, rs1, rs2 = operands
        regs[rd] = ((regs[rs1] - regs[rs2]) & F8, 32)
    elif (opcode == "sll"):
        rd, rs1, rs2 = operands
        regs[rd] = ((regs[rs1] << regs[rs2]) & F8, 32)
    elif (opcode == "mul"):
        rd, rs1, rs2 = operands
        regs[rd] = sign_extend((regs[rs1] * regs[rs2]) & F8, 32)
    elif (opcode == "div"):
        rd, rs1, rs2 = operands
        regs[rd] = sign_extend((regs[rs1] // regs[rs2]) & F8, 32)
    elif (opcode == "divu"):
        rd, rs1, rs2 = operands
        regs[rd] = sign_extend((regs[rs1] & F8) // (regs[rs2] & F8), 32)
    elif opcode == "remu":
        rd, rs1, rs2 = operands
        regs[rd] = sign_extend((regs[rs1] & F8) % (regs[rs2] & F8), 32)
    elif opcode == "in":
        rd, rs1, imm = operands
        if inputbuf == []:
            read_into_inputbuf()
        regs[rd] = check_and_int(inputbuf[0], 8, "both") & 0x000000ff
        inputbuf = inputbuf[1:]
    elif opcode == "out":
        rd, rs1, imm = operands
        sys.stdout.write(chr(regs[rs1] & 0x000000ff))
    elif opcode == "fin":
        return False
    else:
        assert False, opcode

    if pc_increment:
        regs["pc"] += 4

    return True

def main():
    # ファイル読み込み
    argv = sys.argv

    if (len(argv) < 1):
        print("input file is needed")
        return

    with open(argv[1]) as file:
        lines = file.readlines()

    opt_debug = False
    if len(argv) > 2 and argv[2] == "-d":
        opt_debug = True

    regs = {"pc": 0, "zero": 0, "ra": 0, "sp": 0, "a0": 0, "a1": 0}
    mem_init()

    cont = True
    while cont:
        if opt_debug:
            print(regs)
        # print(M)
        # fetch
        line = fetch(regs["pc"], lines)
        if opt_debug:
            print(line.strip("\n"))
        # decode
        opcode, operand = line.strip("\t\n").split("\t")
        operands = operand.split(", ")
        # execute
        cont = execute(opcode, operands, regs)
        regs["zero"] = 0
        # sleep
        time.sleep(0.001)

main()
