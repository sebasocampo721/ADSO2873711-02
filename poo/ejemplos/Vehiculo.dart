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
  
  //metodo reducir velocdad
  void reducir(int velAvanz){
    int newVelocidad = this.velocidad - velAvanz;
    if (newVelocidad < 0){
      this.velocidad = newVelocidad;
      newVelocidad = 0;
      print("el vehiculo disminuye su veocidad a ${this.velocidad}");
    }
  }
    //metdo parquear
  void estacionar(String lugar){
    this.velocidad = 0;
    print("el vehiculo fue estacionado en $lugar");
  }

  void setColor(String s) {}
}

