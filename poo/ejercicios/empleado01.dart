/*import 'dart:io';
import 'EMPLEADO.dart';

void main() {
List<Empleado> listempleados = [];
String nombre;
int edad;
double salario;
String puesto;
String tipoContrato;
String nuevoPuesto;
int cantidadentradas;

print("cantidad de entradas");
cantidadentradas = int .parse(stdin.readLineSync()!);
for(int  i = 0; i < cantidadentradas; i++){
  print("Ingrese el nombre del empleado: ${i + 1}");
    nombre = stdin.readLineSync()!;

    print("Ingrese la edad del empleado: ${i + 1}");
    edad = int.parse(stdin.readLineSync()!);

    print("Ingrese el salario del empleado: ${i + 1}");
    salario = double.parse(stdin.readLineSync()!);

    print("Ingrese el puesto del empleado: ${i + 1}");
    puesto = stdin.readLineSync()!;

    print("Ingrese tipo de contrato (Indefinido/Temporal/Contratista): del epmleado ${i + 1}");
    tipoContrato = stdin.readLineSync()!;

    Empleado empleado = Empleado(nombre, edad, salario, puesto, tipoContrato);
    listempleados.add(empleado);
    

  }
  
    mostrarinfolista(listempleados);
}
  void mostrarinfolista(List<Empleado>listempleados){
  for(int  i = 0; i < listempleados.length; i++){
    print("*"*50); 
    listempleados[i]. mostrarInformacion();
    print("Ingrese el porcentaje del aumneto al salario del empleado: ${i + 1}");
    double porcentaje = double.parse(stdin.readLineSync()!);
    listempleados[i].aumentarSalario(porcentaje);
    listempleados[i].cumplirAnios();
    print("ingrese el nuevo puesto del empleado");
    String nuevoPuesto= stdin.readLineSync()!;
    listempleados[i].cambiarPuesto(nuevoPuesto);
    listempleados[i].Bonificacion();
    double newsalario= listempleados[i].Bonificacion();
    print("el nuevo salario $newsalario");
    }
}
  */


