Algoritmo Reciclaje
	Definir usuario, contrasena, respuesta Como Caracter
	Definir botellas, i, opc, peso, sumaPeso, sumaPrecio Como Entero
	Definir login Como Logico
	Definir precio, saldo, total Como Real
	i<-0
	sumaPrecio<-0
	sumaPeso<-0
	saldo<-Aleatorio(0,100000)
	Escribir "Ingrese el usuario"
	Leer usuario
	Si usuario="Albus_D" Entonces
		Escribir "Introduzca la contraseña"
		Leer contrasena
		Mientras contrasena<>"caramelosDeLimon" & i<2 Hacer
			Escribir "Incorrecto. Introduzca nuevamente la contraseña"
			Leer contrasena
			i<-i+1
		Fin Mientras
		Si contrasena="caramelosDeLimon" Entonces
			login<-(usuario="Albus_D") & (contrasena="caramelosDeLimon")
			Escribir login,". Bienvenido"
			Escribir "Su saldo actual es de $" saldo
		SiNo
			login<-contrasena="caramelosDeLimon"
			Escribir login,". Usuario bloqueado"
		Fin Si
	SiNo
		login<-usuario="Albus_D"
		Escribir login ". Lo siento. No existe un usuario con el nombre: " usuario
	Fin Si
	Si login=Verdadero Entonces
		Hacer
			Hacer
				Escribir "Seleccione la opcion que desea"
				Escribir "1 - Ingresar botellas"
				Escribir "2 - Consultar saldo"
				Escribir "3 - Salir"
				Leer opc
				Segun opc Hacer
					1: 
						Escribir "¿Cuantas botellas se van a ingresar al sistema?"
						Leer botellas
						Para i<-1 Hasta botellas Hacer
							peso<-Aleatorio(100,3000)
							Escribir "El peso de la botella ",i," es de ",peso," gr"
							Si peso<=500 Entonces
								precio<-50
							SiNo
								Si peso>500 & peso<=1500 Entonces
									precio<-125
								SiNo
									Si peso>1501 Entonces
										precio<-200
									FinSi
								FinSi
							FinSi
							sumaPeso<-sumaPeso+peso
							sumaPrecio<-sumaPrecio+precio
						FinPara
						Escribir "El peso total es de ",sumaPeso," gr"
						Escribir "El subtotal es de $",sumaPrecio
						Escribir "¿Le gustaría que le agreguemos el valor a su cuenta?"
						Leer respuesta
						Si respuesta="si" Entonces
							total<-saldo+sumaPrecio
							Escribir "Su saldo acreditado es de $" total
						SiNo
							Escribir "Devolviendo material"
						FinSi
					2: 
						saldo<-total
						Escribir "Su saldo actual es de $" saldo
					3: 
						Escribir "Muchas gracias por usar el sistema"
				FinSegun
			Mientras Que opc<>3
		Mientras Que opc<0 | opc>3
	FinSi
FinAlgoritmo
