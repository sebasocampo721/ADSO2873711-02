import '../Taller001.dart/Persona.dart';

class Futbolista extends Persona{
 String _equipo;
 String _posicion;
 int cantidadGoles;

 Futbolista(this._equipo, this._posicion, this.cantidadGoles, String nombre, int edad) : super(nombre, edad); // el super es el construtor de la clase persona

 void setEquipo (String equipo) {
  _equipo= equipo;
 }

  String getEquipo () {
    return _equipo;
  }
 void setposicion (String posicion) {
  _posicion= posicion;
 }

  String getposicion () {
    return _posicion;
  }
 void setcantidadGoles (int Goles) {
  cantidadGoles += Goles;
 }

  int getcantidadGoles () {
    return cantidadGoles;
  }

  bool esTitular (){
    if (cantidadGoles > 5){
    return true;
  }else{
    return false;
  }

  }
 @override
  void mostrarInfo() {
    super.mostrarInfo();
    print("""
      Equipo: $_equipo
      Posición: $_posicion
      Cantidad de goles: $cantidadGoles
      Titular: ${esTitular() ? 'Sí' : 'No'}
    """);
  }
  


}
