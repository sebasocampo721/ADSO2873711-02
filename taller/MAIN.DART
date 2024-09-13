import 'dart:io';
import 'persona.dart';
import 'futbolista.dart';
import 'programador.dart';

void main(List<String> args) {
  print("Bienvenido");
  print("Ingrese el nombre de la persona:");
  String nombre = stdin.readLineSync()!;
  print("Ingrese la edad de la persona:");
  int edad = int.parse(stdin.readLineSync()!);
  Persona persona1 = Persona(nombre, edad);
  
  // Crear instancias de Futbolista
  int cantFutbolistas = 2;
  List<Futbolista> listFutbolista = [];
  
  for (var i = 0; i < cantFutbolistas; i++) {
    print("Ingrese el nombre del futbolista ${i + 1}:");
    nombre = stdin.readLineSync()!;
    print("Ingrese la edad del futbolista ${nombre}:");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese el equipo del futbolista ${nombre}:");
    String equipo = stdin.readLineSync()!;
    print("Ingrese la posición del futbolista ${nombre}:");
    String posicion = stdin.readLineSync()!;
    print("Ingrese la cantidad de goles del futbolista ${nombre}:");
    int goles = int.parse(stdin.readLineSync()!);

    Futbolista jugador = Futbolista(equipo, posicion, goles, nombre, edad);
    listFutbolista.add(jugador);
  }

  // Crear instancias de Programador
  int cantProgramadores = 2;
  List<Programador> listProgramador = [];
  
  for (var i = 0; i < cantProgramadores; i++) {
    print("Ingrese el nombre del programador ${i + 1}:");
    nombre = stdin.readLineSync()!;
    print("Ingrese la edad del programador ${nombre}:");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese la empresa del programador ${nombre}:");
    String empresa = stdin.readLineSync()!;
    print("Ingrese el salario del programador ${nombre}:");
    double salario = double.parse(stdin.readLineSync()!);

    Programador programador = Programador(empresa, salario, nombre, edad);
    listProgramador.add(programador);
  }

  // Usar los métodos de los objetos
  // Persona
  print("Ingrese el nuevo nombre de la persona (${persona1.getNombre()}):");
  String nombreNuevo = stdin.readLineSync()!;
  persona1.setNombre(nombreNuevo);
  print("Nuevo nombre de la persona: ${persona1.getNombre()}");

  print("Ingrese la nueva edad de la persona (${persona1.getEdad()}):");
  int edadNueva = int.parse(stdin.readLineSync()!);
  persona1.setEdad(edadNueva);
  print("Nueva edad de la persona: ${persona1.getEdad()}");

  // Mostrar información de futbolistas
  for (var futbolista in listFutbolista) {
    print("\nInformación del Futbolista:");
    futbolista.mostrarInfo();
  }

  // Mostrar información de programadores
  for (var programador in listProgramador) {
    print("\nInformación del Programador:");
    programador.mostrarInfo();
  }
}