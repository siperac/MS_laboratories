addi r1,r0,#2	# r1 = 2
subi r2,r1,#1	# r2 = 1
addi r3,r1,#-4	# r3 = -2
subi r4,r3,#-1	# r4 = -1
addui r5,r1,#4	# r5 = 6
subui r6,r5,#3	# r6 = 3
add r7,r1,r2	# r7 = 3
sub r8,r5,r6	# r8 = 3
addu r9,r6,r1	# r9 = 5

sge r10,r1,r2	# r10= 1
sge r10,r2,r1	# r10= 0
sge r10,r1,r1	# r10= 1
sle r10,r1,r2	# r10= 0
sle r10,r2,r1	# r10= 1
sle r10,r1,r1	# r10= 1
sne r10,r1,r1	# r10= 0
sne r10,r1,r2	# r10= 1
seq r10,r1,r2	# r10= 0
seq r10,r1,r1	# r10= 1
sgt r10,r2,r1	# r10= 0
sgt r10,r1,r2	# r10= 1
slt r10,r2,r1	# r10= 1
slt r10,r1,r2	# r10= 0

seqi r10,r1,#0	# r10= 0
seqi r10,r1,#2	# r10= 1
sgti r10,r1,#3	# r10= 0
sgti r10,r1,#1	# r10= 1
slti r10,r1,#1	# r10= 0
slti r10,r1,#3	# r10= 1

sgei r10,r1,#4	# r10= 0
sgei r10,r1,#1	# r10= 1
slei r10,r1,#0	# r10= 0
slei r10,r1,#2	# r10= 1
snei r10,r1,#1	# r10= 1
snei r10,r1,#2	# r10= 0


sgei r10,r1,#-1 # r10= 1
sgeu r10,r1,r3	# r10= 0
sgeu r10,r3,r1	# r10= 1
sgtu r10,r1,r3	# r10= 0
sgtu r10,r3,r1	# r10= 1
sltu r10,r3,r1	# r10= 0
sltu r10,r1,r3	# r10= 1

sgeui r10,r1,#4	# r10= 0
sgeui r10,r1,#1	# r10= 1
sgtui r10,r1,#3	# r10= 0
sgtui r10,r1,#1	# r10= 1
sltui r10,r1,#1	# r10= 0
sltui r10,r1,#3	# r10= 1
#
addui r11,r0,#65535	# #r11= 65535
addi r11,r0,#-8	#     #r11= -8
sra r11,r11,r2 #      #r11= -4
srai r11,r11,#1       #r11= -2
addui r11,r0,#65535	# #r11= 65535
lhi r12,#65535        #r12= -#65535     
or r13,r11,r12        #r13= -1
ori r14,r12,#65535    #r14= -1
and r15,r14,r2       #r15=  1
andi r16,r14,#1       #r16= 1 
sll r17,r16,r2       #r17= 2
slli r18,r16,#1      #r18= 2
srl r19,r16,r2       #r19= 0
srli r20,r16,#1      #r20= 0
sra r21,r12,r2msgr+  #r21= -32768
srai r22,r12,#1      #r22= -32768
mult r23,r1,r5       #r23= 12
xor r24,r1,r1        #r24=0 
xori r25,r1,#2       #r25= 0