import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje while 06
  /*Calcular el promedio de edades de hombres, mujeres y de todo un grupo de n alumnos.
  */
  // definicion variables
  int cantalumnos, cantmujeres = 0, canthombres = 0;
  int genero, edad, edadhombres = 0, edadmujeres = 0, edades = 0, contador = 0;
  double promedio, promediohombres, promediomujeres;
  //entrada, proceso
  print("Ingrese la cantidad de alumnos");
  cantalumnos = int.parse(stdin.readLineSync()!);
  while(contador != cantalumnos){
    print("Ingrese 1 si es mujer o 2 si es hombre");
    genero = int.parse(stdin.readLineSync()!);
    print("Ingrese su edad");
    edad = int.parse(stdin.readLineSync()!);
    if(genero == 1){
      cantmujeres++;
      edadmujeres += edad;
      edades += edad;
      contador++;
    }else if(genero == 2){
      canthombres++;
      edadhombres += edad;
      edades += edad;
      contador++;
    }else{
      print("Genero no válido");
    }
  }
  promedio = edades/cantalumnos;
  promediomujeres = edadmujeres/cantmujeres;
  promediohombres = edadhombres/canthombres;
  if(canthombres == 0){
    promediohombres = 0;
  }
  if(cantmujeres == 0){
    promediomujeres = 0;
  }
  //salida
  print("El promedio de las edades de las mujeres es: $promediomujeres");
  print("El promedio de las edades de los hombres es: $promediohombres");
  print("El promedio de las edades de todos los alumnos es: $promedio");
}