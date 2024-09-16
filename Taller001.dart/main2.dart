import 'dart:io';
import 'circulo.dart';
import 'cuadrado.dart';
import 'triangulo.dart';

void main() {
  print("Bienvenido al programa de cálculo de áreas de figuras geométricas.");
  
  // Crear instancias de cada figura
  print("Ingrese el radio del círculo:");
  double radio = double.parse(stdin.readLineSync()!);
  Circulo circulo = Circulo(radio);
  
  print("Ingrese el lado del cuadrado:");
  double lado = double.parse(stdin.readLineSync()!);
  Cuadrado cuadrado = Cuadrado(lado);
  
  print("Ingrese la base del triángulo:");
  double base = double.parse(stdin.readLineSync()!);
  print("Ingrese la altura del triángulo:");
  double altura = double.parse(stdin.readLineSync()!);
  Triangulo triangulo = Triangulo(base, altura);
  
  // Mostrar información de cada figura
  circulo.mostrarInfo();
  cuadrado.mostrarInfo();
  triangulo.mostrarInfo();
}
