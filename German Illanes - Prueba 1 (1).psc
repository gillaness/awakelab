

//Construir un programa principal tipo menú en el cual se realizará llamada a cada función que realizará tareas independientes

//Menú
//1. Secuencial
//2. Condicional si entonces
//3. Condicional Si entonces anidado
//4. Condicional según
//5. Repetitiva mientras
//6. Repetitiva Repetir
//7. Repetitiva Para
//8. Arreglo simple
//9. Arreglo Bidimensional
//10. Salir

Proceso MenuPrincipal
	Definir opcion Como Entero;
	Escribir "1. Secuencial";
	Escribir "2. Condicional si entonces";
	Escribir "3. Condicional Si entonces anidado";
	Escribir "4. Condicional según";
	Escribir "5. Repetitiva mientras";
	Escribir "6. Repetitiva Repetir";
	Escribir "7. Repetitiva Para";
	Escribir "8. Arreglo simple";
	Escribir "9. Arreglo Bidimensional";
	Escribir "10. Salir";
	
	leer opcion;
	Escribir Menu(opcion);
	
FinProceso

SubProceso opcionElegida<-Menu(op)
	definir opcionElegida como entero;
	Segun op Hacer
		1:
			Escribir "Ingrese 3 números para calcular el promedio de estos:";
			definir num1, num2, num3 como entero;
			leer num1, num2, num3;
			Escribir "El promedio es ", promediar(num1,num2,num3);
		2:
			Escribir "Ingresar Nombre de la persona:";
			definir nombre como caracter;
			leer nombre;
			Escribir "Ingresar genero de la persona (H o M)";
			definir genero Como Caracter;
			leer genero;
			Escribir "Debe dirigirse al ", bano(genero);
			
		3:
			Escribir "Ingresar Nombre de la persona:";
			definir nombre como caracter;
			leer nombre;
			Escribir "Ingresar genero de la persona (H o M)";
			definir genero Como Caracter;
			leer genero;
			Escribir "Debe dirigirse al ", bano(genero);
			Escribir "Ingrese 1 si desea usar ducha o 2 si solo desea usar el baño";
			definir opcion como entero;
			leer opcion;
			Escribir "El cobro será de ", tipoDeUso(opcion);
		4:
			Escribir "Ingrese un número del 1 al 10";
			Definir num como entero;
			leer num;
			Escribir "El número es: ", palabra(num);
			
		5:
			Escribir "Ingrese un numero";
			definir num como real;
			leer num;
			Definir suma como entero;
			suma<-0;
			definir cantidadnumeros como entero;
			cantidadnumeros<-0;
			Mientras num<>0 Hacer
				suma<-suma+num;
				Escribir "Ingrese otro número";
				leer num;
				cantidadnumeros<-cantidadnumeros+1;
			FinMientras
			
			Escribir "El promedio de los números ingresados es ", promedio(suma,cantidadnumeros);
			
		6:
			Escribir "Ingrese nombres que comiencen con la letra J:";
			definir nombreJ Como Caracter;
			leer nombreJ;
			Escribir Ganaste(nombreJ);
			
		7:
			
			Escribir "Ingrese la cantidad de personas que quiere evaluar";
			definir qPersonas como entero;
			leer qPersonas;
			definir nombre Como Caracter;
			Dimension nombre[qPersonas];
			definir i como entero;
			para i<-0 hasta qPersonas-1 Hacer
				leer nombre[i];
			FinPara
		
			definir j como entero;

			Definir contador1, contador2 como entero;
			definir k como entero;
			
			para i<-1 hasta qPersonas-1 Hacer
				contador1<-0;
				contador2<-0;
				para j<-0 hasta i Hacer
					
					si nombre[i]=nombre[j] Entonces
						contador1<-contador1+1;
						contador1<-contador1-1;
				
						
						
					FinSi
			
					
				FinPara
				
				
			
				
				
			FinPara
			
	
			
		

	FinSegun
	
FinSubProceso


//Subproceso que calcula el promedio de 3 números ingresados por teclado

SubProceso valorPromedio <- promediar ( n1,n2,n3 )
	definir valorPromedio como real;
	valorPromedio<-(n1+n2+n3)/3;
FinSubProceso

//------------------------------------------------------------------------------------------

//Subproceso que deriva al baño de hombres o de mujeres de acuerdo al genero de la persona ingresado por teclado

SubProceso BanoAsignado<-bano(genero)
	Definir BanoAsignado como caracter;
	si genero="H" entonces
		BanoAsignado<-"Baño de Hombres";
		
	SiNo
		BanoAsignado<-"Baño de Mujeres";
	FinSi
	
FinSubProceso 

//-------------------------------------------------------------------------------------------

//Subproceso que asigna cobro de acuerdo al uso sólo del baño o uso de ducha

SubProceso CobroBano<-tipoDeUso(tipo)
	Definir CobroBano Como Entero;
	Si tipo=1 Entonces
		CobroBano<-2500;
	SiNo
		si tipo=2 Entonces
			CobroBano<-250;
		SiNo
			Escribir "Opción no valida";
		FinSi
	FinSi
	
FinSubProceso

//--------------------------------------------------------------------------------------------


//Subproceso que convierte número a palabras

SubProceso numeroEnPalabras<- palabra(n)
	definir numeroEnPalabras como caracter;
	Segun n Hacer
		1:
			numeroEnPalabras<-"Uno";
		2:
			numeroEnPalabras<-"Dos";
		3:
			numeroEnPalabras<-"Tres";
		4:
			numeroEnPalabras<-"Cuatro";
		5:
			numeroEnPalabras<-"Cinco";
		6:
			numeroEnPalabras<-"Seis";
		7:
			numeroEnPalabras<-"Siete";
		8:
			numeroEnPalabras<-"Ocho";
		9:
			numeroEnPalabras<-"Nueve";
		10:
			numeroEnPalabras<-"Diez";
		De Otro Modo:
			Escribir "Número fuera de rango";
	FinSegun
FinSubProceso

//--------------------------------------------------------------------------------------------------

//Subproceso que calcula el promedio de N número hasta que se ingrese un cero (0) por teclado

SubProceso promedioSinCero <- promedio(sum,n)
	definir promedioSinCero como real;
		
	promedioSinCero<-sum/n;
	
FinSubProceso

//-------------------------------------------------------------------------------------------------------

//Subproceso Nombre J, Juan Ganador

SubProceso Ganador<-Ganaste(nombre)
	Repetir
		Escribir "Ingresa otro nombre";
		leer nombre;
	Hasta Que nombre="Juan" o nombre="juan"
	
FinSubProceso

//--------------------------------------------------------------

//Subproceso Para

