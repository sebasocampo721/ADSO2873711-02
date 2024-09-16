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
  var productos = <Producto>[];

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
      DiscoDuro discoDuro1 = DiscoDuro(1 as String, 'Disco Duro 1TB' as int, true, 100.0, 'SSD', 1024);
        print('Disco Duro creado.');
        
        break;

      case 2:
        Marcador marcador1= Marcador(2 as String, 'Marcador Permanente', true as int, 1.5 as String, 'Negro' as bool, 'Permanente' as double);
        print('Marcador creado.');
        break;

      case 3:
        Portatil portatil1 = Portatil(true as int, 1200.0 as String, 150 as bool, true as double, '16GB' as int, 'Intel i7' as int);
        print('Portátil creado.');
        break;

      case 4:
        Parlante parlante1= Parlante(true as int, 50.0 as String, 200 as bool, true as double, '50W' as int, 1.5 as String);
        print('Parlante creado.');
       
        break;

      case 5:
       if (DiscoDuro != null) {
          DiscoDuro.precio = DiscoDuro.realizarDescuento();
          DiscoDuro.mostrarInfo();
        } else {
          print('Disco Duro no disponible.');
        }
        break;

      case 6:
        if (Marcador != null) {
          Marcador.precio = Marcador.realizarDescuento();
          Marcador.mostrarInformacionProducto();
        } else {
          print('Marcador no disponible.');
        }
       
        break;

      case 7:
        if (Portatil != null) {
          Portatil.precio = Portatil.realizarDescuento();
          Portatil.mostrarInformacionProducto();
        } else {
          print('Portátil no disponible.');
        }
        break;

      case 8:
        if (Parlante != null) {
          Parlante._precio = Parlante.realizarDescuento();
          Parlante.mostrarInformacionProducto();
        } else {
          print('Parlante no disponible.');
        }
        break;

      case 9:
         if (Portatil != null) {
          print('Introduce las horas de uso:');
          String? horasInput = stdin.readLineSync();
          int horas = int.parse(horasInput ?? '0');
          double precioConsumo = Portatil.calcularPrecioConsumo(horas);
          print('El precio por $horas horas de consumo es: $precioConsumo');
        } else {
          print('Portátil no disponible.');
        }
        break;

      case 10:
        if (Parlante != null) {
          print('Introduce las horas de uso:');
          String? horasInput = stdin.readLineSync();
          int horas = int.parse(horasInput ?? '0');
          double precioConsumo = Parlante.calcularPrecioConsumo(horas);
          print('El precio por $horas horas de consumo es: $precioConsumo');
        } else {
          print('Parlante no disponible.');
        }
        break;

      case 11:
        print("Adios");
        return;

      default:
        print("Opción no válida. ");
    }
  }
}