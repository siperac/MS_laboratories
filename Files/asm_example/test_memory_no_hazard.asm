# lb, lbu, lhi, lhu, sb,

addi r1,r0,#85
addi r2,r0,#-7
addi r12,r0,#25
nop
nop
nop
nop
nop
sw 1(r0),r1
sb 1(r12),r2
nop
nop
nop
nop
nop
lw r3,1(r0)
lw r4,1(r0)
lb r5,1(r0)
lb r6,1(r12)
lbu r7,1(r0)
lbu r8,1(r12)
lhu r9,1(r0)
lhu r10,1(r12)
lhi r2,#10 
nop
nop
nop
nop
nop
nop
nop

