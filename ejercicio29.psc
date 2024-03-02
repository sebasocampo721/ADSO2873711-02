Algoritmo ejercicio29
	//Dado un monto, calcular el descuento considerando que por encima de 100
	//el descuento es del 10% y por debajo de 100, el descuento es del 2%.
	//variables
	definir monto,descuento como real;
	
	escribir "ingrese el monto "
	leer monto;
	
	//proceso y salida
	si monto > 100 entonces 
		descuento = monto * .10;
		
	SiNo
		descuento = monto * .02
	FinSi
	escribir "monto: $",monto;
	escribir "descuento aplicado: $",descuento;
FinAlgoritmo