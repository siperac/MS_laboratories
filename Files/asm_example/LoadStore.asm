myloop:

addi r1, r0, 4
sw 4(r1), r1
lw r2, 4(r1)
sb 20(r1), r2       ; should forward
lb r3, 20(r1)
addi r4, r3, 15     ; should stall
addi r7, r0, myloop ;move label into r7
jalr r7        	    ;jump