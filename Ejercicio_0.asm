.data # Segmento de datos (origen y destino de las operaciones)
    op1: .word 15   # Operando 1 etiquetado como “op1”, de tipo word y con valor "15"
    op2: .word 9    # Operando 2 etiquetado como “op2”, de tipo word y con valor "9"
    res: .space 4   # Espacio reservado para el resultado, etiquetado como "res" y
                    # con un tamaño de 4 bytes (ya que el resultado será word).
               
.text # Segmento de código
la x1,op1
la x2,op2
la x3,res
    
lw x4,0(x1)
lw x5,0(x2)

sub x6,x4,x5 #op1 . op2

slt x7,x6,x0    #si x es menor que 0 meto en x7 un 1
                #eoc: 0
beq x7,x0,salto
sw x0,0(x3)
jal x0,fin  

salto:sw x6,0(x3)#almacenamos x6 en la direccion de res

fin: nop       