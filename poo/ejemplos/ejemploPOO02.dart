import 'dart:ffi';
import 'dart:io';

class Persona {
  //atributos
  String nombre;
  String genero;
  int edad;
  double peso;

  //construtor: funcion que se ejecuta cuando se crea un objeto de la clase
  //se crea un objeto de la clase
  Persona(this.nombre, this.genero, this.edad,  this.peso);

  void hablar(){
    print("la persona ${this.nombre} interactua");
  }
  void comer(){
    print("la persona ${this.nombre} come");
  }
  void edadpersona(){
    print("la persona ${this.nombre} años");
  }
  void mostrarInformacion(){
    print("la persona ${this.nombre}, es de genero ${this.genero}, tine ${this.edad} años y pesa ${this.edad} kg ");
  }

  getedad(int edadNueva) {}

  getnombre(String nombreNuevo) {}
  
} //fin clase
 
 void main(List<String> args){
  //creamos el objeto de la clase perro
  Persona persona1; //vble tipo perro (clase)
  persona1 = Persona("sebas", "M", 20, 56);
  persona1.hablar();
  persona1.comer();
  persona1.edadpersona();
  persona1.mostrarInformacion();

  /****************************/
  print("*"*30);
  Persona persona2 = Persona("luisa", "F", 19, 55);
  persona2.hablar();
  persona2.comer();
  persona2.edadpersona();
  persona2.mostrarInformacion();

  
  /****************************/
  print("*"*30);
  String nombrepersona;
  String generopersona;
  int edadpersona;
  double pesopersona;
  print("digite el nombre ");
  nombrepersona = stdin.readLineSync()!;
  print("digite el genero ");
  generopersona = stdin.readLineSync()!;
  print("digite la fecha de nacimiento ");
  edadpersona = int.parse(stdin.readLineSync()!);
  print("digite el peso ");
  pesopersona = double.parse(stdin.readLineSync()!);
  Persona persona3 = Persona(nombrepersona, generopersona, edadpersona, pesopersona);
  persona2.hablar();
  persona2.comer();
  persona2.edadpersona();
  persona3.mostrarInformacion();

  print("*"*30);
  String nombrepersona2 = "sara";
  String generopersona2 = "M";
  int edadpersona2 = 22;
  double pesopersona2 = 58;
  Persona persona4 = Persona(nombrepersona, generopersona, edadpersona, pesopersona);
  persona2.hablar();
  persona2.comer();
  persona2.edadpersona();
  persona3.mostrarInformacion();
 }
 