
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje while 04
  /*El Depto. de Seguridad Publica y Transito del D.F. desea saber, de los n autos que entran a la ciudad de México, cuantos entran con calcomanía de cada color. Conociendo el último dígito de la placa de cada automóvil se puede determinar el color de la calcomanía utilizando la sig. relación:DÍGITOCOLOR1 o 2amarilla3 o 4rosada5 o 6roja7 o 8verde9 o 0azul
  */
  // definicion variables
  int canautos=0, d=0, amarilla, rosada, roja, verde, azul, contador=0;
    print("ingrese la cantidad de autos");
    canautos= int.parse(stdin.readLineSync()!);
    amarilla=0;
    rosada=0;
    roja=0;
    verde=0;
    azul=0;
    
    while(contador<canautos ){
     print("ingrese el ultimo digito de la placa del auto ");
     d= int.parse(stdin.readLineSync()!);
    if(d ==1 || d==2){
      amarilla=amarilla+1;
    }
    else if(d ==3 || d==4){
      rosada=rosada+1;
    }
    else if(d ==5 || d==6){
      roja=roja+1;
    }
    else if(d ==7 || d==8){
      verde=verde+1;
    }
    else if(d ==9 || d==0){
      azul=azul+1;
    }else{
      print("ingrese un digito correcto");
    }
      contador++;
  print("autos de calcomania amarilla $amarilla");
  print("autos de calcomania rosada $rosada");
  print("autos de calcomania roja $roja");
  print("autos de calcomania verde $verde");
  print("autos de calcomania azul $azul");
}

}