

.text
#lw x10, 0(x0) 
#addi x11, x10, 100 
#xor x1, x1, x1
#bucle:lw x2, 0(x10)
#add x1, x1, x2
#lw x3, 500(x10)
#add x1, x1, x3
#sw x1, 1000(x10)
#addi x10, x10, 4
#bne x10, x11, bucle
#sw x1, 0xFF(x0)
#76 bloqueos de datos

#lw x10, 0(x0) 
#xor x1, x1, x1
#addi x11, x10, 100 
#bucle:lw x2, 0(x10)
#lw x3, 500(x10)
#add x1, x1, x2
#add x1, x1, x3
#addi x10, x10, 4
#sw x1, 996(x10)
#bne x10, x11, bucle
#sw x1, 0xFF(x0)
#0 bloqueo de datos reordenado

lw x10, 0(x0) 
xor x1, x1, x1
addi x11, x10, 100 
bucle:lw x2, 0(x10)
lw x3, 500(x10)
add x1, x1, x2
addi x10, x10, 4
add x1, x1, x3


bne x10, x11, bucle
sw x1, 996(x10)
sw x1, 0xFF(x0)
#0 bloqueos en total activando salto retardado