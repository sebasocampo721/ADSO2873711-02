import 'dart:io';

void main(List<String> args) {
//sebastian ocampo EJE FOR 04
/*
Suponga que se tiene un conjunto de calificaciones de un grupo de 40 alumnos. Realizar un algoritmo para calcular la calificación promedio y la calificación más baja de todo el grupo.
*/
  // Lista para almacenar las calificaciones de los 40 alumnos
  int cantAlumnos = 5;
  double nota, promedio, suma = 0;
  double notaMenor = 6;
  double notaMayor = 0;

  // Bucle for para leer las calificaciones de los 40 alumnos
  for (int i = 0; i < cantAlumnos; i++) {
    print("Ingrese la calificación del alumno" + (i+1).toString());
    nota = double.parse(stdin.readLineSync()!);
    while(nota<0 || nota>5){ // 'o' es igual a '||'
      print("la nota es el rango incorrecto");
      print("Ingrese de nuevo la calificación del alumno" + (i+1).toString());
      nota = double.parse(stdin.readLineSync()!); 
      print("---------------------------------");
    }
    suma += nota; // suma = suma + nota
    if(nota < notaMenor){
      notaMenor = nota;
    }
    if(nota> notaMayor){
      notaMayor = nota;
    }
      print("hasta el momento la nota menor es $notaMenor");
      print("hasta el momento la nota mayor es $notaMayor");
  }
  promedio = suma / cantAlumnos;
  print("Calificación promedio: $promedio");
  print("Calificación más baja: $notaMenor");
  print("Calificación mas alta: $notaMayor");
}