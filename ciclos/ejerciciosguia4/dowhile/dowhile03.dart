import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje do do while 03
  /*1.En la Cámara de Diputados se levanta una encuesta con todos los integrantes con el fin de determinar que porcentaje de los n diputados esta a favor del Tratado de Libre Comercio, que porcentaje esta en contra y que porcentaje se abstiene de opinar.El programa debe preguntar si se desea continuar ingresando datos.
  */
  // definicion variables
   int  afavor=0, encontra=0,  totalvotos=0;
   double porcentajefavor, porcentajecontra;
   String? opciontratado, opcion;
  do{
    print("señor diputado esta a favor del tratado? (f) (c)");
    opciontratado=stdin.readLineSync();
    if (opciontratado?.toUpperCase()=="F"){
      afavor++;
      totalvotos++;
    }else if (opciontratado?.toUpperCase()== "C"){
      encontra++;
      totalvotos++;
    }else{
      print("voto nulo");
    }
    print("hasta el momento van $totalvotos votos");
    print("desea ingresar otro diputado? (si) (no)");
    opcion=stdin.readLineSync();
  } while (opcion!.toLowerCase() != "no");
    porcentajefavor=(afavor*100);
    porcentajecontra=(encontra*100);
    print("el procentaje de diputados que estan a favor es: $porcentajefavor");
    print("el procentaje de diputados que estan en contra es: $porcentajecontra");
}
