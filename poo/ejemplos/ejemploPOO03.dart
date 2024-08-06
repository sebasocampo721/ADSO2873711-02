class Vehiculo {
  String color;
  int velocidad;
  double tamanio;
  // Vehiculo (String col, int vel, double tam){
  //   this.color= col;
  //   this.velocidad=vel;
  //   this.tamanio=tam;
  // }

// constructor clase vehculo
  Vehiculo (this.color, this.velocidad, this.tamanio){}
  //metodo avanzar
  void avanzar(int velAvanz){
    this.velocidad=this.velocidad+velAvanz;
    print("el vehiculo avanza a ${this.velocidad}");
  }
  //metodo detenerse
  void detenerse(){
    velocidad=0;
    print("el vehiculo se detiene");
  }
}
void main(List<String>args){
  Vehiculo mivehiculo1;
  mivehiculo1= Vehiculo("blanco", 30, 35);
  mivehiculo1.avanzar(60);
  mivehiculo1.avanzar(70);
  mivehiculo1.detenerse();
  //******************** */
  Vehiculo mivehiculo2= Vehiculo("negro", 10, 4.5);
  mivehiculo2.avanzar(50);
  mivehiculo2.detenerse();
  //******************** */
  mivehiculo1.avanzar(40);
}