import 'figura.dart';
import 'dart:math'; // Para usar la constante pi

// Clase derivada Circulo
class Circulo extends Figura {
  double radio;

  Circulo(this.radio);

  @override
  double calcularArea() {
    return pi * radio * radio;
  }

  void mostrarInfo() {
    print("Círculo con radio $radio tiene un área de ${calcularArea()}.");
  }
}