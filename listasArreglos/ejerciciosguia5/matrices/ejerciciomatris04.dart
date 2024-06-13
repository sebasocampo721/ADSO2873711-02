import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje  doble 4
  /*La escuela Ignacio Barrera, desea que le desarrolles un juego para sus alumnos de primaria. El juego se llama "cuadro mágico", un cuadro mágico es aquel en que la suma de cada fila, la suma de cada columna y la suma de las diagonales es exactamente igual. El cuadro mágico es de dos dimensiones.Desarrollar un programa que pida al usuario las dimensiones deseadas para  el cuadro mágico (un arreglo  de  dos  dimensiones)  en  forma  de  cuadro  y  luego  le  pida  los  datos  para  llenar  el  arreglo. Después  el  programa  debe  calcular  la  suma  de  cada  fila,  de  cada columna  y  de  cada  diagonal  del cuadro,  si  todas  las  sumas  son  iguales  entonces  le  deberás  de  indicar  por  medio  de  un  mensaje "Felicidades  creaste  un  cuadro  mágico",  de  lo  contrario  le  deberás  de  decir  el  siguiente  mensaje: "Modifica los números en el cuadro para que lo hagas mágico".
  */
  // definicion variables

  print('Ingrese el número de filas del cuadro:');
  int filas = int.parse(stdin.readLineSync()!);
  print('Ingrese el número de columnas del cuadro:');
  int columnas = int.parse(stdin.readLineSync()!);

  // Crear el cuadro mágico como una lista de listas
  List<List<int>> cuadroMagico = List.generate(filas, (_) => List.filled(columnas, 0));

  // Solicitar al usuario los datos para llenar el cuadro
  for (int i = 0; i < filas; i++) {
    for (int j = 0; j < columnas; j++) {
      print('Ingrese el valor para la posición [$i][$j]:');
      cuadroMagico[i][j] = int.parse(stdin.readLineSync()!);
    }
  }

  // Calcular la suma de cada fila, cada columna y cada diagonal
  int sumaPrincipal = 0;
  int sumaSecundaria = 0;
  bool esCuadroMagico = true;

  for (int i = 0; i < filas; i++) {
    int sumaFila = 0;
    int sumaColumna = 0;
    for (int j = 0; j < columnas; j++) {
      sumaFila += cuadroMagico[i][j];
      sumaColumna += cuadroMagico[j][i];
      if (i == j) {
        sumaPrincipal += cuadroMagico[i][j];
      }
      if (i + j == filas - 1) {
        sumaSecundaria += cuadroMagico[i][j];
      }
    }
    if (i == 0) {
      sumaPrincipal = sumaFila;
    }
    if (sumaFila != sumaPrincipal || sumaColumna != sumaPrincipal) {
      esCuadroMagico = false;
      break;
    }
  }

  // Verificar si es un cuadro mágico
  if (esCuadroMagico && sumaPrincipal == sumaSecundaria) {
    print('¡Felicidades! Has creado un cuadro mágico.');
  } else {
    print('Modifica los números en el cuadro para que lo hagas mágico.');
  }
}