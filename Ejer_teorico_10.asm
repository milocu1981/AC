.text
add x3, x0, x0
addi x4, x0, 8
add x5, x0, x0
et1:
lb x1, 0x10(x5)
andi x2, x1, 0x10
beq x2, x0, et2
add x3, x3, x1
et2:
addi x5, x5, 1
addi x4, x4, -1
bne x4, x0, et1
sw x0, 0x20(x4)