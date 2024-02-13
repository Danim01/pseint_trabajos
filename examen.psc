Funcion escribirArreglo(vec, longArreglo)
    Definir i Como Entero;
    Escribir "[" Sin Saltar;
    Para i <- 0 Hasta longArreglo - 1 Con Paso 1 Hacer
        Si i < longArreglo - 1 Entonces
            Escribir vec[i], ", " Sin Saltar;
        SiNo
            Escribir vec[i], "]";
        FinSi
    FinPara
FinFuncion

Algoritmo examen
	Definir i, num, vec, longArreglo, j, numActual, numUsuario Como Entero;
	Definir esPrimo, numRepetido, arregloRevisado, hayAlmenosUnPrimo Como Logico;
	longArreglo = 5;
	Dimension vec[longArreglo];
	
	Escribir "Escriba los números para llenar su vector sin repetirlos";
	
	Para i = 0 Hasta longArreglo - 1 Con Paso 1 Hacer
		//Me deja contener el número que la persona está ingresando mientras se si el número está o no repetido
		Leer numUsuario;
		//Me deja llevar un registro de si el número está o no repetido
		//Lo inicializo en falso para asumir que el numero no esta repetido
		numRepetido <- Falso;
		
		Repetir
			Si numRepetido == Verdadero Entonces
				Escribir "El número está repetido, por favor ingrese otro número";
				//Aquí la persona ingresa el nuevo número 
				Leer numUsuario;
				//Aquí reiniciamo el estado de la variable para asumir que el número no está repetido
				numRepetido <- Falso;
			FinSi
			//pasa a comparar si el realialidad el número es falso y si es verdadero sube al ciclo de arriba Para que la 
			//persona vuelva a escribir otro número
			Para j = 0 Hasta longArreglo - 1 Con Paso 1 Hacer
				Si numUsuario == vec[j] Entonces
					numRepetido <- Verdadero;
				FinSi
			FinPara
			//se despues de validar se da cuenta que numRepetido es falso se sale del ciclo repetir y se guarda el número 
			//en el vector
		Hasta Que numRepetido == Falso
		vec[i] <- numUsuario;
		escribirArreglo(vec, longArreglo);
	FinPara
	
	Para i = 0 Hasta longArreglo - 1 Con Paso 1 Hacer
		Para j = 0 Hasta longArreglo - i - 2 Con Paso 1 Hacer
			numActual = vec[j];
			si numActual > vec[j + 1] Entonces
				vec[j] = vec[j + 1];
				vec[j + 1]= numActual;
			FinSi
		FinPara
	FinPara
	
	Escribir "";
	Escribir "Arreglo ordenado:";
	escribirArreglo(vec, longArreglo);
	
	//inicializo una variable en falso para determinar que no hay ningun numero primo
	hayAlmenosUnPrimo <- Falso;
	Para i = 0 Hasta longArreglo - 1 Con paso 1 hacer 
		esPrimo = Verdadero;
		num = vec[i];
		
		//Para que mi codigo no tome a 1 como un primo le debo decir que este no es primo
		si num = 1 Entonces
			esPrimo = falso;
		FinSi
		
		//Si mi numero se puede dividir por los numero que hay entre 1 y mi numero Entonces
		//el numero no seria primo
		Para j = 2 Hasta num - 1 Con paso 1 Hacer
			Si num % j == 0 Entonces
				esPrimo = falso;
			FinSi
		FinPara
		
		si esPrimo == Verdadero Entonces
			Escribir "Número primo: " , num;
			//se pone la variable aqui ya que se ha encontrado al menos un numero primo
			hayAlmenosUnPrimo <- Verdadero;
		FinSi
	FinPara
	
	//si la variable es falsa eso quiere decir que nunca se encontro un numero primo
	Si hayAlmenosUnPrimo == Falso Entonces
		Escribir "No hay números primos en el vector";
	FinSi
FinAlgoritmo
