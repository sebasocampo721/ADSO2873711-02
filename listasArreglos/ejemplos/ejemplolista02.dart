void main(List<String> args) {
  List<int> numeros = [1,2,3,4,5,6,7,8,910];
  //modificar elementos de una lista/ arreglo - vector
  numeros [3] = 20;
  numeros [9] = 30;
  print(numeros);
  //propiedad lengh
  print("tamaño lista: ${numeros.length}");
  print("ultimo elemento: ${numeros[numeros.length -1]}");
  print("ultimo elemento: ${numeros.last}");
  //metodos add() - remove() - removeat()
  List<int> numeros2 = [1,2,3,4,5,6,7,8,9,10];
  print(numeros2);
  numeros2.remove(5);
  print(numeros2);
  print(numeros2 [4]);
  numeros2.removeAt(1);
  print(numeros2);

}