import 'electrodomestico.dart';

class Portatil extends Electrodomestico {
  int _tamanoMemoria;
  String _procesador;
  Portatil(int codigoProducto, String nombreProducto, bool disponible, double precio, int consumoWatts, this._tamanoMemoria, this._procesador, String potencia, double peso): super(codigoProducto, nombreProducto, disponible, precio, consumoWatts, false);

  void setTamanoMemoria(int tamanoMemoria) {
    _tamanoMemoria = tamanoMemoria;
  }

  int getTamanoMemoria() {
    return _tamanoMemoria;
  }

  void setProcesador(String procesador) {
    _procesador = procesador;
  }

  String getProcesador() {
    return _procesador;
  }
}
