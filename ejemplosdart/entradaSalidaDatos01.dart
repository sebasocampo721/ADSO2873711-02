import 'dart:io';

void main (){
// definicion de variables
String? nombre;
//nombre = "juan";
//entrada 
stdout.writeln("ejemplo 01 - entrada/salida de datos");
stdout.write("ingrese su nombre");
nombre = stdin.readLineSync();
// salida algoritmo
print("su nombre es: $nombre");
}