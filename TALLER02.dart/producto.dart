import 'dart:io';

abstract class Producto {
  int codigoProducto;
  String nombreProducto;
  bool _disponible;
  double _precio;

  Producto(this.codigoProducto, this.nombreProducto, this._disponible, this._precio);


  void setCodigoProducto(int codigoProducto) {
    this.codigoProducto = codigoProducto;
  }
  int getCodigoProducto() {
    return codigoProducto;
  }



  void setNombreProducto(String nombreProducto) {
  nombreProducto = nombreProducto;
  }
  String getNombreProducto() {
    return nombreProducto;
  }


  void setDisponible(bool disponible) {
  _disponible = disponible;
  }
  bool getDisponible() {
    return _disponible;
  }

  void setPrecio(double precio) {
  _precio = precio;
  }
  double getPrecio() {
    return _precio;
  }


  double realizarDescuento(); 

  void mostrarInfo() {
    print("""
    Código Producto: $codigoProducto
    Nombre Producto: $nombreProducto
    Disponible: $_disponible
    Precio: $_precio
    """);
  }
}

//------------------------------------------------//

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


//------------------------------------------------//


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

//------------------------------------------------//


class Electrodomestico extends Producto {
  int consumoWatts;
  bool bluetooth;

  Electrodomestico(int codigoProducto, String nombreProducto, bool disponible, double precio, this.consumoWatts, this.bluetooth)
      : super(codigoProducto, nombreProducto, disponible, precio);

  void setConsumoWatts(int ConsumoWatts) {
    consumoWatts = ConsumoWatts;
  }

  int getConsumoWatts() {
    return consumoWatts;
  }

  void setBluetooth(bool Bluetooth) {
    bluetooth = Bluetooth;
  }

  bool getBluetooth() {
    return bluetooth;
  }

  double calcularPrecioConsumo(int horas) {
    return horas * (consumoWatts / 1000) * _precio;
  }

  @override
  double realizarDescuento() {
    return _precio * 10; 
  }
}

//------------------------------------------------//

class Portatil extends Electrodomestico {
  int _tamanoMemoria;
  String _procesador;
  Portatil(int codigoProducto, String nombreProducto, bool disponible, double precio, int consumoWatts, this._tamanoMemoria, this._procesador): super(codigoProducto, nombreProducto, disponible, precio, consumoWatts, false);

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

//------------------------------------------------//


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

//------------------------------------------------//

void main (){
  List<DiscoDuro> discosDuros =[];
  List<Marcador> marcadores =[];
  List<Portatil> Portatiles =[];
  List<Parlante> Parlantes =[];
 
  while (true) {
    print("""
        Bienvenido
        Elige una opción:
        1) Crear Disco Duro
        2) Crear Marcador
        3) Crear Portátil
        4) Crear Parlante
        5) Vender Disco Duro
        6) Vender Marcador
        7) Vender Portátil
        8) Vender Parlante
        9) Calcular precio consumo Portátil
        10) Calcular precio consumo Parlante
        11) Salir
        """);

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("ingrese el tipo de disco duro");
        String tipoDisco = stdin.readLineSync()!;
        print("Ingrese la capacidad");
        int cap = int.parse(stdin.readLineSync()!);
        print("ingrese el codigo de producto");
        int codigo_producto= int.parse(stdin.readLineSync()!);
        print("ingrese el nombre del producto");
        String nombre_producto=stdin.readLineSync()!;
        print("ingrese si esta disponible 'true' si no 'false'");
        bool disponible=bool.parse(stdin.readLineSync()!);
        print("ingrese el precio");
        double precio=double.parse(stdin.readLineSync()!);
        DiscoDuro discoDuro = DiscoDuro(tipoDisco, cap, codigo_producto, nombre_producto, disponible, precio);
        discosDuros.add(discoDuro);
      break;

      case 2:
        print("ingrese el tipo marcador");
        String tipoMarcador= stdin.readLineSync()!;
        print("ingrese el color tinta");
        String colorTinta=stdin.readLineSync()!;
        print("ingrese el codigo del producto");
        int codigoProducto=int. parse(stdin.readLineSync()!);
        print("ingrese el nombre del producto");
        String nombreProducto=stdin.readLineSync()!;
        print("ingrese si esta disponible 'true' si no 'false'");
        bool disponible=bool.parse(stdin.readLineSync()!);
        print("ingrese el precio");
        double precio=double.parse(stdin.readLineSync()!);
        Marcador marcador= Marcador(tipoMarcador, colorTinta, codigoProducto, nombreProducto, disponible, precio);
        marcadores.add(marcador);
      break;

      case 3:
        print("ingrese el codigo del producto");
        int codigoProducto=int. parse(stdin.readLineSync()!);
        print("ingrese el nombre del producto");
        String nombreProducto=stdin.readLineSync()!;
        print("ingrese si esta disponible 'true' si no 'false'");
        bool disponible=bool.parse(stdin.readLineSync()!);
        print("ingrese el precio");
        double precio=double.parse(stdin.readLineSync()!);
        print("ingrese el consumo de watts");
        int consumoWatts= int.parse(stdin.readLineSync()!);
        print("ingrese el tamaño de la memoria");
        int tamanoMemoria=int.parse(stdin.readLineSync()!);
        print("ingrese el tipo procesador");
        String procesador=stdin.readLineSync()!;
        Portatil portatil=Portatil(codigoProducto, nombreProducto, disponible, precio, consumoWatts, tamanoMemoria, procesador);
        Portatiles.add(portatil);
      break;

      case 4:
        print("ingrese el codigo del producto");
        int codigoProducto=int. parse(stdin.readLineSync()!);
        print("ingrese el nombre del producto");
        String nombreProducto=stdin.readLineSync()!;
        print("ingrese si esta disponible 'true' si no 'false'");
        bool disponible=bool.parse(stdin.readLineSync()!);
        print("ingrese el precio");
        double precio=double.parse(stdin.readLineSync()!);
        print("ingrese el consumo de watts");
        int consumoWatts= int.parse(stdin.readLineSync()!);
        print("ingrese la potencia del parlante");
        String potencia=stdin.readLineSync()!;
        print("ingrese el peso del parlante");
        double peso= double.parse(stdin.readLineSync()!);
        Parlante parlante = Parlante(codigoProducto, nombreProducto, disponible, precio, consumoWatts, potencia, peso);
        Parlantes.add(parlante);
      break;

      case 5:


      case 6:
        
       
        break;

      case 7:
        
        break;

      case 8:
        
        break;

      case 9:
         
        break;

      case 10:
        
        break;

      case 11:
        print("Adios");
        return;

      default:
        print("Opción no válida. ");
    }
  }
}