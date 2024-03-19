	.intel_syntax	noprefix
	.text
	
	.global GCD

GCD:
	1:	cmp	rsi,	rdi
		je	3f
		jg	2f
		sub	rdi,	rsi
		jmp	1b
	2:	sub	rsi,	rdi
		jmp	1b
	3:	mov	rax,	rdi
		ret

	.end
