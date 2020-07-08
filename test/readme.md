# アセンブルとコンパイルができることを確認

* 最終目標は、C++ で書かれたコードの一部を高速化すること
* 動くものを作ってみないとやる気が出にくいと思うから、とりあえず、以下を実行

```
test.asm と caller.c を同じディレクトリにおいて、以下を実行。
（できるかぎり docker 環境で。mac は Unix ベースだから、実環境でも大丈夫だけど、、）

# nasm -f elf64 test.asm

test.o ができたことを確認。

# gcc -o caller caller.c test.o

caller ができたことを確認。

# ./caller

コンソールに「a = 5」「a = 10」と表示されればＯＫ。
```

---
# 生成されたマシンコードを見る場合
```
# nasm -f elf64 test.asm -l test.lst

test.o が生成されると同時に、マシンコードのリストが test.lst に書き込まれる。

# nasm -f elf64 -O0 test.asm -l test.lst

最適化がなされず、素の状態のマシンコードのリストを見ることができる。
```
