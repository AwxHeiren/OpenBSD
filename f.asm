mov 0000, r0
mov 0000, r2
mov 0001, r3
ext:
    mov 0001, r2
    mov 0000, r1
    int:
        add 0001, r1
        mul r1, r2
        cmp r3, r1
        jg int
    add r2, r0
    add 0001, r3
    cmp 0008, r3
    jg ext
stop