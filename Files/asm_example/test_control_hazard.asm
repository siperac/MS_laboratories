addi r1, r0, 6
addi r2, r0, 7
addi r3, r3, 2


shift:
srli r2,r2,1    
sw   4(r4), r2  
lw   r3,4(r4)
bnez r3, shift     

fine:
j fine

# addi r1, r0, 6
# addi r2, r0, 7
# addi r3, r3, 2

# shift:

# srli r3, r3, 1    #IF ID EX MEM WB 
# bnez r3, shift       #IF IF ID  EX MEM WB
#                            #IF  ID EX MEM WB (srli)
# fine:
# j fine