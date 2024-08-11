import 'dart:io';
import 'empleado.dart';

void main() {
  List<Empleado> empleados = [];

  // Crear empleados
  print('¿Cuántos empleados deseas agregar?');
  int cantidadEmpleados = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidadEmpleados; i++) {
    print('Ingrese el nombre del empleado:');
    String nombre = stdin.readLineSync()!;

    print('Ingrese la edad del empleado:');
    int edad = int.parse(stdin.readLineSync()!);

    print('Ingrese el salario del empleado:');
    double salario = double.parse(stdin.readLineSync()!);

    print('Ingrese el puesto del empleado:');
    String puesto = stdin.readLineSync()!;

    print('Ingrese el tipo de contrato del empleado (Indefinido, Temporal, Contratista):');
    String tipoContrato = stdin.readLineSync()!;

    Empleado empleado = Empleado(nombre, edad, salario, puesto, tipoContrato);
    empleados.add(empleado);
  }

  // Mostrar información de cada empleado
  for (Empleado empleado in empleados) {
    print('\nInformación del empleado:');
    empleado.mostrarInformacion();
    print('Bonificación: ${empleado.calcularBonificacion()}');
  }

  // Probar otros métodos
  for (Empleado empleado in empleados) {
    empleado.aumentarSalario(10); // Aumentar el salario en un 10%
    empleado.cumplirAnios(); // Cumplir años
    empleado.cambiarPuesto('Nuevo Puesto'); // Cambiar el puesto
  }

  // Mostrar información después de las modificaciones
  print('\nInformación actualizada de los empleados:');
  for (Empleado empleado in empleados) {
    empleado.mostrarInformacion();
    print('Bonificación: ${empleado.calcularBonificacion()}');
  }
}
