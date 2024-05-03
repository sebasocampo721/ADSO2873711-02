Algoritmo ejemplo11
	//condicional doble 2
	//se tiene el resultado de un examen para un aprendiz.
	//(se debe pedir esa nota) si la nota esta pordebajo de 3, decir que la perdio, 
	//de lo contrario mostrar que si gano la nota 
	
	//variable
	definir nota como real;
	//entrada 
	escribir "ingrese la nota del examen";
	leer nota;
	//proceso y salida
	//(condicional anidado)
si ((nota>5) o (nota<0)) Entonces
		escribir "la nota no es valida";
sino
	
	si (nota>=3) Entonces
		escribir "usted gano el examen";
	sino 
		escribir "usted perdio la examen";
	FinSi
finsi
FinAlgoritmo
