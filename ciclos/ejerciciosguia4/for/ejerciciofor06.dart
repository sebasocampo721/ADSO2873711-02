import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje for 06
  /*Una persona debe realizar un muestreo con 50 personas para determinar el promedio de peso de los niños, jóvenes, adultos y adultos mayores que existen en su zona habitacional. Se determinan las categorías con base  en la sig, tabla
  */
  // definicion variables
  
  int edad;
  double peso, ninos=0, jovenes=0, adultos=0, adultosmayores=0, promedionino=0, promediojoven=0, promedioadulto=0, promedioadultomayor=0 ;
  double pesoninos=0, pesojovenes=0, pesoadultos=0, pesoadultosmayores=0;
  int cantpersonas=0;
  double promedadnino, promedadjoven,
  //proceso y salida
  for(int i=0; i<= cantpersonas; i++){
  print("ingrese la edad de la persona ");
  edad= int.parse(stdin.readLineSync()!);
  print("ingrese el peso de la persona ");
  peso=double.parse(stdin.readLineSync()!);
    if (edad >0 && edad <= 12){
      pesoninos= pesoninos+peso;
      ninos ++;
      
    }
    if (edad >=13 && edad <= 29){
      pesojovenes= pesojovenes+peso;
      jovenes++;
     
    }
    if (edad >=30 && edad <= 59){
      pesoadultos= pesoadultos+peso;
      adultos++;
      
    }
    if (edad >=60 ){
      pesoadultosmayores= pesoadultosmayores+peso;
      adultosmayores++;
      
    }
  }
  if(ninos==0){
  ninos=0;
  }
  if(jovenes==0){
  jovenes=0;
  }
  if(adultos==0){
  adultos=0;
  }
  if(adultosmayores==0){
  adultosmayores=0;
  }
  promedionino= pesoninos/ninos;
  promediojoven= pesojovenes/jovenes;
  promedioadulto= pesoadultos/adultos;
  promedioadultomayor= pesoadultosmayores/adultosmayores;
  
  print("el promedio de peso de niños es: $promedionino");
  print("el promedio de peso de jovenes es: $promediojoven");
  print("el promedio de peso de adultos es: $promedioadulto");
  print("el promedio de peso de adultos mayores es: $promedioadultomayor");
}

