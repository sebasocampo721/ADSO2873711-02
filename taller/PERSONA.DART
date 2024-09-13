class Persona {
  String _nombre;
  int _edad;

  Person(this._nombre, this._edad);

  void setnombre(String name) {
    _nombre = nombre;
  }

  String getnombre() {
    return _nombre;
  }

  void setedad(int edad) {
    _edad = edad;
  }

  int getedad() {
    return _edad;
  }
}