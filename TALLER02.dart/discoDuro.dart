import 'producto.dart';

class DiscoDuro extends Producto{
  String tipoDisco;
  int capacidad;
  DiscoDuro(this.tipoDisco, this.capacidad, codigo_producto, nombre_producto, _disponible, precio) : super(codigo_producto, nombre_producto, _disponible, precio);

  void setTipoDisco(String TipoDisco){
    tipoDisco=TipoDisco;
  }
  String getTipoDisco(){
    return tipoDisco;
  }
  void setCapacidad(int Capacidad){
    capacidad=Capacidad;
  }
  int getCapacidad(){
    return capacidad;
  }
    @override
  double realizarDescuento() {
    return getPrecio() * 0.20; // Descuento del 20%
  }
}