class Persona {
  String _nombre;
  int _edad;

  Persona( this._nombre, this._edad);

  void setnombre (String nombre) {
    _nombre = nombre;
  }

  String getnombre () {
    return _nombre;
  }
  void setedad (int edad) {
    _edad = edad;
  }

  int getedad () {
    return _edad;
  }
 
 void mostrarInfo () {
  print("""
        el nombre es: $_nombre
        la edad es: $_edad
        """);
 }
  
}