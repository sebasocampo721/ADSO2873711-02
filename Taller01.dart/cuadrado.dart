import 'figura.dart';

// Clase derivada Cuadrado
class Cuadrado extends Figura {
  double lado;

  Cuadrado(this.lado);

  @override
  double calcularArea() {
    return lado * lado;
  }

  void mostrarInfo() {
    print("Cuadrado con lado $lado tiene un área de ${calcularArea()}.");
  }
}