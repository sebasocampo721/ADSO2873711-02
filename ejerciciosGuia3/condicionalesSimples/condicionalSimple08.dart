
import 'dart:io';

void main(){
  //

  //DEFINICION
  double duracionLlamada, costoLlamada, minutosAdicionales;
  //ENTRADA
  print("indique la duracion de la llamada");
  duracionLlamada = double.parse(stdin.readLineSync()!);
  costoLlamada = 0;
  if(duracionLlamada <= 3){
    costoLlamada = 600;
  }
  if(duracionLlamada > 3){
    minutosAdicionales = duracionLlamada - 3;
    costoLlamada = 600 + minutosAdicionales * 150;
  }
  //SALIDA
  print("el costo total de la llamada es de $costoLlamada");
}