void main(List<String> args) {
  //deficnicion y asignacion de lista vacia
  List<int> numeros1 = [];
  //definicion lista con el elemento
  List<int> pesos = [65, 75, 70, 48, 65, 55, 48];
  List<String> frutas = ['manzanas', 'pera', 'fresa'];
  List<bool> estados = [true, false, false, true];
  List<double> estaturas = [1.65, 1.52, 1.55, 1.80];
  //definicion de listas dinamicas
  List<dynamic> listDynamic = [30, 4.5, 'pepe', true, ['mango', 'mora', frutas], pesos];


  // iacceder a los elementos 
  print( pesos);
  print(frutas);
  print(estados);
  print(estaturas);
  print(listDynamic);
  print(frutas[1]);//pera
  print(pesos [5]);//55
  print(listDynamic [2]); //pepe
  print(listDynamic [4] [2]); //fresa
  print(listDynamic [4] [2] [0]);//manzana

}