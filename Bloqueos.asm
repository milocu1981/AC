.text


#mul x1,x2,x3 #no segmentado
#div x4,x5,x6 #no segmentado
#no se producen bloqueos porque son recursos distintos

#mul x1,x2,x3 #segmentado la multiplicacion
#mul x4,x5,x6
#no se producen bloqueos porque esta segmentada la etapa de mul


mul x1,x2,x3 #no segmentado la multiplicacion
mul x4,x5,x6
#bloqueo estructural