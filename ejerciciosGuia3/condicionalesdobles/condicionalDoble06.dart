import 'dart:io';

void main(){
  //sebastian oacampo - eje condicional doble 06
  /*El  gobierno  colombiano  desea  reforestar  un  bosque  que  mide  determinado  número  de  hectáreas.  Si  la superficie del terreno excede a 1 millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:Porcentaje de la superficie del bosqueTipo de árbol70%Pino20%Roble10%CedroSi la superficie del terreno es menor o igual a un millón de metros cuadrados, entonces decidirá sembrar de la sig. manera:
  */
  // definicion variables

  double metros, hectareas, pino, roble, cedro, numpino, numroble, numcedro;
  //entrada
  print("ingrese la cantidad de hectareas");
  hectareas= double.parse(stdin.readLineSync()!);
  //proceso y salida

  metros=hectareas*10000;
  
  if (metros>1000000){
    pino=0.7;
    roble=0.2;
    cedro=0.1;
    
  }    
  else {
    pino=0.5;
    roble=0.3;
    cedro=0.2;
  }
   numpino= metros * 8/10 *pino;
   numroble= metros *15/15*roble;
   numcedro= metros* 10/18*cedro;
   print("la canntidad de pinos que caben en el terreno es: $numpino");
   print("la canntidad de robles que caben en el terreno es: $numroble");
   print("la canntidad de cedros que caben en el terreno es: $numcedro");
}