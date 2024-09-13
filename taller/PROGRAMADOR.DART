import 'persona.dart';

class Programador extends Persona {
  String _empresa;
  double _salario;

  Programador(this._empresa, this._salario, String nombre, int edad) : super(nombre, edad);

  void setEmpresa(String empresa) {
    _empresa = empresa;
  }

  String getEmpresa() {
    return _empresa;
  }

  void setSalario(double salario) {
    _salario = salario;
  }

  double getSalario() {
    return _salario;
  }

  double obtenerSalarioNeto() {
    return _salario * 0.89; // 11% de deducción
  }

  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("""
      Empresa: $_empresa
      Salario: \$$_salario
      Salario Neto: \$${obtenerSalarioNeto()}
    """);
  }
}