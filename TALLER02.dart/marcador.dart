
class Marcador extends Producto{
  String _tipoMarcador;
  String _colorTinta;

  Marcador(this._tipoMarcador, this._colorTinta, int codigoProducto, String nombreProducto, bool disponible, double precio)
      : super(codigoProducto, nombreProducto, disponible, precio);

  void setTipoMarcador(String tipoMarcador) {
    _tipoMarcador = tipoMarcador;
  }

  String getTipoMarcador() {
    return _tipoMarcador;
  }

  void setColorTinta(String colorTinta) {
    _colorTinta = colorTinta;
  }

  String getColorTinta() {
    return _colorTinta;
  }

  @override
  double realizarDescuento() {
    return _precio * 0.10; 
  }

  void mostrarInformacionProducto() {}
}

