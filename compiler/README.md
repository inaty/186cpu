# 各種使い方
* コンパイラ  
  `make native-code`すると`min-caml.opt`という実行可能ファイルができる  
  `./min-caml.opt hoge`でアセンブリ`hoge.s`を生成  
  hoge.mlをコンパイルする時に.mlをつけないのに注意  
* リンカ  
  `python3 linker.py libmincaml.S hoge.s`で実行可能アセンブリ`hoge.ss`を生成  
  (実行可能アセンブリ＝疑似命令を取り除き、ラベルを解決し、レジスタ名が通称でないもの)  
  今のところこの使い方のみ（libmincaml除くとダメ）  
  いずれは拡張子`.S`であれば任意個のライブラリをリンクできる（予定）  
* シミュレータ  
  `python3 simulator.py hoge.ss`でシミュレート  
  デフォルトでは出力のみがが標準出力に出る（予定）  
  途中経過を見られるようにするオプションもつける（予定）  
* アセンブラ
  `python3 assembler.py hoge.ss <option>`でアセンブル  
  結果は「01が並んで1命令ごとに改行が入った文字列」で、標準出力に出る  
  <option>は-から始まる文字列で、  
  lを含んでいるとlittle endianに、xを含んでいると16進数出力になる。

# コンパイラ仕様
* レジスタ名  
  ~~https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md に準拠~~  
  適当に作りました。また変わるかも  
```
ra (=x1), sp (=x2) caller save
x3 = 未定
x4 = ヒープポインタ(ヒープに触るとき以外アクセスしない)
a0~a21 (=x5~x26)　caller save
t0~t4 (=x27~x31) callee save
```  
* hoge.sフォーマット  
  命令行は  
  `\t<opcode>\t<operand1>[, <operand2>[, <operand3>[, <operand4]]\n]`  
  頭と尻の`\t・\n`を落として`\t`で区切るとopcodeとoprandを分離でき、  
  `", "`で区切ると各oprandを分離できる。  
  ラベル行は  
  `:label\n`  
* ハードウェア・シミュレータに存在していることが要求されている命令一覧  
  これに追加して疑似命令も吐くが、リンカを通すとだいたい消える（リンカの項にて詳述）  

```
RV32I

lui rd, imm (32bit both)
jal rd, imm (20bit signed)
jalr rd, rs1, imm (12bit signed)
bne rs1, rs2, imm (12bit signed)
blt rs1, rs2, imm (12bit signed)
lw rd, rs1, imm (12bit signed)
sw rs1, rs2, imm (12bit signed)
addi rd, rs1, imm(12bit signed)
slli rd, rs1, imm(5bit unsigned)
add rd, rs1, rs2
sub rd, rs1, rs2
sll rd, rs1, rs2

RV32M

mul rd, rs1, rs2
div rd, rs1, rs2
divu rd, rs1, rs2
remu rd, rs1, rs2

RV32F

flw rd, rs1, imm
fadd.s rd, rs1, rs2, rm(rne)
fsub.s rd, rs1, rs2, rm(rne)
fmul.s rd, rs1, rs2, rm(rne)
fdiv.s rd, rs1, rs2, rm(rne)
fsqrt.s rd, rs1, rm(rne)
fsgnj.s rd, rs1, rs2
fsgnjn.s rd, rs1, rs2
fsgnjx.s rd, rs1, rs2
fcvt.w.s rd, rs1, rm(rdn)
feq.s rd, rs1, rs2
flt.s rd, rs1, rs2
fcvt.s.w rd, rs1, rm(rne)

ORIGINAL
in rd, rs1, imm (rdに値が入る、rs1とimmはダミー、0埋め)
ins rd, rs1, imm (rdに値が入る、rs1とimmはダミー、最上位ビット埋め)
out rd, rs1, imm (rs1の値を送る、rdとimmはダミー)
※これはfpu作れという意味ではなくて、レイトレ試す上でライブラリ作りをサボっただけ（あとでやる？）
fcos.s rd, rs1, rm(rne)
fsin.s rd, rs1, rm(rne)
fatan.s rd, rs1, rm(rne)

```

# リンカ仕様  
まず入力ファイルを全部単純に繋げる（雑すぎる）  
とりあえずhoge.sが先頭  
疑似命令のうち、ラベルが絡まないものをまず変換する  
ついでに`li rd, label`も2命令に変換  
```
pseudo1
RV32I

ret = jalr zero, ra, 0
li rd, label(32bit unsigned)  = tmp_lui rd, label
                                tmp_addi rd, rd, label
li rd, imm(32bit both) = if (imm[31:12] == 0..0 || imm[31:11] == 1..1)
                           addi rd, zero, imm
                         else
                           lui rd, (imm[31:12] + imm[11])
                           addi rd, rd, imm[11:0]
                         end
mv rd, rs = addi rd, rs, 0
neg rd, rs = sub rd, zero, rs
(20bit signed)
j imm = jal zero, imm

RV32F
fmv.s rd, rs = fsgnj.s rd, rs, rs
fneg.s rd, rs = fsgnjn.s rd, rs, rs
```  
こうすると各命令の場所が定まる  
次いでラベル消去  
```
ORIGINAL
label: = (消去、番地記録)
```
次いでラベルが絡む命令を解決  
ここでラベルがはみ出ると死にます  
```
pseudo2
RV32I

(32bit unsigned)
tmp_lui rd, label = lui rd, (labelの中身immに対し imm[31:12] + imm[11])
tmp_addi rd, rd, label = addi rd, rd, (labelの中身immに対しimm[11:0])
(12bit signed)
bne rs1, rs2, label = bne rs1, rs2, (labelへのoffset)
blt rs1, rs2, label = blt rs1, rs2, (labelへのoffset)
(20bit signed)
j label = jal zero, (labelへのoffset)
jal label = jal ra, (labelへのoffset)
```
最後にレジスタ名を全て変換して終了  
コンパイラの吐くアセンブリの中にはリンカで消えない疑似命令があるので注意（以下で詳述）  

# こまかいとこ、即値について  
  命令によっては下1bitを切るみたいなのがあるが、アセンブリの際にはそのまま元の数字を書く  
  シミュレーター/アセンブラでどうにかする  
  範囲外のbitが0であるような数にしている（つもり）  
  即値は仕様書にsignedと明記されている場合は全部signed、
  明記されていない場合は全部unsigned  


# シミュレータ仕様
  プログラム領域とデータ領域は完全に分離している（嘘だが暫定でこう）  
  よって暗黙のうちに、pc系の命令はプログラム領域のみのアドレスを扱い、loadStore系の命令はデータ領域のアドレスのみを扱う  
  メモリの中身は全てsigned int  
  シミュレート開始時に各種レジスタとpcは全て値0（特にspが0であることは重要）  
  ioは文字列  
* 対応命令セット  
  コンパイラのところにある要求命令一覧全て（の予定だけどfloat全部無視）  
  inは空白など区切りで1かたまり読み込み、整数として解釈してレジスタに入れる
  `fin 0`……疑似命令、シミュレーション終了

# アセンブラ仕様
* 入力ファイルのフォーマット  
  実行可能アセンブリであり、各行が
  `\t<opcode>\t<operand1>[, <operand2>[, <operand3>, <operand4>]]\n]`  
  である必要がある（先頭や区切り文字が違うと動作しない）（変更要望
  あれば教えて）  
* 対応命令一覧
  コンパイラはこれに非対応のものを吐くかも  

```
RV32I

OP-IMM rd, rs1, imm (nopは除く)
lui rd, imm
auipc rd, imm
OP rd, rs1, rs2
jal rd, imm
jalr rd, rs1 imm
BRANCH rs1, rs2, imm
LORD rd, rs1, imm
STORE rs1, rs2, imm

ORIGINAL
in rd, rs1, imm (rdに値が入る、rs1とimmはダミー、0埋め)
ins rd, rs1, imm (rdに値が入る、rs1とimmはダミー、最上位ビット埋め)
out rd, rs1, imm (rs1の値を送る、rdとimmはダミー)
※このダミーはアセンブラを書きやすくするためにこうしている
ダミーはそのままバイナリに反映されてしまうので、レジスタにはzero、即値には0を指定するとよい
```


# こっから下が最終的な公開情報になる予定

# はじめに
このコンパイラはmin-camlを改造して作っています。README.orgがmin-caml本来のREADMEですので、詳細はそちらを参照してください。  
