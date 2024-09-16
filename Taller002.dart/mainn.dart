import 'dart:io';

abstract class Producto {
  int _codigoProducto = 0;
  String _nombreProducto = '';
  bool _disponible = false;
  double _precio = 0.0;

  Producto(this._disponible, this._precio);

  // Gets y Sets
  int get codigoProducto => _codigoProducto;
  set codigoProducto(int codigo) => _codigoProducto = codigo;

  String get nombreProducto => _nombreProducto;
  set nombreProducto(String nombre) => _nombreProducto = nombre;

  bool get disponible => _disponible;
  set disponible(bool disponible) => _disponible = disponible;

  double get precio => _precio;
  set precio(double precio) => _precio = precio;

  // Método mostrar información
  void mostrarInformacionProducto() {
    print('Código: $_codigoProducto');
    print('Nombre: $_nombreProducto');
    print('Disponible: $_disponible');
    print('Precio: $_precio');
  }

  // Método abstracto
  double realizarDescuento();
}



class DiscoDuro extends Producto {
  String _tipoDisco;
  int _capacidad;

  DiscoDuro(int codigoProducto, String nombreProducto, bool disponible, double precio, this._tipoDisco, this._capacidad)
      : super(disponible, precio) {
    this.codigoProducto = codigoProducto;
    this.nombreProducto = nombreProducto;
  }

  // Gets y Sets
  String get tipoDisco => _tipoDisco;
  set tipoDisco(String tipo) => _tipoDisco = tipo;

  int get capacidad => _capacidad;
  set capacidad(int capacidad) => _capacidad = capacidad;

  // Sobreescribir el método realizarDescuento
  @override
  double realizarDescuento() {
    return precio * 0.8; // Descuento del 20%
  }
}



class Marcador extends Producto {
  String _colorTinta;
  String _tipoMarcador;

  Marcador(int codigoProducto, String nombreProducto, bool disponible, double precio, this._colorTinta, this._tipoMarcador)
      : super(disponible, precio) {
    this.codigoProducto = codigoProducto;
    this.nombreProducto = nombreProducto;
  }

  // Gets y Sets
  String get colorTinta => _colorTinta;
  set colorTinta(String color) => _colorTinta = color;

  String get tipoMarcador => _tipoMarcador;
  set tipoMarcador(String tipo) => _tipoMarcador = tipo;

  // Sobreescribir el método realizarDescuento
  @override
  double realizarDescuento() {
    return precio * 0.9; // Descuento del 10%
  }
}




class Electrodomestico extends Producto {
  int _consumoWatts;
  bool _tieneBluetooth;

  Electrodomestico(bool disponible, double precio, this._consumoWatts, this._tieneBluetooth)
      : super(disponible, precio);

  // Gets y Sets
  int get consumoWatts => _consumoWatts;
  set consumoWatts(int consumo) => _consumoWatts = consumo;

  bool get tieneBluetooth => _tieneBluetooth;
  set tieneBluetooth(bool bluetooth) => _tieneBluetooth = bluetooth;



  // Sobreescribir el método realizarDescuento
  @override
  double realizarDescuento() {
    return precio * 0.7; // Descuento del 30%
  }


  double calcularPrecioConsumo(int horas) {
    return horas * (_consumoWatts / 1000) * precio;
  }
}





class Portatil extends Electrodomestico {
  String _tamanoMemoria;
  String _procesador;

  Portatil(bool disponible, double precio, int consumoWatts, bool tieneBluetooth, this._tamanoMemoria, this._procesador)
      : super(disponible, precio, consumoWatts, tieneBluetooth);

  // Getters y Setters
  String get tamanoMemoria => _tamanoMemoria;
  set tamanoMemoria(String tamano) => _tamanoMemoria = tamano;

  String get procesador => _procesador;
  set procesador(String procesador) => _procesador = procesador;
}




class Parlante extends Electrodomestico {
  String _potencia;
  double _peso;

  Parlante(bool disponible, double precio, int consumoWatts, bool tieneBluetooth, this._potencia, this._peso)
      : super(disponible, precio, consumoWatts, tieneBluetooth);

  // Gets y Sets
  String get potencia => _potencia;
  set potencia(String potencia) => _potencia = potencia;

  double get peso => _peso;
  set peso(double peso) => _peso = peso;
}





void main() {
  DiscoDuro? discoDuro;
  Marcador? marcador;
  Portatil? portatil;
  Parlante? parlante;

  while (true) {
    print('\nElige una opción:');
    print('1) Crear Disco Duro');
    print('2) Crear Marcador');
    print('3) Crear Portátil');
    print('4) Crear Parlante');
    print('5) Vender Disco Duro');
    print('6) Vender Marcador');
    print('7) Vender Portátil');
    print('8) Vender Parlante');
    print('9) Calcular precio consumo Portátil');
    print('10) Calcular precio consumo Parlante');
    print('11) Salir');

    String? input = stdin.readLineSync();

    switch (input) {
      case '1':
        discoDuro = DiscoDuro(1, 'Disco Duro 1TB', true, 100.0, 'SSD', 1024);
        print('Disco Duro creado.');
        break;
      case '2':
        marcador = Marcador(2, 'Marcador Permanente', true, 1.5, 'Negro', 'Permanente');
        print('Marcador creado.');
        break;
      case '3':
        portatil = Portatil(true, 1200.0, 150, true, '16GB', 'Intel i7');
        print('Portátil creado.');
        break;
      case '4':
        parlante = Parlante(true, 50.0, 200, true, '50W', 1.5);
        print('Parlante creado.');
        break;
      case '5':
        if (discoDuro != null) {
          discoDuro.precio = discoDuro.realizarDescuento();
          discoDuro.mostrarInformacionProducto();
        } else {
          print('Disco Duro no disponible.');
        }
        break;
      case '6':
        if (marcador != null) {
          marcador.precio = marcador.realizarDescuento();
          marcador.mostrarInformacionProducto();
        } else {
          print('Marcador no disponible.');
        }
        break;
      case '7':
        if (portatil != null) {
          portatil.precio = portatil.realizarDescuento();
          portatil.mostrarInformacionProducto();
        } else {
          print('Portátil no disponible.');
        }
        break;
      case '8':
        if (parlante != null) {
          parlante.precio = parlante.realizarDescuento();
          parlante.mostrarInformacionProducto();
        } else {
          print('Parlante no disponible.');
        }
        break;
      case '9':
        if (portatil != null) {
          print('Introduce las horas de uso:');
          String? horasInput = stdin.readLineSync();
          int horas = int.parse(horasInput ?? '0');
          double precioConsumo = portatil.calcularPrecioConsumo(horas);
          print('El precio por $horas horas de consumo es: $precioConsumo');
        } else {
          print('Portátil no disponible.');
        }
        break;
      case '10':
        if (parlante != null) {
          print('Introduce las horas de uso:');
          String? horasInput = stdin.readLineSync();
          int horas = int.parse(horasInput ?? '0');
          double precioConsumo = parlante.calcularPrecioConsumo(horas);
          print('El precio por $horas horas de consumo es: $precioConsumo');
        } else {
          print('Parlante no disponible.');
        }
        break;
      case '11':
        print('Saliendo...');
        return;
      default:
        print('Opción no válida.');
    }
  }
}
