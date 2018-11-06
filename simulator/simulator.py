import math
import struct
import sys
import datetime

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
        assert s, "{} {} {} {}".format(i, bit, mode, lnumref[0])
    return i

def sign_extend(i, bit):
    if i < 0:
        return i
    s = 1 << (bit - 1)
    if i & s != 0:
        i = i - (2**bit)
    return i


M = []
cont = True
F8 = 0xffffffff

inputbuf = []

lnumref = [0]

def read_into_inputbuf():
    global inputbuf
    assert inputbuf == []
    inputbuf += [s for s in input().strip("\n").split() if s != ""]

def mem_init(n, lines):
    for i in range(0, n):
        M.append(0)
    for i in range(0, len(lines)):
        opcode, operand = lines[i].strip("\t\n").split("\t")
        if opcode == "float":
            M[i] = float(operand)

def fetch(pc, lines):
    check_and_int(pc, 32, "unsigned")
    assert pc%4 == 0
    return lines[pc//4]

def execute(opcode, operands, regs, fregs, file = None):
    pc_increment = True

    lnum = lnumref[0]

    if (opcode == "lui"):
        rd, imm = operands
        imm = check_and_int(imm, 32, "both")
        assert imm & 0xfff == 0, "{} {}".format(imm, lnum)
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
    elif opcode == "beq":
        rs1, rs2, imm = operands
        imm = check_and_int(imm, 12)
        if (regs[rs1] == regs[rs2]):
            regs["pc"] = regs["pc"] + imm
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
        # print(addr)
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
        regs[rd] = sign_extend((regs[rs1] - regs[rs2]) & F8, 32)
    elif (opcode == "sll"):
        rd, rs1, rs2 = operands
        regs[rd] = sign_extend((regs[rs1] << regs[rs2]) & F8, 32)
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
    elif opcode == "flw":
        rd, rs1, imm = operands
        imm = check_and_int(imm, 12)
        addr = regs[rs1] + imm
        assert addr%4 == 0
        fregs[rd] = M[addr//4]
    elif opcode == "fsw":
        rs1, rs2, imm = operands
        imm = check_and_int(imm, 12)
        addr = regs[rs1] + imm
        assert addr%4 == 0
        M[addr//4] = fregs[rs2]
    elif opcode == "fadd.s":
        rd, rs1, rs2, rm = operands
        fregs[rd] = fregs[rs1] + fregs[rs2]
    elif opcode == "fsub.s":
        rd, rs1, rs2, rm = operands
        fregs[rd] = fregs[rs1] - fregs[rs2]
    elif opcode == "fmul.s":
        rd, rs1, rs2, rm = operands
        fregs[rd] = fregs[rs1] * fregs[rs2]
    elif opcode == "fdiv.s":
        rd, rs1, rs2, rm = operands
        fregs[rd] = fregs[rs1] / fregs[rs2]
    elif opcode == "fsqrt.s":
        rd, rs1, rm = operands
        fregs[rd] = math.sqrt(fregs[rs1])
    elif opcode == "fsgnj.s":
        rd, rs1, rs2 = operands
        r = abs(fregs[rs1])
        if fregs[rs2] < 0:
            r = -r
        fregs[rd] = r
    elif opcode == "fsgnjn.s":
        rd, rs1, rs2 = operands
        r = abs(fregs[rs1])
        if fregs[rs2] >= 0:
            r = -r
        fregs[rd] = r
    elif opcode == "fsgnjx.s":
        rd, rs1, rs2 = operands
        r = abs(fregs[rs1])
        if ((fregs[rs1] >= 0 and fregs[rs2] < 0)
                or (fregs[rs1] < 0 and fregs[rs2] >= 0)):
            r = -r
        fregs[rd] = r
    elif opcode == "fcvt.w.s":
        rd, rs1, rm = operands
        if rm == "rtz":
            regs[rd] = int(fregs[rs1])
        elif rm == "rdn":
            regs[rd] = int(math.floor(fregs[rs1]))
        else:
            assert False, rm
    elif opcode == "feq.s":
        rd, rs1, rs2 = operands
        if fregs[rs1] == fregs[rs2]:
            regs[rd] = 1
        else:
            regs[rd] = 0
    elif opcode == "flt.s":
        rd, rs1, rs2 = operands
        if fregs[rs1] < fregs[rs2]:
            regs[rd] = 1
        else:
            regs[rd] = 0
    elif opcode == "fcvt.s.w":
        rd, rs1, rm = operands
        fregs[rd] = float(regs[rs1])
    elif opcode == "fmv.w.x":
        rd, rs1 = operands
        fregs[rd] = struct.unpack(">f", struct.pack(">i", regs[rs1]))[0]
    elif opcode == "in":
        rd, rs1, imm = operands
        regs[rd] &= 0xffffff00
        regs[rd] |= (sys.stdin.buffer.read(1)[0] & 0xff)
        regs[rd] = sign_extend(regs[rd], 32)
    elif opcode == "out":
        rd, rs1, imm = operands
        if file:
            file.write(chr(regs[rs1] & 0x000000ff))
        else:
            sys.stdout.write(chr(regs[rs1] & 0x000000ff))
    elif opcode == "fcos.s":
        rd, rs1, rm = operands
        fregs[rd] = math.cos(fregs[rs1])
    elif opcode == "fsin.s":
        rd, rs1, rm = operands
        fregs[rd] = math.sin(fregs[rs1])
    elif opcode == "fatan.s":
        rd, rs1, rm = operands
        fregs[rd] = math.atan(fregs[rs1])
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


    # レイトレ用
    # hogefile = open("hoge.ppm", "w")
    # regs = {
    #     "pc": 0, "zero": 0, "ra": 0, "sp": 400000000, "hp": 800000000,
    #     "ap": 1200000000, "a0": 0, "a1": 0, "a2": 0, "a3": 0, "a4": 0,
    #     "a5": 0, "a6": 0, "a7": 0, "a8": 0, "a20": 0, "a21": 0, "t0": 0
    # }
    # mem_init(400000000, lines)
    # fregs = {
    #     "fa0": 0.0, "fa1": 0.0, "ft0": 0.0, "ft1": 0.0,
    # }

    # 一般用(軽量)
    hogefile = None
    regs = {
        "pc": 0, "zero": 0, "ra": 0, "sp": 400000, "hp": 800000,
        "ap": 1200000, "a0": 0, "a1": 0, "a2": 0, "a3": 0, "a4": 0,
        "a5": 0, "a6": 0, "a7": 0, "a8": 0, "a20": 0, "a21": 0, "t0": 0
    }
    fregs = {
        "fa0": 0.0, "fa1": 0.0, "ft0": 0.0, "ft1": 0.0,
    }
    mem_init(400000, lines)


    cont = True
    cnt = 0
    start_time = datetime.datetime.now()
    while cont: # and cnt < 1000:
        cnt += 1
        if cnt % 10000000 == 0:
            print(cnt)
            print((datetime.datetime.now() - start_time).total_seconds())
        if opt_debug:
            print(regs)
            print(fregs)
        # if opt_debug:
        #     print([(i*4 + 80100, M[20025+i]) for i in range(0, 25)])
        # print(M)
        # fetch
        line = fetch(regs["pc"], lines)
        if opt_debug:
            print(line.strip("\n"))
        # decode
        opcode, operand = line.strip("\t\n").split("\t")
        operands = operand.split(", ")
        # debug
        # if opt_debug:
        #     regs_old = regs.copy()
        #     fregs_old = fregs.copy()
        #     M_old = M.copy()
        lnumref[0] = (regs["pc"] // 4) + 1
        # execute
        cont = execute(opcode, operands, regs, fregs, hogefile)
        regs["zero"] = 0
        # debug
        # if opt_debug:
        #     l = []
        #     for key in regs:
        #         if regs[key] != regs_old[key]:
        #             l.append((key, regs[key]))
        #     for key in fregs:
        #         if fregs[key] != fregs_old[key]:
        #             l.append((key, fregs[key]))
        #     for i in range(0, len(M)):
        #         if M[i] != M_old[i]:
        #             l.append((4*i, M[i]))
        #     print(l)

    # レイトレ用
    # 使用されたメモリ領域の出力だが、バグっているっぽい
    # print("used memory")
    # for i in range(0, len(M)//1024):
    #     for j in range(0, 1024):
    #         if M[i*1024 + j] != 0:
    #             break
    #         if j == 1023:
    #             print("{:10d} - {:10d}".format(i*1024, i*1024+1023))

main()
