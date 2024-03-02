Algoritmo ejercicio23
	//Pedir tres números y mostrarlos ordenados de mayor a menor.
	//variables
	definir num1,num2,num3 como real;
	
	//entrada
	escribir "ingrese el numero1 y el numero2 y el numero3";
	leer num1,num2,num3;
	
	//proceso y salida
	si  num1>num2 y num1>num3 Entonces
		escribir "el numero mayor es: ",num1;
		si num2>num3 Entonces
			escribir "el numero intermedio es: ",num2;
			escribir "el numero menor es: ",num3;
		SiNo
			escribir "el numero intermedio es: ",num3;
			escribir "el numero menor es: ",num2;
		FinSi
	FinSi
	si  num2>num1 y num2>num3 Entonces
		escribir "el numero mayor es: ",num2;
		si num1>num3 Entonces
			escribir "el numero intermedio es: ",num1;
			escribir "el numero menor es: ",num2;
		SiNo
			escribir "el numero intermedio es: ",num3;
			escribir "el numero menor es: ",num1;
		FinSi
	FinSi
	
	si  num3>num1 y num3>num2 Entonces
		escribir "el numero mayor es: ",num3;
		si num1>num2 Entonces
			escribir "el numero intermedio es: ",num1;
			escribir "el numero menor es: ",num2;
		SiNo
			escribir "el numero intermedio es: ",num2;
			escribir "el numero menor es: ",num1;
		FinSi
	FinSi
	
FinAlgoritmo	
