import 'dart:io';
import 'empleado.dart';

void main() {
List<Empleado> empleados = [];
String respuesta;
String nombre;
int edad;
double salario;
String puesto;
String tipoContrato;
String nuevoPuesto;




while (true) {
  print("¿Desea agregar un empleado? (si/no)");
  respuesta = stdin.readLineSync()!;
  if (respuesta != 'si') break;
    print("Ingrese el nombre del empleado:");
    nombre = stdin.readLineSync()!;

    print("Ingrese la edad del empleado:");
    edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el salario del empleado:");
    salario = double.parse(stdin.readLineSync()!);

    print("Ingrese el puesto del empleado:");
    puesto = stdin.readLineSync()!;

    print("ingrese el nuevo puesto del empleado");
    nuevoPuesto= stdin.readLineSync()!;

    print("Ingrese tipo de contrato (Indefinido/Temporal/Contratista):");
    tipoContrato = stdin.readLineSync()!;


/////////////////////////////////
print("*"*50);
    empleados.add(Empleado(nombre, edad, salario, puesto, tipoContrato));
    double bonificacion;
    Empleado empleado1 = Empleado(nombre, edad, salario, puesto, tipoContrato);
    empleado1.aumentarSalario(10);
    empleado1.cumplirAnios();
    String newpuesto = empleado1.cambiarPuesto("secretario");
    print("el nuevo puesto es: $newpuesto");
    bonificacion = empleado1.calcularBonificacion();
    print("Bonificación calculada: $bonificacion");
    empleado1.mostrarInformacion();
  }
}

void newMethod(Empleado emp1) => emp1.cumplirAnios();