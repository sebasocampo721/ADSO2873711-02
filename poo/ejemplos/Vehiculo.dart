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
    int newVelocidad = this.velocidad + velAvanz;
    if (newVelocidad <= 200){
      this.velocidad= this.velocidad+velAvanz;
      print("el vehiculo avanza a ${this.velocidad}");
    }else{
      print("no puede superar el limite de 200 km/h");
    }

    this.velocidad=this.velocidad+velAvanz;
    print("el vehiculo avanza a ${this.velocidad}");
  }

  // metodos SET  y GET
  //setea o asigna un nuevo valor para el atributo color 
   void setcolor(String newcolor){
    this.color=newcolor;
   }
   //permite obtener el valor del atributo color 
   String getcolor(){
    return this.color;
   }
   int getvelocidad(){
    return this.velocidad;
   }
   int setvelocidad(){
    return this.velocidad;
   }
   double settamanio(){
    return this.tamanio;
   }
   double gettamanio(){
    return this.tamanio;
   }



  //metodo detenerse
  void detenerse(){
    velocidad=0;
    print("el vehiculo se detiene");
  }
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
    int newVelocidad = this.velocidad + velAvanz;
    if (newVelocidad <= 200){
      this.velocidad= this.velocidad+velAvanz;
      print("el vehiculo avanza a ${this.velocidad}");
    }else{
      print("no puede superar el limite de 200 km/h");
    }

    this.velocidad=this.velocidad+velAvanz;
    print("el vehiculo avanza a ${this.velocidad}");
  }
  //metodo detenerse
  void detenerse(){
    velocidad=0;
    print("el vehiculo se detiene");
  }
  void reducir(int velDisminuye){
    int newVelocidad = this.velocidad - velDisminuye;
    if (newVelocidad < 0){
      print("la velocidad no puede ser menor acero");
    }else{
      print("el vehiculo disminuyo ${newVelocidad}");
    }
}
}

  void reducir(int velDisminuye){
    int newVelocidad = this.velocidad - velDisminuye;
    if (newVelocidad < 0){
      print("la velocidad no puede ser menor acero");
    }else{
      print("el vehiculo disminuyo ${newVelocidad}");
    }
}

}
