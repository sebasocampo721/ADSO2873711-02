
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do do while 02
  /*1.En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar que porcentaje de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en contra y que porcentaje se abstiene de opinar.El programa debe preguntar si se desea continuar ingresando datos.
  */
  // definicion variables
   int opcion, porcentaje, afavor=0, encontra=0, abstiene=0, totalAfavor,totalEncontra,totalAbstiene;
  do{
    print("bienvenido a la encuesta");
    print("1. esta a favor del trato");
    print("2. esta en contra del trato");
    print("3. se abstiene de opinar");
    print("4. salir");
    print("digite la opcion deseada");
    opcion=int.parse(stdin.readLineSync()!);
    if(opcion>=1 && opcion< 4){
    print("ingrese los nuemros para operar");
      
    }
    switch(opcion){
      case 1:
      afavor=afavor+1;
      totalAfavor=(afavor/100) as int;
      print("el porcentaje d epersonas que estan a favor es $totalAfavor ");
      break;
      case 2:
      encontra=encontra+1;
      totalEncontra=(encontra/100) as int;
      print("el porcentaje de personas que estan encontra de es $totalEncontra");
      break;
      case 3:
      abstiene=abstiene+1;
      totalAbstiene=(abstiene/100) as int;  
      print("el porcentaje de personas que se abstiene de votar es $totalAbstiene");
      break;
      case 4:
      print("adios");
      break;
      default:
      print("opcion incorrecta");
    }
  } while (opcion!=5);
}
