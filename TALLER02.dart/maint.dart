import 'dart:io';
import 'discoDuro.dart';
import 'marcador.dart';
import 'parlante.dart';
import 'portatil.dart';
import 'producto.dart';

void main() {
  var productos = <Producto>[];

  while (true) {
    print("""
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
        
        break;

      case 2:
        
        break;

      case 3:
        
        break;

      case 4:
       
        break;

      case 5:
       
        break;

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
        print("Saliendo");
        return;

      default:
        print("Opción no válida. ");
    }
  }
}
