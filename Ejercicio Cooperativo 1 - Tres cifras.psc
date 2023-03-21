Algoritmo Tres_cifras
	Definir num, unidad, decena, centena Como Entero
	Escribir "Ingrese un número"
	Leer num
	unidad<-num%10
	decena<-(num%100-unidad)/10
	centena<-(num-unidad-(decena*10))/100
	Escribir "Unidad: ",unidad
	Escribir "Decena: ",decena
	Escribir "Centena: ",centena
FinAlgoritmo
