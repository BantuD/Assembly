	.text
	.include "common.i"
	.extern GCD
	.entry run
        
run:
	GetInt	n1
	mov	rsi, rax
	GetInt	n2
	mov	rdi, rax
	call	GCD
	PutInt	res
	ret

n1:	.string	"Enter first number: "
n2:	.string	"Enter second number: "
res:	.string	"Value is: "

	.end
