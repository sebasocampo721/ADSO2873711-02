import 'dart:io';

class Perro {
  //atributos
  String nombre;
  String raza;
  double peso;

  //construtor: funcion que se ejecuta cuando se crea un objeto de la clase
  //se crea un objeto de la clase
  Perro(this.nombre, this.raza, this.peso);

  void correr(){
    print("el perro ${this.nombre} corre");
  }
  void ladrar(){
    print("el perro ${this.nombre} ladra");
  }
  void dormir(){
    print("el perro ${this.nombre} duerme");
  }
  void mostrarInformacion(){
    print("el perro ${this.nombre}, es de raza ${this.raza} y pesa ${this.peso} kg");
  }
  
} //fin clase
 
 void main(List<String> args){
  //creamos el objeto de la clase perro
  Perro perro1; //vble tipo perro (clase)
  perro1 = Perro("firu", "pitbull", 30.5);
  perro1.correr();
  perro1.ladrar();
  perro1.dormir();
  perro1.mostrarInformacion();

  /****************************/
  print("*"*30);
  Perro perro2 = Perro("max", "pincher", 4.5);
  perro2.correr();
  perro2.ladrar();
  perro2.dormir();
  perro2.mostrarInformacion();

  
  /****************************/
  print("*"*30);
  String nombreperro;
  String razaperro;
  double pesoperro;
  print("digite el nombre del perro");
  nombreperro = stdin.readLineSync()!;
  print("digite la raza del perro");
  razaperro = stdin.readLineSync()!;
  print("digite el peso del perro");
  pesoperro = double.parse(stdin.readLineSync()!);
  Perro perro3 = Perro(nombreperro, razaperro, pesoperro);
  perro3.correr();
  perro3.ladrar();
  perro3.dormir();
  perro3.mostrarInformacion();

  print("*"*30);
  String nombreperro2="lulu";
  String razaperro2= "bugdog";
  double pesoperro2= 5.3;
  Perro perro4 = Perro(nombreperro, razaperro, pesoperro);
  perro3.correr();
  perro3.ladrar();
  perro3.dormir();
  perro3.mostrarInformacion();
 }
 