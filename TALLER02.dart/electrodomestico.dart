import 'producto.dart';

class Electrodomestico extends Producto {
  int consumoWatts;
  bool bluetooth;

  Electrodomestico(int codigoProducto, String nombreProducto, bool disponible, double precio, this.consumoWatts, this.bluetooth)
      : super(codigoProducto, nombreProducto, disponible, precio);

  void setConsumoWatts(int consumoWatts) {
    this.consumoWatts = consumoWatts;
  }

  int getConsumoWatts() {
    return consumoWatts;
  }

  void setBluetooth(bool bluetooth) {
    this.bluetooth = bluetooth;
  }

  bool getBluetooth() {
    return bluetooth;
  }

  double calcularPrecioConsumo(int horas) {
    return consumoWatts * horas * 0.10; // Ejemplo: 0.10 por watt por hora
  }

  @override
  double realizarDescuento() {
    return _precio * 10; 
  }
}
