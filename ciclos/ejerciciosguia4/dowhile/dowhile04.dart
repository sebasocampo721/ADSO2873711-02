import 'dart:io';
void main(List<String> args) {
  //sebastian oacampo - eje do do while 04
  /*1.Un censador recopila ciertos datos aplicando encuestas para el último Censo Nacional de Población y Vivienda. Desea obtener de todas las personas que alcance a encuestar en un día, que porcentaje tiene  estudios  de  primaria,  secundaria,  carrera  técnica,  estudios  profesionales  y  estudios  de posgrado.El programa debe preguntar si se desea continuar ingresando datos.
  */
  // definicion variables
    int totalEncuestados = 0;
  int primaria = 0;
  int secundaria = 0;
  int carreraTecnica = 0;
  int estudiosProfesionales = 0;
  int posgrado = 0;
  String nivelEducacion; 
  String continuar;
  do {
    totalEncuestados++;
    stdout.write("Ingrese nivel de educación (primaria/secundaria/carrera técnica/estudios profesionales/posgrado): ");
    nivelEducacion = stdin.readLineSync()!.toLowerCase();

    switch (nivelEducacion) {
      case "primaria":
        primaria++;
        break;
      case "secundaria":
        secundaria++;
        break;
      case "carrera técnica":
        carreraTecnica++;
        break;
      case "estudios profesionales":
        estudiosProfesionales++;
        break;
      case "posgrado":
        posgrado++;
        break;
      default:
        print("Nivel de educación no válido.");
        totalEncuestados--; // Descuenta esta encuesta incorrecta
        break;
    }

    stdout.write("¿Desea continuar ingresando datos? (s/n): ");
    continuar = stdin.readLineSync()!.toLowerCase();
  } while (continuar == 's');

  double porcentajePrimaria = (primaria / totalEncuestados) * 100;
  double porcentajeSecundaria = (secundaria / totalEncuestados) * 100;
  double porcentajeCarreraTecnica = (carreraTecnica / totalEncuestados) * 100;
  double porcentajeEstudiosProfesionales = (estudiosProfesionales / totalEncuestados) * 100;
  double porcentajePosgrado = (posgrado / totalEncuestados) * 100;

  print("\nResultados de la encuesta:");
  print("Total de personas encuestadas: $totalEncuestados");
  print("Porcentaje de personas con educación primaria: $porcentajePrimaria%");
  print("Porcentaje de personas con educación secundaria: $porcentajeSecundaria%");
  print("Porcentaje de personas con carrera técnica: $porcentajeCarreraTecnica%");
  print("Porcentaje de personas con estudios profesionales: $porcentajeEstudiosProfesionales%");
  print("Porcentaje de personas con estudios de posgrado: $porcentajePosgrado%");
}



