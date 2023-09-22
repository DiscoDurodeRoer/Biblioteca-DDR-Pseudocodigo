
//Visita nuestra web http://www.discoduroderoer.es
//DiscoDuroderoer, tu web de manuales

// Realizado en modo estricto

//---------
//-NUMEROS-
//---------
	
//Indica cuantas cifras tiene un numero
SubProceso  contador <- cuentaCifras (num)
	
	contador <- 0;
	i<- num;
	
	mientras i>0 hacer
		
		i<- trunc(i/10);
		
		contador <- contador + 1;
		
	Finmientras
	
FinSubProceso
	
//Genera un numero aleatorio entre el minimo y máximo incluidos
SubProceso numeroAzar <- numeroAleatorioEntre(minimo, maximo)
	definir numeroAzar como numero;
	numeroAzar <- 0;
	
	Repetir
		
		numeroAzar <- AZAR(maximo+1);
		
	Hasta Que numeroAzar >= minimo Y numeroAzar<=maximo
	
	
FinSubProceso

//Devuelve el factorial de un número
SubProceso resultado <- factorial(num)	
	
	resultado <- 1;
	
	Para i<-(num*1) Hasta 1 Con Paso -1 Hacer
		resultado <- resultado * i;
	FinPara
	
FinSubProceso

//Indica el numero en la posición indicada de la serie Fibonacci
SubProceso fibonacci <- fibonacciNumPosicion(posicion)
	
	num1 <- 0;
	num2 <- 1;
	fibonacci <- 1;
	
	Para i<-1 Hasta posicion Con Paso 1 Hacer
		
		fibonacci <- num1+num2;
		
		num1 <- num2;
		
		num2 <- fibonacci;
		
	FinPara
	
FinSubProceso

//Muestra por pantalla todos los numeros de la serie fibonacci hasta la posición indicada
SubProceso fibonacciHasta(posicion)
	Definir num1, num2, fibonacci, i como numero;
	num1 <- 0;
	num2 <- 1;
	fibonacci <- 1;
	
	Para i<-1 Hasta posicion Con Paso 1 Hacer
		
		fibonacci <- num1+num2;
		
		num1 <- num2;
		
		num2 <- fibonacci;
		
		Escribir "Posicion ", i, ": ",fibonacci;
		
	FinPara
	
FinSubProceso

//Devuelve la posición del numero fibonacci dado, sino existe devuelve -1
SubProceso posicion <- fibonacciPosicion(numFibonacci)
	Definir posicion, num1, num2, fibonacci, i como numero;
	posicion <- -1;
	
	num1 <- 0;
	num2 <- 1;
	fibonacci <- 1;
	
	i <- 1;
	
	Mientras i<numFibonacci Hacer
		
		fibonacci <- num1+num2;
		
		num1 <- num2;
		
		num2 <- fibonacci;
		
		Si fibonacci = numFibonacci Entonces
			posicion <- i;
		FinSi
		
		i <- i+1;
		
	FinMientras
	
FinSubProceso

SubProceso numValidar <- validarEntero(numMin, numMax)
	
	definir aux,numValidar como entero;
	definir finValidacion Como Logico;
	finValidacion <- falso;
	
	Si numMin>numMax Entonces
		aux <- numMin;
		numMin <- numMax;
		numMax <- aux;
	FinSi
	
	Repetir
		
		Escribir "Escribe un numero entre " , numMin , " y "  , numMax;
		leer numValidar;
		
		Si numValidar>=numMin y numValidar<=numMax Entonces
			finValidacion <- verdadero;
		SiNo
			Escribir "Error, debes escribir un numero entre " , numMin , " y "  , numMax;
		FinSi
		
	Hasta Que finValidacion
	
FinSubProceso

SubProceso cifras <- CuentaCifras ( num ) 
	definir cifras Como Entero; cifras <- 0; 
	Si num = 0 Entonces 
		cifras <- 1; 
	SiNo 
		num <- ABS(num); 
		Mientras num > 0 Hacer 
			cifras <- cifras + 1; 
			num <- trunc(num / 10); 
		Fin Mientras 
	Fin Si 
Fin SubProceso

//----------
//-Arreglos-
//----------

//Arreglo1 = arreglo original
//Arreglo2 = arreglo donde se copiaran los datos del arreglo original
//longitudArreglos = La longitud de ambos arreglos, deben ser iguales
SubProceso copiaArreglos (arreglo1, arreglo2, longitudArreglos)
	
	definir i como numero;
	
	Para i<-0 Hasta longitudArreglos-1 Con Paso 1 Hacer
		
		arreglo2(i) <- arreglo1(i);
		
	FinPara
	
FinSubProceso

//Muestra el contenido de un arreglo
SubProceso mostrarArreglo(arreglo, longitudArreglo)
	definir i como numero;
	Para i<-0 Hasta longitudArreglo-1 Con Paso 1 Hacer
		Escribir arreglo(i);
	FinPara
	
FinSubProceso

//Rellena un arreglo de numeros aleatorios entre un mínimo y un máximo, números mínimo y máximo incluidos.
SubProceso rellenarArrayAleatorios(arreglo, longitudArreglo, minimo, maximo)
	
	definir numeroAzar,i como numero;
	numeroAzar <- 0;
	
	Para i<-0 Hasta longitudArreglo-1 Con Paso 1 Hacer
		
		numeroAzar <- numeroAleatorioEntre(minimo, maximo);
		
		arreglo(i) <- numeroAzar;
	FinPara
	
FinSubProceso

// Devuelve el maximo de un arreglo
subproceso valorMax <- maximoValorArreglo(arreglo, longitudArreglo)
	
	Definir valorMax,i como numero;
	valorMax <- arreglo[0];
	
	Para i<-0 Hasta longitudArreglo -1 con paso 1 Hacer
		
		si arreglo[i] > valorMax Entonces
			valorMax <- arreglo[i];
		FinSi
		
	FinPara
	
	
FinSubProceso

// Devuelve el minimo de un arreglo
subproceso valorMin <- minimoValorArreglo(arreglo, longitudArreglo)
	Definir valorMin,i como numero;
	valorMin <- arreglo[0];
	
	Para i<-0 Hasta longitudArreglo -1 con paso 1 Hacer
		
		si arreglo[i] < valorMin Entonces
			valorMin <- arreglo[i];
		FinSi
		
	FinPara
	
FinSubProceso

//Rellena una matriz de numeros aleatorios entre un mínimo y un máximo, números mínimo y máximo incluidos.
SubProceso rellenarMatrizAleatorios(matriz, numFilas, numColumnas, minimo, maximo)
	
	definir i,j como numero;
	
	Para i<-0 Hasta numFilas -1 Con Paso 1 Hacer
		Para j<-0 Hasta numColumnas -1 Con Paso 1 Hacer
			// Genera un numero aleatorio
			matriz(i,j) <- numeroAleatorioEntre(minimo, maximo);
		FinPara
	FinPara
	
FinSubProceso

Proceso Funciones_DiscoDurodeRoer
	
	// Zona para testear funciones
	Definir arreglo, LONG como entero;
	LONG <- 10;
	Dimension arreglo[10];
	
	
	rellenarArrayAleatorios(arreglo, LONG, 1, 100);
	mostrarArreglo(arreglo, LONG);
	
	escribir "El valor maximo es ",maximoValorArreglo(arreglo, 10);
	escribir "El valor minimo es ",minimoValorArreglo(arreglo, 10);
	
	Escribir "Numero validar 0 3 ",validarEntero(0,3);
	
	
finproceso

