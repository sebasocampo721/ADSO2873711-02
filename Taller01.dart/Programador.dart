import 'Persona.dart';

class Programador extends Persona {
  String _empresa;
  double _salario;

  Programador(this._empresa, this._salario, nombre, edad) : super(nombre, edad);

  void setEmpresa (String empresa) {
    _empresa = empresa;
  }

  String getEmpresa () {
    return _empresa;
  }
  void setSalrio (double salario) {
    _salario = salario;
  }

  double obtenerSalario () {
    return _salario;
  }
}