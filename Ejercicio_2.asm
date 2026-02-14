.config
proc single
.data 0x20000
x: .word 0xAABBCCDD,-1,0x10,0x20,0x30
y: .word 1,1,2,3,4
z: .space 20
.text
addi x2,x0,5
la x11, x #Dir. x
addi x12,x11,20 #Dir. y
addi x13,x11,40 #Dir. z
loop: lw x5,0(x11)
lw x6,0(x12)
add x7,x5,x6
sw x7,0(x13)
addi x11,x11,4
addi x12,x12,4
addi x13,x13,4
addi x2,x2,-1
bne x2,x0,loop    