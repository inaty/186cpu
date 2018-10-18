# レイトレを動かす
わかんねー  
やることは大まかに2つ  

* globalsを揃える
リンク可能なライブラリみたいなものへコンパイルしてしまうのが早いのかな
create_arrayがあるがこれはlexerで対応済みなので問題なし
とするとやはりコンパイルしてglobals.sを作り、リンカでリンクすることにするのが良さそう
言語組み込みライブラリみたいなのも欲しいよねと考えると、
メモリにj start / libmincaml / globals という感じにするのがいいのかな
だとしたら必要そうなlibmincamlと、globalsコンパイラが必要そう

* miniMLRuntimeを揃える
これは少なくともこのファイルを直接どうこうする必要はない  
逐次ライブラリに追加するなりminiMLRuntime.sを用意するなりしてやっていこう

外部なんちゃら呼出しは全部min-camlをつけてcallする仕様っぽい
とりあえずこの方針のままでいいかなあ

# フィボナッチを動かす
まず動作確認を兼ねて全然risc5じゃないやつのフィボナッチコードを出力

to_riscvを変える

メモ全部消えた
アー

仮想マシンコード生成（Virtual.f）、
SPARCの13 bit即値最適化（Simm13.f）、
レジスタ割り当て（RegAlloc.f）、
アセンブリ生成（Emit.f）を行います。

addとaddiに対応（Nontailだけ？不明）

これ関数呼出し規約勝手に決めていいっぽい？
でもなんか参考にできそうなサイト見つかりはしたな

そもそもTailとNontailの区別がいるのかどうか
と思ったけど普通にretとかするからいるわ

%i7 = Return address, Return address of the subroutine.
%o7 = Called return address, Return address of the called subroutine.(再帰用？)
%g0 = zero
ret Synthetic instruction for: jmpl %i7 + 8, %g0
retl Synthetic instruction for: jmpl %o7 + 8, %g0

call label30 Store %pc in %o7, and jump to label30

callがやってることがそもそも違うなあ
まあでもretlを出しているところを置き換えればいいのか？

set(=li)むずくないですか
むずいわ
やり方色々
コンパイラがどうにかする
アセンブラがどうにかする　←とりあえずこれ
コアに実装してしまう
うーん

cmp bneもむずくないですか
即値比較ができないのでレジスタを持ってくる必要があります
ふえーん
できた

全部できました
シミュレートしたいですね、アセンブラ書かなきゃ

平坦化を書けた
アセンブリシミュレータとアセンブラを同時進行でやればいいかな
あと初期化処理みたいなのをコンパイラに足したほうが良さそう
