.include "common.i"
.text

.entry run

run:  GetInt getL
      mov rsi,rax
      GetInt getU
      mov rdi,rax
cmp   rsi,rdi
jg    done
      mov rax,rsi
      call compute
      mov rsi,rax
      mov rax,rdi
      call compute
      sub rax,rsi
      PutInt result
      ret

compute:
	mov rbx,rax
	add rax,1
	mul rbx
	shr rax
	ret

done: ret

getL: .string "enter the lower limit"
getU: .string "enter the upper limit"
result: .string "Answer is: "

.end

