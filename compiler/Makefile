# OCamlMakefileを読んだメモをついでにまとめておこう
# http://www.is.ocha.ac.jp/~asai/MikiBeta/download/tmp/Mikibeta/miki/OCamlMakefile
# make native-codeのとこ、何行かに分けて読む
#
# $(QUIET)$(MAKE) -r -f $(OCAMLMAKEFILE) $(NCRESULT) \
# quietには@が入っている、makefileでは@がついたコマンドの情報を表示しない
# makeはmakefileの変数、いま実行されているmake。
# 特殊なmake使っててかつディレクトリ移動かましたりすると、
# 「make」とだけ打つと違うのが出てくる可能性があるのでこうなっている。
# -rは「デフォルトルールを使用しなくなる」。
# -f $(OCAMLMAKEFILE)で「$(OCAMLMAKEFILE)をmakefileとして扱う」。
# $(NCRESULT)は$(RESULT)に$(SUFFIX)をくっつけたもの。
# どうにかしてここで呼ばれたocamlmakefileにも変数情報が伝播しているor自動ルールにより、
# これはそのままターゲットとして機能する。
#
# REAL_RESULT="$(NCRESULT)" REAL_OCAMLC="$(OCAMLOPT)" make_deps=yes
# ocamlmakefileを走らせる際の引数。
# これが下の方にあるLOW LEVEL RULESのルールに渡されることで実際のコンパイルが走る。
# make_depsはよくわからんけどifdef make_depsでなんか走るらしい、-はエラー無視

RESULT = min-caml
# native codeを生成する際のsuffix。
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall
# 警告31（同一名モジュールが2個ある？）を警告しないようにする
OCAMLLDFLAGS=-warn-error -31

# 普通にmakeするとテストまで走る
# debug-codeはbyte codeらしい、どうdebugなのかはよくわからない
# topも何がtopなのかわからん、普通にbcresult(byte code result)ができるように見える
default: debug-code top $(RESULT) do_test
# いらなさそうに見えるが実は必要らしい
$(RESULT): debug-code top
clean:: nobackup

# 要適宜追加
# cse.mli cse.ml を外した(alphaとbetaの間？)
# lambdaLifting.mli lambdaLifting.ml \も外した(closureとasmの間)
# tupleFlatten.mli tupleFlatten.ml tupleElim.mli tupleElim.ml \も外した
SOURCES = float.c type.ml id.ml m.ml s.ml \
syntax.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml \
closure.mli closure.ml \
asm.mli asm.ml virtual.mli virtual.ml \
simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml \
main.mli main.ml

# 要適宜追加
# ack
TESTS = float_comp print sum-tail gcd sum fib ack even-odd \
adder funcomp cls-rec cls-bug cls-bug2 cls-reg-bug \
shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
join-reg join-reg2 non-tail-if non-tail-if2 \
inprod inprod-rec inprod-loop matmul matmul-flat \
manyargs

TESTS2 = ball

do_test: $(TESTS:%=test/%.cmp) \
	 # $(TESTS2:%=test2/%.cmp)

.PRECIOUS: test/%.s test/%.ss test/%.out test/%.res test/%.ans test/%.cmp \
	test2/%.s test2/%.ss test2/%.res test2/%.ans test2/%.cmp
TRASH = $(TESTS:%=test/%.s) $(TESTS:%=test/%.ss) $(TESTS:%=test/%.out) $(TESTS:%=test/%.res) $(TESTS:%=test/%.ans) $(TESTS:%=test/%.cmp) \
mytest.s mytest.ss mytest.out mytest.res
# $(TESTS2:%=test2/%.s) $(TESTS2:%=test2/%.ss) $(TESTS2:%=test2/%.res)  $(TESTS2:%=test2/%.cmp)

SIMDIR = ../simulator/sim
sim: $(SIMDIR)/bin.c $(SIMDIR)/bin.h $(SIMDIR)/exec.c $(SIMDIR)/exec.h $(SIMDIR)/fpu.c $(SIMDIR)/fpu.h $(SIMDIR)/simulator.c
	gcc $(SIMDIR)/bin.c $(SIMDIR)/fpu.c $(SIMDIR)/exec.c $(SIMDIR)/simulator.c -o sim -lm

raytracer/minrt.s: $(RESULT) raytracer/minrt.ml
	./$(RESULT) raytracer/minrt
rt.ppm: libmincaml.S raytracer/minrt.s sim
	python3 linker.py libmincaml.S raytracer/minrt.s
	python3 assembler.py raytracer/minrt.ss > raytracer/minrt.out
	./sim -f raytracer/minrt.out -i raytracer/sld/contest.bin -o raytracer/rt.ppm -b -p

test/%.s: $(RESULT) test/%.ml
	./$(RESULT) test/$*
test/%.ss: test/%.s
	python3 linker.py libmincaml.S $<
# python3 assembler.py test/%.ss > test/%.res
test/%.out: test/%.ss
	python3 assembler.py $< > $@
test/%.res: test/%.out sim
	./sim -f $< -i raytracer/sld/contest.bin -o $@ -b
# ここが普通のocamlで実行する処理、mlはocamlでもmincamlでも走るようになっていてこれはよし
test/%.ans: test/%.ml
	ocaml $< > $@
test/%.cmp: test/%.res test/%.ans
	diff $^ > $@

# test2/%.s: $(RESULT) test2/%.ml
# 	./$(RESULT) test2/$*
# test2/%.ss: test2/%.s
# 	python3 linker.py libmincaml.S $<
# # python3 simulator.py test/hoge.ss > test/hoge.res
# test2/%.res: test2/%.ss test2/%.in
# 	python3 simulator.py $< < test2/$*.in > $@
# # ここが普通のocamlで実行する処理、mlはocamlでもmincamlでも走るようになっていてこれはよし
# # test2/%.ans: test2/%.ml test2/%.in
# # 	ocaml $< < test2/$*.in > $@
# test2/%.cmp: test2/%.res test2/%.ans
# 	diff $^ > $@

mytest: mytest.res
	

mytest.s: $(RESULT) mytest.ml
	./$(RESULT) mytest
mytest.ss: mytest.s
	python3 linker.py libmincaml.S $<
mytest.out: mytest.ss
	python3 assembler.py $< > mytest.out
mytest.res: mytest.out sim
	./sim -f $< -i raytracer/sld/contest.bin -o $@ -b

# なんかいらなさそうだったのでコメントアウト
# min-caml.html: main.mli main.ml id.ml m.ml s.ml \
# 		syntax.ml type.ml parser.mly lexer.mll typing.mli typing.ml kNormal.mli kNormal.ml \
# 		alpha.mli alpha.ml beta.mli beta.ml assoc.mli assoc.ml \
# 		inline.mli inline.ml constFold.mli constFold.ml elim.mli elim.ml \
# 		closure.mli closure.ml asm.mli asm.ml virtual.mli virtual.ml \
# 		simm.mli simm.ml regAlloc.mli regAlloc.ml emit.mli emit.ml
# 	./to_sparc
# 	caml2html -o min-caml.html $^
# 	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
# 	mv min-caml.tmp.html min-caml.html
# 	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
# 	mv min-caml.tmp.html min-caml.html
# 	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
# 	mv min-caml.tmp.html min-caml.html
#
# release: min-caml.html
# 	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
# 	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

include OCamlMakefile
