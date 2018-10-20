import re
import sys

def opformat(opcode, operands):
    if len(operands) == 0:
        return "\t{}\n".format(opcode)
    op =  "\t{}\t{}".format(opcode, operands[0])
    for operand in operands[1:]:
        op += ", {}".format(operand)
    return op + "\n"

def check_and_int(i, bit, signed = True):
    i = int(i)
    if signed:
        assert -(2**bit) <= i and i < 2**bit, "imm invalid"
        return i
    else:
        assert 0 <= i and i < 2**(bit+1), "imm invalid"
        return i

def replace_pseudo1(line, labels_addrs):
    # ラベルはそのまま返す
    if line.endswith(":\n"):
        return [line]
    # retの変換
    if line == "\tret\n":
        return [opformat("jalr", ["zero", "ra", "0"])]
    # ret以外はopcodeとoprandに分けられる
    opcode, operands = line.strip("\t\n").split("\t")
    operands = operands.split(", ")
    if opcode == "li":
        rd, op2 = operands
        if op2 in labels_addrs:
            label = op2
            # li rd, labelは完全には変換せず、tmp_命令にする
            return [
                opformat("tmp_lui", [rd, label]),
                opformat("tmp_addi", [rd, rd, label])
            ]
        else:
            # li rd, immは完全に変換できるが、immによって場合分けが必要
            imm = check_and_int(op2, 32)
            # imm[31:12] == 0..0 || imm[31:11] == 1..1
            if ((imm >= 0 and (imm & 0xfffff000 == 0))
                    or (imm < 0 and (~imm & 0xfffff800 == 0))):
                # 1命令で済むパターン
                return [opformat("addi", [rd, "zero", imm])]
            else:
                # 2命令かかるパターン
                # immu = imm[31:12] + imm[11] (unsigned)
                immu = ((imm >> 12) & (0xffffffff >> 12)) + (imm >> 11 & 1)
                # imml = imm[11:0] (signed)
                imml = imm & 0xfff
                if imm & 0x800 != 0:
                    # 元々負だったので、符号拡張された負の数にする
                    imml = imm - 2**12
                return [
                    opformat("lui", [rd, immu]),
                    opformat("addi", [rd, rd, imml])
                ]
    if opcode == "mv":
        rd, rs = operands
        return [opformat("addi", [rd, rs, 0])]
    if opcode == "neg":
        rd, rs = operands
        return [opformat("sub", [rd, "zero", rs])]
    if opcode == "j":
        op = operands[0]
        if op in labels_addrs:
            # j label はまだ解決できない
            return [line]
        else:
            imm = check_and_int(op, 20)
            assert imm & 1 == 0
            return [opformat("jal", ["zero", imm])]
    if opcode == "fmv.s":
        rd, rs = operands
        return [opformat("fsgnj.s", [rd, rs, rs])]
    if opcode == "fneg.s":
        rd, rs = operands
        return [opformat("jsgnjn.s", [rd, rs, rs])]
    
    return [line]

def replace_pseudo2(line, labels_addrs, cur_addr):
    opcode, operands = line.strip("\t\n").split("\t")
    operands = operands.split(", ")
    if opcode == "tmp_lui":
        rd, label = operands
        imm = labels_addrs[label]
        # immu = imm[31:12] + imm[11] (unsigned)
        immu = ((imm >> 12) & (0xffffffff >> 12)) + (imm >> 11 & 1)
        return opformat("lui", [rd, immu])
    if opcode == "tmp_addi":
        rd, rd2, label = operands
        assert rd == rd2
        imm = labels_addrs[label]
        # imml = imm[11:0] (signed)
        imml = imm & 0xfff
        if imm & 0x800 != 0:
            # 元々負だったので、符号拡張された負の数にする
            imml = imm - 2**12
        return opformat("addi", [rd, rd, imml])
    if (opcode == "bne" or opcode == "blt") and operands[2] in labels_addrs:
        rs1, rs2, label = operands
        imm = labels_addrs[label] - cur_addr
        check_and_int(imm, 12)
        return opformat(opcode, [rs1, rs2, imm])
    if opcode == "j" and operands[0] in labels_addrs:
        label = operands[0]
        imm = labels_addrs[label] - cur_addr
        check_and_int(imm, 20)
        return opformat("jal", ["zero", imm])
    if opcode == "jal" and operands[0] in labels_addrs:
        label = operands[0]
        imm = labels_addrs[label] - cur_addr
        check_and_int(imm, 20)
        return opformat("jal", ["ra", imm])

    return line



def main():
    # hoge.s libmincaml.S の順に単純に連結する
    argv = sys.argv
    if (argv[1] != "libmincaml.S"):
        print("library wrong")
        return
    if (argv[2][-2:] != ".s"):
        print("assembly wrong")
        return

    with open(argv[1]) as libfile:
        with open(argv[2]) as file:
            lines = file.readlines() + libfile.readlines()

    assembly_name = argv[2][:-2]

    # コメント行（!から始まる行）除去
    lines = [line for line in lines if line[0] != '!']

    # コメント除去
    # （任意個の空白）!（任意の文字列）（改行）　→　（改行）
    lines = [re.sub("\s*!.*\n", "\n", line) for line in lines]

    # ラベル抽出
    labels_addrs = {line[:-2]: 0 for line in lines if line.endswith(":\n")}

    # ラベルの絡まない疑似命令置き換え
    fixed_lines = []
    for line in lines:
        fixed_lines += replace_pseudo1(line, labels_addrs)

    # ラベル消去、命令場所確定
    addressed_lines = []
    addr = 0
    for line in fixed_lines:
        if line.endswith(":\n"):
            # ラベル
            labels_addrs[line[:-2]] = addr
        else:
            addressed_lines.append(line)
            addr += 4

    # ラベルの絡む疑似命令除去
    lines = []
    for i, line in enumerate(addressed_lines):
        lines.append(replace_pseudo2(line, labels_addrs, i*4))

    # 出力
    with open(assembly_name + ".ss", "w") as file:
        for line in lines:
            file.write(line)

if __name__ == '__main__':
    main()
