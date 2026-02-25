
#calcula en numero de bits que hay en la direccion de memoria 0x20000 y lo guarda en la posicion de memoria 0x20004 con tamaño de un byte


#en un primera version el programa lo que hace es guaradar un 1 o un 0 en res dependiendo si el nuermo es par o impar.
.config
proc single
.data 0x20000
x: .word 50
res: .space 1
.text

la x11, x   #en x11 meto la direccion de mememoria x

lw x12,0(x11) #x12 es x

addi x13,x0,31  #en x13 contador empieza en 31
add x15,x0,x0   # x15 el acumulador de conteo


loop:
andi x14,x12,1 # x14 lo uso para saber si es 1 o 0
beq x14,x0,par

add x15,x15,x14  #me salto la suma si es par

par:
addi x13,x13,-1 #reduzacon contador
srli x12,x12,1  #desplazo a la izquierda
bne x13,x0,loop


sh x15, 4(x11) #en res meto el contenido del acumulador