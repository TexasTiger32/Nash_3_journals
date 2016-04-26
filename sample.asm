global _start

        section .text
_start:
	; write(1, message, 13)
	mov	 rax, 1				; system call 1 is write
	mov	 rdi, 1				; file handle 1 is stdout
	mov	 rsi, message			; adress pf string to  output
	mov	 rdx, 15
	syscall

	; exit(0)
	mov	 eax, 60
	xor	 rdi, rdi
	syscall
message:
	db	"Was this easy?", 10
