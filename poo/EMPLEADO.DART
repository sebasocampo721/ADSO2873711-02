class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  void aumentarSalario(double porcentaje) {
    this.salario += salario * (this.salario * porcentaje) / 100;
    print("Salario aumento, Su Nuevo salario Es: $salario");
  }

  void cumplirAnios() {

    edad++;
    print("$nombre cumple años, la edad es: $edad");
  }

  String cambiarPuesto(String nuevoPuesto) {
    this.puesto = nuevoPuesto;
    return this.puesto;
  }

  void mostrarInformacion() {
    print("Nombre: $nombre, Edad: $edad, Salario: $salario, Puesto: $puesto, Tipo de Contrato: $tipoContrato");
    print(
      """
        nombre: $nombre.
        Edad: $edad.
        salario: $salario.
        puesto: $puesto
        tipo de contrato: $tipoContrato
      """
    )
  }

  double calcularBonificacion() {
    double bonificacion;
    switch (this.tipoContrato) {
      case "Contratista":
        bonificacion = salario * 0.1;
        break 
      case "Temporal":
        bonificacion = salario * 0.05;
      break 
      case "Indefinido":
        bonificacion = salario * 0.15;
        break 
      default:
      bonificacion=0;
       
    }
  }
}