import 'dart:io';

void main(List<String> args) {
  sumar();
  sumareficiente(4, 3);
  saludar("sebas", "m");
  saludar("luisa", "f");
  List<String>frutas=["mango", "pera", "uva"];
  List<String>nombres=["juan", "ana", "eva"];
  mostraLista(frutas);
  print("*"*50);
  mostrarLista(nombres, "nombre");
  double multi= multiplicacion(3, 5);
  print("la multiplicacion es $multi");

}
double multiplicacion(double num1, double num2){
double multiplicacion = num1 * num2;
return multiplicacion;
}
void lista(List<String>lista, String nombre){
  for(var i=0; i<lista.length; i++){
  print("nombre#${i+1}"lista[i]);
  }
}
void saludar(String nombre, String genero){
  if (genero=="m"){
    print("hola querido $nombre");
  }else{
    print("hola querida $nombre");
  }
  
}
void sumareficiente(int num1, int num2){
  int suma;
  suma=num1+num2;
  print("la suma es $suma");
}
void sumar(){
  int a, b, c;
  a=5;
  b=3;
  c=a+b;
  print("la suma es $c");
}