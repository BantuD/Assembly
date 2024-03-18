.include "common.i"
.text

.entry run

run: GetInt getL
     mov rsi,rax
     GetInt getU
     mov rdi,rax
cmp  rsi,rdi
jp   done     
     mov rax,rsi
     add rax,1
     mul rsi
     shr rax,1
     mov rsi,rax
     mov rax,rdi
     add rax,1
     mul rdi
     shr rax,1
     sub rax,rsi
   
     PutInt result
done: ret     



getL: .string "Enter the lower limit: "
getU: .string "Enter the high limit :"
result: .string "Answer: "
