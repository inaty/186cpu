OCOPT = -ccopt -O2
OCAMLBASE=/usr/bin/
OCAMLC=$(OCAMLBASE)/ocamlc
OCAMLOPT=$(OCAMLBASE)/ocamlopt

all: native

clean:
	rm -f *.cm? *.o

native: minrt
bytecode: minrt_b

# サフィックスルール（下）のために必要
.SUFFIXES: .ml .mli .cmo .cmi .cmx

# サフィックスルール（.ml→.cmoの変換をこれでやる、みたいな）
# 時代遅れ説がある http://quruli.ivory.ne.jp/document/make_3.79.1/make-jp_9.html

.ml.cmo:
	$(OCAMLC) -g -c

# .cmxはcの.oに相当し、object fileのnative codeを表す
# -cは「コンパイルのみ」
# $(OCOPT)=-ccopt -O2で、-ccoptはc用オプションを渡す。つまり「最適化レベルO2」
# -nopervasivesはモジュールPervasivesを読まないという意味っぽい
# $<は「最初のファイル」、つまり.ml
# ocamloptの場合.mliを通すのは自動らしい
.ml.cmx:
	$(OCAMLOPT) -c $(OCOPT) -nopervasives -pp ./preprocess.sh $<

.mli.cmi:
	$(OCAMLC) -g -c -nopervasives -pp ./preprocess.sh $<

# miniMLRuntime -> globals -> minrt
minrt.cmx: globals.cmx miniMLRuntime.cmx
minrt.cmo: globals.cmo miniMLRuntime.cmi
globals.cmx: miniMLRuntime.cmx
globals.cmo: miniMLRuntime.cmi

minrt_b: minrt.cmo globals.cmo miniMLRuntime.cmo
	$(OCAMLC) -g -o minrt_b miniMLRuntime.cmo globals.cmo minrt.cmo

minrt: minrt.cmx globals.cmx miniMLRuntime.cmx
	$(OCAMLOPT) -o minrt miniMLRuntime.cmx globals.cmx minrt.cmx

miniMLRuntime.cmi: miniMLRuntime.mli
	$(OCAMLC) -c miniMLRuntime.mli

miniMLRuntime.cmx: miniMLRuntime.ml miniMLRuntime.cmi
	$(OCAMLOPT) -c $(OCOPT) miniMLRuntime.ml

miniMLRuntime.cmo: miniMLRuntime.ml miniMLRuntime.cmi
	$(OCAMLC) -g -c miniMLRuntime.ml

rt: rt.cmx miniMLRuntime.cmx
	$(OCAMLOPT) -o rt miniMLRuntime.cmx rt.cmx

rt_b: rt.cmo miniMLRuntime.cmo
	$(OCAMLC) -o rt_b miniMLRuntime.cmo rt.cmo
