import 'dart:io';
import '../Taller001.dart/persona.dart';
import '../Taller001.dart/futbolista.dart';
import '../Taller001.dart/programador.dart';

void main() {
  print("Bienvenido");
  print("Ingrese el nombre:");
  String nombre = stdin.readLineSync()!;
  print("Ingrese la edad:");
  int edad = int.parse(stdin.readLineSync()!);
  Persona persona1 = Persona(nombre, edad);

  int cantObjetos = 2;
  List<Futbolista> listFutbolista = [];
  List<Programador> listProgramador = [];

  // Crear instancias de Futbolista
  for (var i = 0; i < cantObjetos; i++) {
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
  for (var i = 0; i < cantObjetos; i++) {
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

  // Usar los métodos de los objetos Persona
  print("Ingrese el nuevo nombre de la persona (${persona1.getnombre()}):");
  String nombreNuevo = stdin.readLineSync()!;
  persona1.setnombre(nombreNuevo);
  print("Nuevo nombre de la persona: ${persona1.getnombre()}");

  print("Ingrese la nueva edad de la persona (${persona1.getedad()}):");
  int edadNueva = int.parse(stdin.readLineSync()!);
  persona1.setedad(edadNueva);
  print("Nueva edad de la persona: ${persona1.getedad()}");

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