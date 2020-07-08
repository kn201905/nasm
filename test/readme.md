```
test.asm と caller.c を同じディレクトリにおいて、以下を実行。
（できるかぎり docker 環境で。mac は Unix ベースだから、実環境でも大丈夫だけど、、）

# nasm -f elf64 test.asm

test.o ができたことを確認。

# gcc -o caller caller.c test.o

caller ができたことを確認。

# ./caller

コンソールに「a = 10」と表示されればＯＫ。
```
