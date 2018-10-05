# アセンブリ仕様
* レジスタ名
  https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md
  に準拠。x8は未定
* 実命令
```
addi rd, rs1, imm
slli rd, rs1, imm
add rd, rs1, rs2
sub rd, rs1, rs2
sll rd, rs1, rs2
jalr rd, rs1, imm
lw rd, rs1, imm
sw rs1, rs2, imm
```
* 実命令（hardware)
```
lui rd, imm
jal rd, imm
bne rs1, rs2, imm
```
* 仮想命令
```
ret = jalr zero, ra, 0
li rd, imm = if (imm[31:12] == 0)
               addi rd, imm
             else if (imm[11] == 0)
               lui rd, imm[31:12]
               addi rd, imm[11:0]
             else
               lui rd, imm[31:12]
               addi rd, imm[11:0]
               addi rd, 0b010000000000(10bit目だけ1)
               addi rd, 0b010000000000(10bit目だけ1)
li rd, label = li rd, (labelの中身)
bne rs1, rs2, label = bne rs1, rs2, (labelへのoffset)
blt rs1, rs2, label = bl1 rs1, rs2, (labelへのoffset)
mv rd, rs = addi rd, rs, 0
neg rd, rs = sub rd, zero, rs
j offset = jal zero, offset
j label = j (labelの中身へのoffset)
TODO:いい感じにやる
call label = ???
```

# こっから下が最終的な公開情報になる予定

# はじめに
このコンパイラはmin-camlを改造して作っています。README.orgがmin-caml本来のREADMEですので、詳細はそちらを参照してください。  
