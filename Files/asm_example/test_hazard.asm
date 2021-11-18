; The program test the main kind of forwarding and hazards
lb   r8,0(r5)
add  r8,r7,r6
xor  r8,r8,r8
addi r1,r2,#5
add  r2,r1,r3
sw	 0(r5),r1
subi r7,r2,#1
lw   r8,0(r5)
beqz r8,target
sub r4,r7,r8
add  r3,r8,r5
add  r9,r8,r4
add  r10,r8,r9

target:


xor  r8,r8,r8
lb   r8,0(r5)
beqz r8,target2
sub r4,r7,r8
add  r3,r8,r5
add  r9,r8,r4
add  r10,r8,r9

target2:

j target2