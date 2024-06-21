import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ Y ESTEBAN REYES - MINI PROYECTO TRIMESTRE 2
  //DECLARACIÓN DE LISTAS
  List<String> temas = [
    "Suma",
    "Resta",
    "División",
    "Multiplicación",
    "Raiz cuadrada",
    "Potenciación"
  ]; //Lista para guardar todos los temas, tiene temas precargados
  List<String> estudiantes = [
    "Esteban Reyes",
    "Juan Daniel Gómez",
    "Sebas Ocampo",
    "Juan Andres Osorio",
    "Juan Manuel Zuluaga",
    "Miguel Peña",
    "Jose Miguel Sierra",
    "Alejandro Serna"
  ]; //Lista para guardar los nombres de los estudiantes
  List<int> cantEstudiantes = [
    1,
    1,
    1,
    1,
    2,
    2
  ]; //Lista para guardar la complejidad de los temas, el número indica la cantidad de estudiantes por tema
  //DECLARACIÓN DE MATRIZ
  List<List<String>> asignacion =
      []; //Matriz que guardará las listas de los estudiantes por tema
  List<List<String>> historial =
      []; //Matriz para guardar el historial de las asignaciones
  //DECLARACIÓN DE VARIABLES
  int opcion, posicion;
  String tema, nombre;
  //MENÚ PRINCIPAL
  do {
    //No terminará hasta que ingrese una opción correcta
    print("-----------------MENÚ-----------------");
    print("1. Manual agregando datos desde cero");
    print("2. Precargado con los datos predeterminados");
    opcion = int.parse(stdin.readLineSync()!); //Se pide la opcion
    if (opcion != 1 && opcion != 2) {
      print("Opción incorrecta");
    } else if (opcion == 1) {
      temas = [];
      estudiantes = [];
      cantEstudiantes = [];
    }
  } while (opcion != 1 && opcion != 2);
  do {
    print("-----------------SUB-MENÚ-----------------");
    print("1. Temas");
    print("2. Estudiantes");
    print("3. Complejidad");
    print("4. Asignacion");
    print("5. Mostrar Historial");
    print("6. Salir");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1: //TEMAS
        do {
          print("-----Temas-----");
          print("1. Crear temas");
          print("2. Editar temas");
          print("3. Eliminar tema");
          print("4. Ver temas");
          print("5. Salir");
          opcion = int.parse(stdin.readLineSync()!);
          switch (opcion) {
            //MENÚ TEMAS
            case 1:
              do {
                print("Ingrese el nombre del tema que desea agregar");
                tema = stdin.readLineSync()!;
                temas.add(tema);
                print("1. Ingresar nuevo tema");
                print("2. Salir");
                do {
                  opcion = int.parse(stdin.readLineSync()!);
                  if (opcion != 1 && opcion != 2) {
                    print("Ingrese una opción correcta");
                  }
                } while (opcion != 1 && opcion != 2);
              } while (opcion != 2);
              break;

            case 2:
              do {
                print("Temas actuales:");
                for (var i = 0; i < temas.length; i++) {
                  print("${i + 1}. ${temas[i]}");
                }
                print("Ingrese el número del tema que desea editar");
                posicion = int.parse(stdin.readLineSync()!);
                print(
                    "Ingrese el nuevo nombre de el tema: ${temas[posicion - 1]}");
                nombre = stdin.readLineSync()!;
                temas[posicion - 1] = nombre;
                print("1. Editar otro tema");
                print("2. Salir");
                do {
                  opcion = int.parse(stdin.readLineSync()!);
                  if (opcion != 1 && opcion != 2) {
                    print("Ingrese una opción correcta");
                  }
                } while (opcion != 1 && opcion != 2);
              } while (opcion != 2);
              break;

            case 3:
              do {
                print("Temas actuales:");
                for (var i = 0; i < temas.length; i++) {
                  print("${i + 1}. ${temas[i]}");
                }
                print("Ingrese el número del tema que desea eliminar");
                posicion = int.parse(stdin.readLineSync()!);
                do {
                  if (posicion > temas.length || posicion <= 0) {
                    print("Ingrese una posición correcta");
                    posicion = int.parse(stdin.readLineSync()!);
                  }
                } while (posicion > temas.length || posicion <= 0);
                nombre = temas[posicion - 1];
                temas.removeAt(posicion - 1);
                cantEstudiantes.removeAt(posicion - 1);
                asignacion.removeAt(posicion - 1);
                print("Se eliminó el tema: $nombre");
                print("1. Eliminar otro tema");
                print("2. Salir");
                do {
                  opcion = int.parse(stdin.readLineSync()!);
                  if (opcion != 1 && opcion != 2) {
                    print("Ingrese una opción correcta");
                  }
                } while (opcion != 1 && opcion != 2);
              } while (opcion != 2);
            case 4:
              print("Temas actuales:");
              for (var i = 0; i < temas.length; i++) {
                print("${i + 1}. ${temas[i]}");
              }
              break;
            case 5:
              break;
            default:
              print("Ingrese una opción correcta");
              break;
          }
        } while (opcion != 5);
        break;
    }
  } while (opcion != 6);
}