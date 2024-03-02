Algoritmo ejecicio12
	//Hacer un algoritmo que lea el nombre de una persona, 
	//el valor de la hora trabajada y el número dehoras que
	//trabajó. Se debe mostrar el nombre y el pago de la persona.
	
	//variable
	definir nombre como cadena;
	definir valorhora Como Real;
	definir numhoratrabajo como real;	
	definir pagopersona como real;
    //entrada
	escribir "escriba el nombre de la persona";
	leer nombre;
	escribir "escriba el valor de la hora";
	leer valorhora;
	escribir "escriba el numero de horas que trabajo";
	leer numhoratrabajo;
	//proceso
	pagopersona<- numhoratrabajo*valorhora
	//salida
	escribir "el nombre es: ",nombre;
	escribir "el pago de la persona es: ",pagopersona, "000" ,"mil","pesos";
FinAlgoritmo
