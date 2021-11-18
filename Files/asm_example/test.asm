;j 16
addi r1,r2,#5 ;Add
add r2,r1,r3
nop
nop
and r4,r2,r1
andi r4,r1,#15 ;And
nop
nop
or  r2,r1,r3    
ori r1,r2,#15 ;OR
nop
nop
xor  r6,r2,r3    
xori r1,r2,#15 ;XOR
nop
nop
sub  r5,r1,r6    
subi r4,r3,#15 ;SUB
nop
nop
sge  r5,r1,r6    
sgei r4,r7,#15 ;SGE
nop
nop
sle  r5,r1,r6    
slei r4,r8,#1 ;SLE
nop
nop
sne  r5,r1,r6    
snei r4,r8,#15 ;SNE
nop
nop
sll  r5,r1,r6    
slli r4,r7,#2 ;SLL
nop
nop
srl  r5,r1,r6    
srli r4,r7,#2 ;SSLR
nop 
nop
target:

sw 0(r1),r2
nop
nop
lw r5,0(r1)
nop
nop
nop
subi r2,r2,#1 ;SUB
nop
nop
nop
beqz r2,target2
nop
bnez r2,target

target2:

j pippo
nop
nop
pippo:
jal pippo2
nop 
nop
pippo2:

