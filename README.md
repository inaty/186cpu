# 186cpu
最終的にはここに対外的な説明が並ぶ

# 使い方の想定
186cpu直下にcore, compiler, simulator, fpuという4つのディレクトリがあり、その中で各自作業をするという想定  
186cpu/core/README.mdに各自のなんちゃらを書く的な  
1. 自分のPCの作業ディレクトリにしたい場所にクローン  
   git clone <url>
2. 186cpu/<charge>というディレクトリを作る（成果物を入れる）  
3. 追跡させてコミットしてプッシュ
   cd 186cpu/<charge>  
   git add .  
   git commit -m "first commit"
   git push origin master  

コマンドが合ってるかは知りません
