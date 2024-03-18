.include "common.i"
.text

.entry run

run: GetInt getNum2
     mov rdi,rax
     GetInt getNum1
     mov rsi,rax
     sub rax,1
     mul rsi
     mov rsi,2
     div rsi
     mov rsi,rax #rsi will hold the sum till lower limit

     mov rax,rdi #moving right limit into accumulator
     add rax,1
     mul rdi
     mov rdi,2
     div rdi
     mov rdi,rax
     sub rdi,rsi 
     sub rax,rsi
     PutInt sol
     ret
getNum1: .string "Enter the left limit "
getNum2: .string "Enter the right limit: "
sol:    .string "Answer is: " 

.end
