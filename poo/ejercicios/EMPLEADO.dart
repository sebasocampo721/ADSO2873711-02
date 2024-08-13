class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;

  // Constructor
  Empleado(this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato);

  // Métodos

  void aumentarSalario(double porcentaje) {
    salario += salario * (porcentaje / 100);
  }

  void cumplirAnios() {
    edad++;
  }

  void cambiarPuesto(String nuevoPuesto) {
    puesto = nuevoPuesto;
  }

  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Salario: $salario');
    print('Puesto: $puesto');
    print('Tipo de contrato: $tipoContrato');
  }

  double calcularBonificacion() {
    switch (tipoContrato) {
      case 'Contratista':
        return salario * 0.10;
      case 'Temporal':
        return salario * 0.05;
      case 'Indefinido':
        return salario * 0.15;
      default:
        return 0;
    }
  }
}