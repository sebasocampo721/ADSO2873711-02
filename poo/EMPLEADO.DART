class Empleado {
  String nombre;
  int edad;
  double salario;
  String puesto;
  String tipoContrato;


// constructor clase empleado
  Empleado (this.nombre, this.edad, this.salario, this.puesto, this.tipoContrato){}

  void aumentarsalario(double porcentaje){
    int salario = salario*porcentaje/100;
    print("el nuevo salario es: $salario");
  }

  void cumplirAnios(){

  }
  void cambiarPuesto(){

  }
  void mostrarInformacion(){

  }
  void calcularBonificacion(){

  }
}