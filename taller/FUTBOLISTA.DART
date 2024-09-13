import 'persona.dart';

class Futbolista extends Persona {
  String _equipo;
  String _posicion;
  int _cantidadGoles;

  Futbolista(this._equipo, this._posicion, this._cantidadGoles, String nombre, int edad)
      : super(nombre, edad);

  void setEquipo(String equipo) {
    _equipo = equipo;
  }

  String getEquipo() {
    return _equipo;
  }

  void setPosicion(String posicion) {
    _posicion = posicion;
  }

  String getPosicion() {
    return _posicion;
  }

  void setCantidadGoles(int goles) {
    _cantidadGoles = goles;
  }

  int getCantidadGoles() {
    return _cantidadGoles;
  }

  bool esTitular() {
    return _cantidadGoles > 5;
  }

  @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("""
      Equipo: $_equipo
      Posición: $_posicion
      Cantidad de goles: $_cantidadGoles
      Titular: ${esTitular() ? 'Sí' : 'No'}
    """);
  }
}