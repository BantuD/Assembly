.include "common.i"
.text

.entry run

run PutMsg gree1
    PutMsg greet2
    ret

greet1: .string "hello world\n\n"
greet2: .string "Goodbye.\n"

.end
