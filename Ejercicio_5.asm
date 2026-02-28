.data 0x20000
v: .byte 12,23,34,45,56,67,78,89,90,100
.text
la x1,v
addi x2,x1,1
addi x3,x0,9
loop: 
lb x4,0(x1)
lb x5,0(x2)
sb x5,0(x1)
addi x1,x1,1
addi x2,x2,1
addi x3,x3,-1
bne x3,x0,loop
