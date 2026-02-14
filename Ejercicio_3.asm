.config
proc single
.data 0x20000
x: .half 12,34,5,21,57,76,54,32,10,5
y: .half 11,22,13, 9,55,66,77,88
res: .space 2
.text
add x2,x0,x0
addi x3,x0,100
la x11, x
loop: lhu x5,0(x11)
lhu x6,20(x11)
add x2,x2,x5
add x2,x2,x6
addi x11,x11,2
blt x2,x3,loop
la x11, res
sh x2, 0(x11) 