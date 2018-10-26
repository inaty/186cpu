# 各種使い方
* コンパイラ  
  `make nc`すると`min-caml.opt`という実行可能ファイルができる  
  `./min-caml.opt hoge`でアセンブリ`hoge.s`を生成  
  hoge.mlをコンパイルする時に.mlをつけないのに注意  
* リンカ  
  `python3 linker.py libmincaml.S hoge.s`で実行可能アセンブリ`hoge.ss`を生成  
  (実行可能アセンブリ＝疑似命令を取り除き、ラベルを解決し、レジスタ名が通称でないもの（未実装）)  
  今のところこの使い方のみ（libmincaml除くとダメ）  
  いずれは拡張子`.S`であれば任意個のライブラリをリンクできる（予定）  
* シミュレータ  
  `python3 simulator.py hoge.ss`でシミュレート  
* アセンブラ
  `python3 assembler.py hoge.ss <option>`でアセンブル  
  結果は「01が並んで1命令ごとに改行が入った文字列」で、標準出力に出る  
  <option>は-から始まる文字列で、  
  lを含んでいるとlittle endianに、xを含んでいると16進数出力になる。  
  レジスタの通称削除は今はここでやっている（消す予定）  

# 細かい仕様
* 即値について  
  命令によってはbit列にする際下1bitを切るみたいなのがあるが、  
  アセンブリ/リンクの際にはそのまま元の数字を書く  
  シミュレータ/アセンブラでどうにかする  
  範囲外のbitが0であるような数にしている（つもり）  
  即値は仕様書にsignedと明記されている場合は全部signed、
  明記されていない場合は全部unsigned  


# コンパイラ仕様
* レジスタ名  
  ~~https://github.com/riscv/riscv-asm-manual/blob/master/riscv-asm.md に準拠~~  
  適当に作りました。また変わるかも(tが減りそう)  
```
ra (=x1), sp (=x2) caller save
ap (=x3) = array pointer (array_create以外でアクセスしない)（これはインチキなので後で直す）
hp (=x4) = heap pointer (ヒープに触るとき以外アクセスしない)(というかよくわからない)
a0~a21 (=x5~x26)　caller save
t0~t4 (=x27~x31) caller save
```  
* 出力ファイルhoge.sフォーマット  
  命令行は  
  `\t<opcode>\t<operand1>[, <operand2>[, <operand3>[, <operand4]]\n]`  
  頭と尻の`\t・\n`を落として`\t`で区切るとopcodeとoprandを分離でき、  
  `", "`で区切ると各oprandを分離できる。  
  ラベル行は  
  `:label\n`  
* 出力アセンブリ一覧

```
RV32I
jalr rd, rs1, imm(0)
lw rd, rs1, imm(12bit signed)
sw rs1, rs2, imm(12bit signed)
addi rd, rs1, imm(12bit signed)
slli rd, rs1, imm(12bit signed) ←たぶん5bit以上はないはずだけどバグってたら防げない
add rd, rs1, rs2
sub rd, rs1, rs2
sll rd, rs1, rs2

RV32M
mul rd, rs1, rs2
div rd, rs1, rs2

RV32F
flw rd, rs1, imm(12bit signed)
fsw rs1, rs2, imm(12bit signed)
fadd.s rd, rs1, rs2, rm(rne)
fsub.s rd, rs1, rs2, rm(rne)
fmul.s rd, rs1, rs2, rm(rne)
fdiv.s rd, rs1, rs2, rm(rne)

ORIGINAL
float f(float string)　←命令ではなく、データ置く用
fin 0

PSEUDO
li rd, imm (12bit)
li rd, label (範囲不定)
mv rd, rs
neg rd, rs
fmv.s rd, rs
fneg.s rd, rs
bne rs1, rs2, label
blt rs1, rs2, label
j label
jal label
ret

BUG(コンパイラがちゃんとしてないため出る不正な命令、あとで消すはず)
fcmpd rs1, rs2
nop
fbg rs1, rs2, label
```

* libmincaml.Sに含まれている命令一覧  

```
上と被ってるやつ

RV32I
lw rd, rs1, imm(signed 12bit?)
sw rd, rs1, imm(signed 12bit?)
addi rd, rs1, imm(signed 12bit?)
slli rd, rs1, imm(2)
add rd, rs1, rs2

RV32M
mul rd, rs1, rs2
div rd, rs1, rs2

RV32F
flw rd, rs1, imm(0)
fsq rd, rs1, imm(0)
fmul.s rd, rs1, rs2, rm(rne)

ORIGINAL
float f(float string)

PSEUDO
li rd, imm(signed 12bit?)
li rd, label
mv rd, rs
neg rd, rs1
bne rs1, rs2, label
blt rs1, rs2, label
j label
jal label
ret

被ってないやつ
RV32F
fsqrt.s rd, rs1, rm(rne)
fsgnjn.s rd, rs1, rs2
fsgnjx.s rd, rs1, rs2
fcvt.w.s rd, rs1, rm(rdn, rtz)
feq.s rd, rs1, rs2
flt.s rd, rs1, rs2
fcvt.s.w rd, rs1, rm(rne)

ORIGINAL
fcos.s rd, rs1, rm(rne)
fsin.s rd, rs1, rm(rne)
fatan.s rd, rs1, rm(rne)
out rd, rs1, imm(0)
readint 0
readfloat 0
```

* 被りを消すと最終的には

```
RV32I
jalr rd, rs1, imm(0)
lw rd, rs1, imm(12bit signed)
sw rs1, rs2, imm(12bit signed)
addi rd, rs1, imm(12bit signed)
slli rd, rs1, imm(12bit signed) ←たぶん5bit以上はないはずだけどバグってたら防げない
add rd, rs1, rs2
sub rd, rs1, rs2
sll rd, rs1, rs2

RV32M
mul rd, rs1, rs2
div rd, rs1, rs2

RV32F
flw rd, rs1, imm(12bit signed)
fsw rs1, rs2, imm(12bit signed)
fadd.s rd, rs1, rs2, rm(rne)
fsub.s rd, rs1, rs2, rm(rne)
fmul.s rd, rs1, rs2, rm(rne)
fdiv.s rd, rs1, rs2, rm(rne)
---
fsqrt.s rd, rs1, rm(rne)
fsgnjn.s rd, rs1, rs2
fsgnjx.s rd, rs1, rs2
fcvt.w.s rd, rs1, rm(rdn, rtz)
feq.s rd, rs1, rs2
flt.s rd, rs1, rs2
fcvt.s.w rd, rs1, rm(rne)


ORIGINAL
float f(float string)　←命令ではなく、データ置く用
fin 0
---
fcos.s rd, rs1, rm(rne)
fsin.s rd, rs1, rm(rne)
fatan.s rd, rs1, rm(rne)
out rd, rs1, imm(0)
readint 0
readfloat 0


PSEUDO
li rd, imm (12bit)
li rd, label (範囲不定)
mv rd, rs
neg rd, rs
fmv.s rd, rs
fneg.s rd, rs
bne rs1, rs2, label
blt rs1, rs2, label
j label
jal label
ret

BUG(コンパイラがちゃんとしてないため出る不正な命令、あとで消すはず)
fcmpd rs1, rs2
nop
fbg rs1, rs2, label
```

# リンカ仕様  
まず入力ファイルを全部単純に繋げる（雑すぎる）  
hoge.s libmincaml.S という並び  
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
j imm(20bit signed) = jal zero, imm ←これいらなさそう（でもまあいいや）

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
最後にレジスタ名を全て変換して終了(未実装)  

* コンパイルしたプログラムもしくはライブラリを入れた時のリンカの最終的な出力  
  これに加えて不正な入力をした場合それは素通しされるので注意
  あと未解決ラベルも素通しされるので注意
```
RV32I
lui rd, imm(32bit signed, 下12bitは0)
jal rd, imm
jalr rd, rs1, imm(0)
bne rs1, rs2, imm(?bit)
blt rs1, rs2, imm(?bit)
lw rd, rs1, imm(12bit signed)
sw rs1, rs2, imm(12bit signed)
addi rd, rs1, imm(12bit signed)
slli rd, rs1, imm(12bit signed) ←たぶん5bit以上はないはずだけどバグってたら防げない
add rd, rs1, rs2
sub rd, rs1, rs2
sll rd, rs1, rs2

RV32M
mul rd, rs1, rs2
div rd, rs1, rs2

RV32F
flw rd, rs1, imm(12bit signed)
fsw rs1, rs2, imm(12bit signed)
fadd.s rd, rs1, rs2, rm(rne)
fsub.s rd, rs1, rs2, rm(rne)
fmul.s rd, rs1, rs2, rm(rne)
fdiv.s rd, rs1, rs2, rm(rne)
---
fsqrt.s rd, rs1, rm(rne)
fsgnjn.s rd, rs1, rs2
fsgnjx.s rd, rs1, rs2
fcvt.w.s rd, rs1, rm(rdn, rtz)
feq.s rd, rs1, rs2
flt.s rd, rs1, rs2
fcvt.s.w rd, rs1, rm(rne)
---
fsgnj.s rd, rs1, rs2

ORIGINAL
float f(float string)　←命令ではなく、データ置く用
fin 0
---
fcos.s rd, rs1, rm(rne)
fsin.s rd, rs1, rm(rne)
fatan.s rd, rs1, rm(rne)
out rd, rs1, imm(0)
readint 0
readfloat 0

PSEUDO
なし

BUG(コンパイラがちゃんとしてないため出る不正な命令、あとで消すはず)
fcmpd rs1, rs2
nop
fbg rs1, rs2, label
```

# シミュレータ仕様
  プログラムの中身はいったんメモリにも読まれる(このとき `float f`をうまいこと処理する)のでloadでのfloat即値参照はできるが、実際には独立して確保されているのでプログラム領域破壊バグの再現みたいなのはできない  
  メモリの中身は全てsigned int  
  シミュレート開始時に各種レジスタとpcは全て値0（特にspが0であることは重要）  
* 対応命令セット  
  コンパイラのところにある要求命令一覧全て+α(`divu, remu, in, printint`)  
  `in` 標準入力から空白区切りで文字列表現された数字を読み込む。これ多分解釈間違ってて、本来は文字を1文字読み込むだけのはず
  `out` 標準出力に数字を文字列として出力 or ファイルに数字を文字列として出力
  `readint` 標準入力から空白区切りで文字列表現された数字を読み込む
  `readfloat` 標準入力から空白区切りで文字列表現された実数を読み込む
  `fin 0` シミュレーション終了

# アセンブラ仕様
* 入力ファイルのフォーマット  
  実行可能アセンブリであり、各行が
  `\t<opcode>\t<operand1>[, <operand2>[, <operand3>, <operand4>]]\n]`  
  である必要がある（先頭や区切り文字が違うと動作しない）（変更要望
  あれば教えて）  
* 対応命令一覧  

```
RV32I

OP-IMM rd, rs1, imm
lui rd, imm
auipc rd, imm
jal rd, imm
jalr rd, rs1 imm
BRANCH rs1, rs2, imm
LORD rd, rs1, imm
STORE rs1, rs2, imm
OP rd, rs1, rs2

RV32M
mul rd, rs1, rs2
div rd, rs1, rs2

RV32F
flw rd, rs1, imm
fsw rs1, rs2, imm
fadd.s rd, rs1, rs2, rm(rne)
fsub.s rd, rs1, rs2, rm(rne)
fmul.s rd, rs1, rs2, rm(rne)
fdiv.s rd, rs1, rs2, rm(rne)
fsqrt.s rd, rs1, rm(rne)
fsgnj.s rd, rs1, rs2
fsgnjn.s rd, rs1, rs2
fsgnjx.s rd, rs1, rs2
fcvt.w.s rd, rs1, rm(rdn, rtz)
lfeq.s rd, rs1, rs2
flt.s rd, rs1, rs2
fcvt.s.w rd, rs1, rm(rne)

ORIGINAL
in rd, rs1, imm (rdに値が入る、rs1とimmはダミー、0埋め)
ins rd, rs1, imm (rdに値が入る、rs1とimmはダミー、最上位ビット埋め)
out rd, rs1, imm (rs1の値を送る、rdとimmはダミー)
→コアの仕様通り
※このダミーはアセンブラを書きやすくするためにこうしている
ダミーはそのままバイナリに反映されてしまうので、レジスタにはzero、即値には0を指定するとよい

float f(float string)　→　fの32bit表現
※命令ではなく、データ置く用

fin 0 →　0...0

fcos.s rd, rs1, rm(rne)　→　1100001 00000 rs1 rm rd 1010011
fsin.s rd, rs1, rm(rne)　→　1100001 00001 rs1 rm rd 1010011
fatan.s rd, rs1, rm(rne)　→　1101001 00000 rs1 rm rd 1010011
※サボり、これは最終的には消す
ちなみにそれぞれfcvt.w.d, fcvt.wu.d, fcvt.d.wと同じ
```
* リンカは吐くけどアセンブラは対応していない命令一覧
```
ORIGINAL
readint 0
readfloat 0

PSEUDO
なし
```

# こっから下が最終的な公開情報になる予定

# はじめに
このコンパイラはmin-camlを改造して作っています。README.orgがmin-caml本来のREADMEですので、詳細はそちらを参照してください。  
