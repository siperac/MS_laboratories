addi r3,r0,1
addi r2,r0,10
sub r2,r2,r3
loop:
subi r2,r2,1
addi r6,r0,6
test:
bnez r2, loop
addi r5,r0,5
jal test
addi r5,r0,6