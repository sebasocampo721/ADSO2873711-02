
import 'electrodomestico.dart';

class Parlante extends Electrodomestico {
  String _potencia;
  double _peso;

  Parlante(int codigoProducto, String nombreProducto, bool disponible, double precio, int consumoWatts, this._potencia, this._peso)
      : super(codigoProducto, nombreProducto, disponible, precio, consumoWatts, false);

  void setPotencia(String potencia) {
    _potencia = potencia;
  }

  String getPotencia() {
    return _potencia;
  }
  void setPeso(double peso){
    _peso=peso;
  }
  double getPeso(){
    return _peso;
  }
}