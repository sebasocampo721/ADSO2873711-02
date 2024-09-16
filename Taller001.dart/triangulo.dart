import 'figura.dart';

// Clase derivada Triangulo
class Triangulo extends Figura {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  @override
  double calcularArea() {
    return 0.5 * base * altura;
  }

  void mostrarInfo() {
    print("Triángulo con base $base y altura $altura tiene un área de ${calcularArea()}.");
  }
}