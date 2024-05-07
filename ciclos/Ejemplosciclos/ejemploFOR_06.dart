import 'dart:io';

void main(List<String> args){
  /*
  pedir al usuario n notas ingresadas por el usuario, si el promedio es mayor a 3, 
  decir que el estudiante aprobo el trimestre, sino que indique que reprobo
  */
  int cantnotas;
  double promedio, nota=0, suma=0;

  print("ingrese la  cantidad de  notas");
  cantnotas= int.parse(stdin.readLineSync()!);
  for(int i = 0;  i<= cantnotas; i+=1){
    int numero = i +1;
    print("digite la nota: $numero");
    nota= double.parse(stdin.readLineSync()!);
    suma+=nota;
  }
  promedio=suma/cantnotas;
  print("su promedio es: $promedio");
  if (promedio>=3){
    print("usted aprobo");
  }
  else{
    print("usted reprobo");
  }
}