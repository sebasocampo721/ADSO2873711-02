import 'dart:html';

void main() {
  // CONDICIONAL SIMPLE 
  print("CONDICIONAL SIMPLE");
  int edad; //definicion
  edad = 14; //asignacion
  if (edad >= 18){
    print("usteded es mayor de edad");
  }
  print("*****************************");
  //condicional doble 
  print("condicional doble-1");
  bool esMayor = true; //definicion y asignacion
  if (esMayor == true) { //si
  print("es mayor de edad");
  } else{  ///SINO
    print("es mayor de edad");
  }
  print("*****************************");
  print("condicional doble-2");
  double nota = 4.5;
  if (nota >=3) {
    print("usted aprobo el examen");
  } else {
    print("usted no aprobo el examen");
  }
  //condicional anidado
  int estrato = 2;
  if(estrato == 1){
    print("usted estrato 1");
    print("se le subsidia el 10% de la factura");
  } else if(estrato == 2){
    print("usted estrato 2");
    print("se le subsidia el 5% de la factura");
  }
  else if (estrato == 3) {
    print("usted estrato 3");
    print("paga la factura tal cual");
  } else if(estrato == 4){
    print("usted es estrato 4");
    print("paga un 5% mas de la factura");
  } else if (estrato == 5) {
    print("ested es estrato 5");
    print("paga un de 10% mas de la factura");
  } else if(estrato ==6){
    print("usted es esytrato 6");
    print("paga un 15% mas de la factura");
  }else {
    print("el estrato es incorrecto");
  }
  //condicional multiple 
  print("**********************");
  print("condicional multiple");
  int trimestre = 4;
  switch (trimestre) {
    case 1:
    print("trimestre 1");
    print("fase de requerimientos ");
    break;
    case 2:
    print("trimestre 2");
    print("fase de analisis");
    break;
    case 3:
    print("trimestre 3");
    print("fase de diseño");
    break;
    case 4: 
    print("trimestre 4");
    print("fase de implementacion");
    break;
    case 5:
    print("trimestre 5");
    print("fase de pruebas");
    break;
    case 6:
    print("trimestre 6");
    print("fase de manrtenimiento");
    break;
    default:
    print("el trimestre es incorrecto");
  }

} // cierra metodo main

