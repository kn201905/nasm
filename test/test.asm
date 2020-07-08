bits 64			; 64bit コードの指定
default rel		; デフォルトで RIP相対アドレシングを利用する

; 他のファイルからコールできるようにするための宣言
global  ASM_test_entry

; ========================================================
; 未使用のデータセクション
section .data align=16

; ========================================================
; ここから実行コード（4K アライメントは、メモリのページングを考えてのこと）
section .text align=4096

; ////////////////////////////////////////////////////////
; https://docs.microsoft.com/ja-jp/cpp/build/x64-calling-convention?view=vs-2019
; http://herumi.in.coocan.jp/prog/x64.html
; https://www.mztn.org/lxasm64/amd02.html

; Linux と Win との差異を吸収する
ASM_test_entry:
	mov		rcx, rdi
	mov		rdx, rsi
	mov		r8, rdx
	mov		r9, rcx

	call	ASM_test
	ret


; テスト関数本体
ASM_test:
	mov		rax, 10
	ret

