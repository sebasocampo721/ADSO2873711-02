import 'dart:ffi';

class Vehiculo {
  String color;
  int velocidad;
  double tamanio;

  //  Vehiculo ( String col, int vel, double tam)
  // {
  //   this.color = col;
  //   this. velocidad = vel;
  //   this.tamanio = tam;
  // } 
  Vehiculo (this.color, this.velocidad, this.tamanio) {}

  //Metodos SET Y GET 
  //Setea o asigna un nuevo valor para el atributo color 
  void setColor(String newColor) {
    this.color = newColor;
  }
  //Permite obtener el valor del atributo color
  String getColor() {
    return this.color;
  }

  void setVelocidad(int newVelocidad) {
    this.velocidad = newVelocidad;
  }

  int getVelocidad() {
    return this.velocidad;
  }

  void setTamanio(double newTamanio) {
    this.tamanio = newTamanio;
  }

  double getTamanio() {
    return this.tamanio;
  }
  
  //Metodo avanzar
  void avanzar(int velAvanza) {
    int newVelocidad = this.velocidad + velAvanza;
    if (newVelocidad <= 200) {
      this.velocidad = this.velocidad + velAvanza;
      print("El vehiculo avanza a ${this.velocidad}");
    } else {
      print("No pudo superar el limte de 200 Km/h");
    }

  }
  //Metodo detenerse 
  void detenerse() {
    velocidad = 0;
    print("El vehiculo se detuvo");
  }
  //Metodo Disminuir Velocidad
  void DisminuirVelocidad(int velDisminuye) {
     int newVelocidad = this.velocidad - velDisminuye;
    if (newVelocidad < 0) {
      newVelocidad = 0;
    }
    this.velocidad = newVelocidad; 
    print("Vehiculo disminuyó a ${this.velocidad}");
  }
  //Metodo Parquear
}