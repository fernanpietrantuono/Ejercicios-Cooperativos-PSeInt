Algoritmo Letra_R_en_vertical
	Definir tablero Como Caracter
	Dimension tablero[9,12]
	inicializacion(tablero)
	imprenta(tablero)
	agregadoDePalabras(tablero, "vector", 0)
	agregadoDePalabras(tablero, "matrix", 1)
	agregadoDePalabras(tablero, "programa", 2)
	agregadoDePalabras(tablero, "subprograma", 3)
	agregadoDePalabras(tablero, "subproceso", 4)
	agregadoDePalabras(tablero, "variable", 5)
	agregadoDePalabras(tablero, "entero", 6)
	agregadoDePalabras(tablero, "para", 7)
	agregadoDePalabras(tablero, "mientras", 8)
	imprenta(tablero)
	acomodamiento(tablero)
	imprenta(tablero)
FinAlgoritmo

SubAlgoritmo inicializacion(tablero Por Referencia)
	Definir i,j Como Entero
	Para i<-0 Hasta 8 Hacer
		Para j<-0 Hasta 11 Hacer
			tablero[i,j]<-"*"
		Fin Para
	Fin Para
FinSubAlgoritmo

SubAlgoritmo imprenta(tablero Por Referencia)
	Definir i,j Como Entero
	Para i<-0 Hasta 8 Hacer
		Para j<-0 Hasta 11 Hacer
			Escribir tablero[i,j] " " Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
	Escribir ""
FinSubAlgoritmo

SubAlgoritmo agregadoDePalabras (tablero,palabra,fila)
	Definir j Como Entero
	Para j<-0 Hasta Longitud(palabra)-1 Hacer
		tablero[fila,j]<-Mayusculas(Subcadena(palabra,j,j))
	Fin Para
FinSubAlgoritmo

SubAlgoritmo posicion<-busquedaR (tablero, fila)
	Definir j, posicion Como Entero
	Definir check Como Logico
	j<-0
	check<-Falso
	Mientras check=Falso & j<12 Hacer
		Si tablero(fila,j)="R" Entonces
			check<-Verdadero
		SiNo
			j<-j+1
		Fin Si
	Fin Mientras
	posicion<-j
FinSubAlgoritmo

SubAlgoritmo acomodamiento (tablero)
	Definir i, j, r, cont Como Entero
	cont<-0
	Para i<-0 Hasta 8 Hacer
		Mientras tablero[i,5]<>"R" Hacer
			Para j<-11 Hasta 1 Con Paso -1 Hacer
				tablero[i,j]<-tablero[i,j-1]
			Fin Para
			cont<-cont+1
		Fin Mientras
		Si cont<>0 Entonces
			Para j<-0 Hasta cont-1 Hacer
				tablero[i,j]<-"*"
			Fin Para
		Fin Si
		cont<-0
	Fin Para
FinSubAlgoritmo
	