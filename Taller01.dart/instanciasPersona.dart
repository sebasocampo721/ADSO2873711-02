import 'dart:io';
import 'Persona.dart';
import 'Programador.dart';
import 'Futbolista.dart';



void main(List<String> args) {
  print("bienvenido");
  print("ingrese el nombre");
  String nombre= stdin.readLineSync()!;
  print("ingrese la edad");
  int edad= int.parse(stdin.readLineSync()!);
  Persona persona1 = Persona(nombre, edad);




  int cantObjetos= 2;
  List<Futbolista> listFutbolista = [];
  List<Programador> listProgramador = [];
  for ( var i = 0; i < cantObjetos; i++ ){
    print("ingrese el nombre del futbolista ${i+1}  ");
    nombre= stdin.readLineSync()!;
    print("ingrese la edad del futbolista ${nombre}  ");
    edad= int.parse(stdin.readLineSync()!);
    print("ingrese el equipo del futbolista ${nombre}");
    String equipo= stdin.readLineSync()!;
    print("ingrese la posicion del futbolista ${nombre}");
    String posicion= stdin.readLineSync()!;
    print("ingrese la cantidad de goles del futbolista ${nombre}");
    int goles=int.parse(stdin.readLineSync()!);

    Futbolista jugador = Futbolista(equipo, posicion, goles, nombre, edad);

    listFutbolista.add(jugador);
  
  }

  for ( var i = 0; i < cantObjetos; i++ ){
    print("ingrese el nombre del programador ${i+1}  ");
    nombre= stdin.readLineSync()!;
    print("ingrese la edad del programador ${nombre}  ");
    edad= int.parse(stdin.readLineSync()!);
    print("ingrese la empresa de ${nombre}");
    String empresa= stdin.readLineSync()!;
    print("ingrese salario de  ${nombre}");
    double salario= double.parse(stdin.readLineSync()!);
    


    Programador programador = Programador(empresa, salario, nombre, edad);

    listProgramador.add(programador);
    print(listProgramador);
  }

  //usar los métodos de los objetos
  //Persona
  print("Ingrese el nuevo nombre de la persona: ${persona1.getnombre()}");
  String nombreNuevo = stdin.readLineSync()!;
  persona1.setnombre(nombreNuevo);
  print("Nuevo nombre de la persona: ${persona1.getnombre()}");

  print("Ingrese la nueva edad de la persona: ${persona1.getedad()}");
  int edadNueva = int.parse(stdin.readLineSync()!);
  persona1.setedad(edadNueva);
  print("Nuevo nombre de la persona: ${persona1.getnombre()}");

  //programador
  print("Ingrese la nueva edad de la persona: ${persona1.getedad()}");
  int edadNueva = int.parse(stdin.readLineSync()!);
  persona1.setedad(edadNueva);
  print("Nuevo nombre de la persona: ${persona1.getnombre()}");

}