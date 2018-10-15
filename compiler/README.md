# 全体
コンパイル  
`python3 label_remover.py <asmfilename>`  
`python3 assembly_simulator.py <asmfilename>`  

# コンパイラ使い方
`make native-code`すると`min-caml.opt`という実行可能ファイルができる  
`./min-caml <filename(拡張子抜き)>`で`<filename>.s`という名前でアセンブリ生成  

# アセンブリ仕様
* レジスタ名  
  https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md
  に準拠。x8は未定
* 命令のフォーマット  
  ラベルではない各行は、  
  `\t<opcode>\toprand1[, <oprand2>[, <oprand3>]\n]`  
  となっている。  
  そのため、頭と尻の`\t・\n`を落として`\t`で区切るとopcodeとoprandを分離でき、  
  `", "`で区切ると各oprandを分離できる。
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
blt rs1, rs2, imm
```
* 仮想命令  
```
label: = (番地ラベル)
ret = jalr zero, ra, 0
li rd, imm = if (imm[31:12] == 0..0 || imm[31:12] == 1..1)
               addi rd, zero, imm ←アセンブラはとりあえずこれしか仮定しない
             else if (imm[11] == 0)
               lui rd, imm[31:12]
               addi rd, zero, imm[11:0]
             else
               lui rd, imm[31:12]
               addi rd, rd, imm[10:0]
               addi rd, rd, 0b010000000000(10bit目だけ1)
               addi rd, rd, 0b010000000000(10bit目だけ1)
li rd, label = li rd, (labelの中身)
bne rs1, rs2, label = bne rs1, rs2, (labelへのoffset)
blt rs1, rs2, label = blt rs1, rs2, (labelへのoffset)
mv rd, rs = addi rd, rs, 0
neg rd, rs = sub rd, zero, rs
j offset = jal zero, offset
j label = j (labelへのoffset)
call label = jal ra, (labelへのoffset)
```

# アセンブラ
`python3 label_remover.py <asmfilename>`  
で標準出力に「ラベルと仮想命令を取り除いたアセンブリ」を出力する(ファイルが欲しかったらシェルでリダイレクト)  

未解決問題：
* li rd, immの解釈が1通りしかできない（immの絶対値が大きいと無理）  
  ラベル行数問題を解決する必要がある、どうしよう
* call [外部関数ラベル] はそのまま出てくる

# アセンブリシミュレータ
`python3 assembly_simulator.py <asmfilename>`  
で標準出力にシミュレーションの結果を表示する  
かなり適当

# こっから下が最終的な公開情報になる予定

# はじめに
このコンパイラはmin-camlを改造して作っています。README.orgがmin-caml本来のREADMEですので、詳細はそちらを参照してください。  
