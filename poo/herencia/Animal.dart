

class Animal {
  String color;
  String especies;
  double tamanio;
  Animal(this.color, this.especies, this.tamanio);

  void hacersonido(){
  print("el animal hace un sonido");
  }

}


//la clase perro hereda de animal
class Perro extends Animal {
  String raza;
  Perro(this.raza, colorusu, especieusu, tamausu):super(colorusu, especieusu, tamausu);
  @override // se sobre escribe el metodo de padre
  void hacersonido(){
    print("el perro ladra");
  }
  void mostrarinfo(){
print("""
      especie:$especies,
      color:$color,
      tamaño:$tamanio,
      raza:$raza
      """);
}
}

class Gato extends Animal {
  bool estavacunado;
  Gato(this.estavacunado, colorusu, especieusu, tamausu):super(colorusu, especieusu, tamausu);

  @override // se sobre escribe el metodo de padre
  void hacersonido(){
  print("el gato maulla");
}
void mostrarinfo(){
print("""
      especie:$especies,
      color:$color,
      tamaño:$tamanio,
      esta vacunado:${estavacunado ? "si":"no"}
      """);
  }
}

void main(List<String> args) {
  Perro mydog = Perro("pitbull", "negro", "canino", 20.0);
  mydog.hacersonido();
  mydog.mostrarinfo();
  Gato mycat= Gato(false, "blanco", "felino", 10.0);
  mycat.hacersonido();
  mycat.mostrarinfo();
}
