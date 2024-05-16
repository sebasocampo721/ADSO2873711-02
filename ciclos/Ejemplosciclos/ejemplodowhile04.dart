import 'dart:io';

void main(List<String> args) {
  /*Realizar un algoritmo que permita mostrar al usuario un listado de opciones tipo menú, para realizar una transacción en un banco(Determinar las que crea necesarias). La última opción será la de salir y allíse terminará el ciclo, de lo contrario mostrará las otras opcionesmientras el usuario quiera. No se deberá implementar las acciones como tal sino solo prints que indiquen las acciones realizadas
  */

  int opcion;
  double resultado;
  do{
    print("elige el banco a enviar el dinero");
    print("1. bancolombia");
    print("2. davivienda");
    print("3. nequi");
    print("4. davplata");
    print("5. salir");
    print("digite la opcion deseada");
    opcion=int.parse(stdin.readLineSync()!);
   
    switch(opcion){
      case 1:
      print("usted eligio el banco bancolombia");
      break;
      case 2:
      print("usted eligio el banco davivienda");
      break;
      case 3:

      print("usted eligio el banco nequi");
      break;
      case 4:
  
      print("usted eligio el banco daviplata");
      break;
      case 5:
      print("adios");
      break;
      default:
      print("opcion incorrecta");
    }
  } while (opcion!=5);
}