
//Visita nuestra web http://www.discoduroderoer.es
//DiscoDuroderoer, tu web de manuales

//---------
//-NUMEROS-
//---------
	
//Indica cuantas cifras tiene un numero
SubProceso  contador <- cuentaCifras (num)
	
	contador <- 0
	i<- num
	
	mientras i>0
		
		i<- trunc(i/10)
		
		contador <- contador + 1
		
	Fin mientras
	
FinSubProceso
	
//Genera un numero aleatorio entre el minimo y máximo incluidos
SubProceso numeroAzar <- numeroAleatorioEntre(minimo, maximo)
	
	numeroAzar <- 0
	
	Repetir
		
		numeroAzar <- AZAR(maximo+1)
		
	Hasta Que numeroAzar >= minimo Y numeroAzar<=maximo
	
	
FinSubProceso

//Devuelve el factorial de un número
SubProceso resultado <- factorial(num)	
	
	resultado <- 1
	
	Para i<-(num*1) Hasta 1 Con Paso -1 Hacer
		resultado <- resultado * i
	Fin Para
	
FinSubProceso

//Indica el numero en la posición indicada de la serie Fibonacci
SubProceso fibonacci <- fibonacciNumPosicion(posicion)
	
	num1 <- 0
	num2 <- 1
	fibonacci <- 1
	
	Para i<-1 Hasta posicion Con Paso 1 Hacer
		
		fibonacci <- num1+num2
		
		num1 <- num2
		
		num2 <- fibonacci
		
	Fin Para
	
FinSubProceso

//Muestra por pantalla todos los numeros de la serie fibonacci hasta la posición indicada
SubProceso fibonacciHasta(posicion)
	
	num1 <- 0
	num2 <- 1
	fibonacci <- 1
	
	Para i<-1 Hasta posicion Con Paso 1 Hacer
		
		fibonacci <- num1+num2
		
		num1 <- num2
		
		num2 <- fibonacci
		
		Escribir "Posicion ", i, ": ",fibonacci
		
	Fin Para
	
FinSubProceso

//Devuelve la posición del numero fibonacci dado, sino existe devuelve -1
SubProceso posicion <- fibonacciPosicion(numFibonacci)
	
	posicion <- -1
	
	num1 <- 0
	num2 <- 1
	fibonacci <- 1
	
	i <- 1
	
	Mientras i<numFibonacci Hacer
		
		fibonacci <- num1+num2
		
		num1 <- num2
		
		num2 <- fibonacci
		
		Si fibonacci = numFibonacci Entonces
			posicion <- i
		Fin Si
		
		i <- i+1
		
	Fin Mientras
	
FinSubProceso

//----------
//-Arreglos-
//----------

//Arreglo1 = arreglo original
//Arreglo2 = arreglo donde se copiaran los datos del arreglo original
SubProceso copiaArreglos (arreglo1, arreglo2, longitudArreglo1)
	
	Para i<-1 Hasta longitudArreglo1 Con Paso 1 Hacer
		
		arreglo2(i) <- arreglo1(i)
		
	Fin Para
	
FinSubProceso

//Muestra el contenido de un arreglo
SubProceso mostrarArreglo(arreglo, longitudArreglo)
	
	Para i<-1 Hasta longitudArreglo Con Paso 1 Hacer
		Escribir arreglo(i)
	Fin Para
	
FinSubProceso

//Rellena un arreglo de numeros aleatorios entre un mínimo y un máximo, números mínimo y máximo incluidos.
SubProceso rellenarArrayAleatorios(arreglo, longitudArreglo, minimo, maximo)
	
	numeroAzar <- 0
	
	Para i<-1 Hasta longitudArreglo Con Paso 1 Hacer
		
		numeroAzar <- numeroAleatorioEntre(minimo, maximo)
		
		arreglo(i) <- numeroAzar
	Fin Para
	
FinSubProceso

Proceso Funciones_DiscoDurodeRoer
	
fin proceso

