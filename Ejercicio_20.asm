.config
proc pipelined
forwarding on
delayed off
exm 2 pipelined
exd 3 pipelined
.data
x: .half 1,2,3,4,5,6,7,8,9,10
y: .half 1,2,3,4,5,6,7,8,9,10
z: .space 20
a: .half 5
.text
la x10, x
la x20, y
la x30, z
la x31,a
lh x5,0(x31) # a
for:
lh x11, 0(x10)
#mul x11,x11,x5
addi x10, x10, 2
lh x21, 0(x20)
div x21,x21,x5
addi x20, x20, 2
mul x11,x11,x5#movido
add x2,x11,x21
sh x2,0(x30)
addi x30, x30, 2
bne x30, x31, for