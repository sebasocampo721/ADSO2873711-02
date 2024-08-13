class Evento {
  String _nombre; //ATRIBUTO PRIVADO
  int cantpersonas; //ATRIBUTO PUBLICO
  DateTime _fecha; //ATRIBUTO PRIVADO


  Evento (this._nombre, this.cantpersonas, this._fecha);

  //metodos setters y gettters
  void setnombre(String nom) {
    _nombre=nom;
  }
  String getnombre() {
    return _nombre;
  }
  void setcantpersonas(int cant) {
    cantpersonas = cant;
  }
  int getcantpersonas(){
    return cantpersonas;
  }
  void setfechaevento(DateTime fecha){
    _fecha=fecha;
  }
  DateTime getfechaevento(){
    return _fecha;
  }
  void _mostrarinfo(){
    print("""
          nombre: $_nombre
          cantidad de personas: $cantpersonas
          fehcha: $_fecha
          """);
  }
  void mostrarinformacion(){
    _mostrarinfo();
  }
}