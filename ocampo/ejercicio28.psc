Algoritmo ejercicio28
	//Un trabajador recibe su pago, según la cantidad de horas trabajadas y su valor. Si la cantidad de
	//horas trabajadas es mayor que 40, éstas se consideran horas extra, y tienen un incremento de $10000
//(diez mil) sobre el valor de la hora. Calcular y mostrar el salario (pago) del trabajador. Nota: leer horas
	//trabajadas y valor de la hora.
	
	//variables 
	
	definir sueldo,horas,extra,pago como real;
	
	escribir "ingrese las horas trabajadas";
	leer horas;
	escribir "ingrese el pago por hora";
	leer pago;
	
	//proceso y salida
	si horas <= 40 entonces
		sueldo = horas*pago;
	SiNo
		extra = horas-40;
		sueldo = pago * 40 + 10000 * extra;
		
	FinSi
	escribir "el valor de la hora es: ",pago;
	escribir "las horas trabajadas son: ",horas;
	escribir "el pago por las ",horas,"horas trabajadas es: $",sueldo 
FinAlgoritmo
