
import 'dart:io';

void main(List<String> args) {
  //sebastian oacampo - eje do do while 02
  /*1.Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje tiene  estudios  de  primaria,  secundaria,  carrera  técnica,  estudios  profesionales  y  estudios  de posgrado.El programa debe preguntar si se desea continuar ingresando datos.
  */
  // definicion variables
   int primaria,  secundaria,  carreratécnica,  estudiosprofesionales,  estudiosposgrado;
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


