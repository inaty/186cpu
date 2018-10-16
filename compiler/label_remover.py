import re
import sys

VIRTUAL_INST_TYPES = [
    "ret", "li", "bne", "blt", "mv", "neg", "j", "call",
    "fmv.s", "fneg.s"
]

def virtual_inst_to_real_line(inst_type, addr, inst, label_addrs):
    if (inst_type == "ret"):
        return "\tjalr\tzero, ra, 0"

    operands = inst[1].split(", ")
    if (inst_type == "li"):
        rd, imm = operands[0], None
        if operands[1] in label_addrs:
            imm = label_addrs[operands[1]]
        else:
            imm = int(operands[1])
        return "\taddi\t{0}, zero, {1}".format(rd, imm)
    elif (inst_type == "bne" or inst_type == "blt"):
        rs1, rs2 = operands[0], operands[1]
        offset = label_addrs[operands[2]] - addr
        return "\t{0}\t{1}, {2}, {3}".format(inst_type, rs1, rs2, offset)
    elif (inst_type == "mv"):
        rd, rs = operands[0], operands[1]
        return "\taddi\t{0}, {1}, 0".format(rd, rs)
    elif (inst_type == "neg"):
        rd, rs = operands[0], operands[1]
        return "\tsub\t{0}, zero, {1}".format(rd, rs)
    elif (inst_type == "j"):
        offset = None
        if operands[0] in label_addrs:
            offset = label_addrs[operands[0]] - addr
        else:
            offset = int(operands[0])
        return "\tjal\tzero, {0}".format(offset)
    elif (inst_type == "call"):
        if operands[0] in label_addrs:
            offset = label_addrs[operands[0]] - addr
            return "\tjal\tra, {0}".format(offset)
        else:
            return "\tcall\t{0}".format(operands[0])
    elif (inst_type == "fmv.s"):
        rd, rs = operands[0], operands[1]
        return "\tfsgnj.s {0}, {1}, {1}".format(rd, rs)
    elif (inst_type == "fneg.s"):
        rd, rs = operands[0], operands[1]
        return "\tfsgnjn.s {0}, {1}, {1}".format(rd, rs)
    else:
        print("virtual_inst_to_real_line")
        return


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

    # コメント行（!から始まる行）除去
    lines = [line for line in lines if line[0] != '!']

    # コメント除去
    # （任意個の空白）!（任意の文字列）（改行）　→　（改行）
    lines = [re.sub("\s*!.*\n", "\n", line) for line in lines]

    # ラベル抽出・アドレス計算
    label_addrs = {}
    addr_lines = []
    addr = 0
    for line in lines:
        if line.endswith(":\n"):
            label_addrs[line.replace(":\n", "")] = addr
        else:
            addr_lines.append([addr, line])
            addr += 4

    # 仮想命令→実命令
    lines = []
    for addr, line in addr_lines:
        inst = line.strip("\t\n").split("\t")
        inst_type = inst[0]
        if inst_type in VIRTUAL_INST_TYPES:
            real_line = virtual_inst_to_real_line(inst_type, addr, inst,
                                                  label_addrs)
        else:
            real_line = line.replace("\n", "")
        lines.append(real_line)

    # 表示
    for line in lines:
        print(line)

main()
