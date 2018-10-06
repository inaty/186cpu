import sys
import time

M = []

def minit():
    for i in range(0, 100):
        M.append(0)

def fetch(pc, lines):
    if pc%4 != 0:
        raise Exception("pc illegal")
    return lines[pc//4]

def execute(opcode, oprands, regs):
    if (opcode == "addi"):
        rd, rs1, imm = oprands
        imm = int(imm)
        if (imm < -2048 or 2047 < imm):
            raise Exception("addi imm illegal")
        regs[rd] = (regs[rs1] + imm) & 0xffffffff
        regs["pc"] += 4
    elif (opcode == "slli"):
        rd, rs1, imm = oprands
        imm = int(imm)
        if (imm <= 64):
            raise Exception("slli imm illegal")
        regs[rd] = (regs[rs1] << imm) & 0xffffffff
        regs["pc"] += 4
    elif (opcode == "add"):
        rd, rs1, rs2 = oprands
        regs[rd] = (regs[rs1] + regs[rs2]) & 0xffffffff
        regs["pc"] += 4
    elif (opcode == "sub"):
        rd, rs1, rs2 = oprands
        regs[rd] = (regs[rs1] - regs[rs2]) & 0xffffffff
        regs["pc"] += 4
    elif (opcode == "sll"):
        rd, rs1, rs2 = oprands
        regs[rd] = (regs[rs1] << regs[rs2]) & 0xffffffff
        regs["pc"] += 4
    elif (opcode == "jalr"):
        rd, rs1, imm = oprands
        imm = int(imm)
        regs[rd] = regs["pc"] + 4
        regs["pc"] = regs[rs1] + imm
    elif (opcode == "lw"):
        rd, rs1, imm = oprands
        imm = int(imm)
        addr = regs[rs1] + imm
        if (addr%4 != 0):
            raise Exception("lw addr illegal")
        regs[rd] = M[addr//4]
        regs["pc"] += 4
    elif (opcode == "sw"):
        rs1, rs2, imm = oprands
        imm = int(imm)
        addr = regs[rs1] + imm
        if (addr%4 != 0):
            raise Exception("sw addr illegal")
        M[addr//4] = regs[rs2]
        regs["pc"] += 4
    elif (opcode == "lui"):
        raise Exception("lui")
    elif (opcode == "jal"):
        rd, imm = oprands
        imm = int(imm)
        regs[rd] = regs["pc"] + 4
        regs["pc"] = regs["pc"] + imm
    elif (opcode == "bne"):
        rs1, rs2, imm = oprands
        imm = int(imm)
        if (regs[rs1] != regs[rs2]):
            regs["pc"] = regs["pc"] + imm
        else:
            regs["pc"] += 4
    elif (opcode == "blt"):
        rs1, rs2, imm = oprands
        imm = int(imm)
        if (regs[rs1] < regs[rs2]):
            regs["pc"] = regs["pc"] + imm
        else:
            regc[pc] += 4
    elif (opcode == "call"):
        regs["pc"] += 4


def main():
    # ファイル読み込み
    argv = sys.argv

    if (len(argv) < 1):
        print("input file is needed")
        return

    lines = None
    with open(argv[1]) as file:
        lines = file.readlines()
    if lines is None:
        print("file error")
        return

    regs = {"pc": 0, "zero": 0, "ra": 0, "sp": 0, "a0": 0, "a1": 0}
    minit()

    while True:
        # fetch
        print(regs)
        # print(M)
        line = fetch(regs["pc"], lines)
        print(line.strip("\n"))
        # decode
        opcode, oprand = line.strip("\t\n").split("\t")
        oprands = oprand.split(", ")
        # execute
        execute(opcode, oprands, regs)
        regs["zero"] = 0
        # sleep
        time.sleep(0.01)

main()
