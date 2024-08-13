import 'Evento.dart';
void main(List<String> args) {
  //DateTime fecha = DateTime(2024, 8, 13);
  Evento evento1 = new Evento("campeonato", 30, DateTime(2024,8,13,10,30));

  String nombre = evento1.getnombre();
  print(nombre);
  evento1.setnombre("campeonato SENA - CPIC");
  nombre=evento1.getnombre();
  print(nombre);

  print(evento1.getfechaevento());
  evento1.mostrarinformacion();
}