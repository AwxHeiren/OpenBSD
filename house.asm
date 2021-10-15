start:
mov 0022, r0
mov 001c, r1
mov 0008, r2

push r2
push r1
push r0

mov 001f, r0
mov 0031, r1
mov 0051, r2
mov 007f, r3

push r3
push r2
push r1
push r0

cycle:
pop r0
pop r1
pop r2
pop r3

out r0, p7
out r1, p6
out r2, p5
out r3, p4

mul 0002, r0
mul 0002, r1
mul 0002, r2
mul 0002, r3

pop r0
pop r1
pop r2

out r0, p3
out r1, p2
out r2, p1

mul 0002, r0
mul 0002, r1
mul 0002, r2

push r0
push r1
push r2

push r3
push r2
push r1
push r0

jz start
jmp cycle
