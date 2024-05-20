
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do do while 02
  /*1.En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar que porcentaje de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en contra y que porcentaje se abstiene de opinar.El programa debe preguntar si se desea continuar ingresando datos.
  */
  // definicion variables
   int opcion, afavor=0, encontra=0, abstiene=0, TOTAL, porcentaje1, porcentaje2, porcentaje3 ;
  do{
    print("bienvenido a la encuesta");
    print("1. esta a favor del trato");
    print("2. esta en contra del trato");
    print("3. se abstiene de opinar");
    print("4. salir");
    print("digite la opcion deseada");
    opcion=int.parse(stdin.readLineSync()!);
    if(opcion>=1 && opcion< 4){
      
    }
    switch(opcion){
      case 1:
      afavor++;
      break;
      case 2:
      encontra++;
      
      break;
      case 3:
      abstiene++;
        
      break;
      case 4:
      print("adios");
      break;
      default:
      print("opcion incorrecta");
    }
    TOTAL=afavor+encontra+abstiene;
    porcentaje1=((afavor/TOTAL) *100) as int;
    porcentaje2=((encontra/TOTAL) *100) as int;
    porcentaje3=((abstiene/TOTAL) *100) as int;
    
  } while (opcion!=5);
  print("el porcentaje de personas que estan a favor es: $porcentaje1 %");
  print("el porcentaje de personas que estan en contra es: $porcentaje2 %");
  print("el porcentaje de personas que se abstiene de votar es: $porcentaje3 %");
}
