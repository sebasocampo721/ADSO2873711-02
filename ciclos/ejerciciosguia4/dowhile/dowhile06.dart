import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje do while 06
  /*.Leer por cada alumno de Diseño estructurado de algoritmos suD número de control y su calificación en cada una de las 5 unidades de la materia. Al final que escriba el número de control del alumno que obtuvo mayor promedio. Suponga que los alumnos tienen diferentes promedios.
  */
  // definicion variables
    int numControl=0, cantEstudiantes, contador=0;
  double calificacion, promedio, poromedioM=0, sumaCalifi=0;
    print("cuantos estudiantes estan en el curso");
    cantEstudiantes=int.parse(stdin.readLineSync()!);
    //proceso y salida
     do {
    print("Estudiantes #${contador + 1}");
    sumaCalifi = 0;
    for(int i = 0; i < 5; i++){
      print("nota ${i + 1}");
      calificacion = double.parse(stdin.readLineSync()!);
      sumaCalifi += calificacion;
        while(calificacion<0 || calificacion>5){
        print("nota incorrecta, ingrese de nuevo la nota");
        calificacion = double.parse(stdin.readLineSync()!);
        }
    }
    promedio = sumaCalifi / 5;
    if(promedio > poromedioM){
      poromedioM = promedio;
      numControl = contador + 1;
      print("hasta el momento el mayor promedio es de $poromedioM");
    }
    print('*' * 50);
    contador++;
  } while (contador < cantEstudiantes);
  print("el promedio mayor es de $poromedioM");
  print("el numero de el mejor estudiantes es $numControl");
}

