addi r1, r0, 6
addi r2, r0, 7
lw r4, 100(r1)
add  r3, r1, r2
mult r3, r1, r2
mult r3, r1, r4
sw 100(r3), r5
addi r3, r3, 2
shift:

srli r3, r3, 1
bnez r3, shift

fine:
j fine