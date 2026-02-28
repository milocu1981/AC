.data 0x20000

x: .word 1,2,1

.text

la x20, x
addi x21,x20,4
addi x22,x21,4

#lw x1,0(x2)

#sub x5,x6,x7

#sub x3,x1,x4
#reordenamiento

lw x1,0(x20)
lw x2,0(x21)
lw x3,0(x22)


#original
#lw x1,0(x2)
#sub x1,x1,x3
#sw x1,0(x2)
#addi x2,x2,4

#ordenado
lw x1,0(x2)
addi x2,x2,4
sub x1,x1,x3
sw x1,0(x2)

#bucle:lw x5,0(x10)
#addi x10,x10,4

#add x7,x8,x9
#bne x10,x20, bucle
#add x5,x5,x6
#sw x5,0(x10)