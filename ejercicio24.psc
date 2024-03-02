Algoritmo ejercicio24
	//Pedir un número entre 0 y 9.999 y decir cuántas cifras tiene.
	
	//variables
	definir n1, n9,n99, n999, n9999 como real;

	//entrada
	Escribir "digite un numero entre 0 y 9999";
	Leer n1;
	
	n9<-9;
	n99<-99;
	n999<-999;
	n9999<-9999;
	//proceso y salida
	si n1 <= n9 Entonces
		Escribir "su numero tiene una cifra";
	SiNo
		si n1 <= n99 Entonces
			Escribir "su numero tiene dos cifras";
		SiNo
			si n1 <= n999 Entonces
				Escribir "su numero tiene tres cifras";
			SiNo
				si n1 <= n9999 Entonces
					Escribir "su numero tiene cuatro cifras";
				FinSi
			FinSi
		FinSi
	FinSi
FinAlgoritmo
