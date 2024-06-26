import 'dart:io';
import 'package:dart_console/dart_console.dart';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ Y ESTEBAN REYES - MINI PROYECTO TRIMESTRE 2
  //DECLARACIÓN DE LISTAS
  final console = Console(); //Inicializar la consola
  List<String> temasNombre = [
    "POO",
    "Diferencia entre POO y programación estructurada",
    "Objeto y Clase",
    "Abstracción",
    "Encapsulamiento",
    "Herencia",
    "Polimorfismo",
    "diagramas UML"
  ]; //Lista para guardar todos los temas, tiene temas precargados
  List<String> estudiantes = [
    "ANDRES FELIPE SANCHEZ HURTADO",
  "ANGIE DAHIANA RIOS QUINTERO",
  "CRISTIAN ALVAREZ ARANZAZU",
  "DANIEL ESTIVEN ARBOLEDA DUQUE",
  "DAVID ANDRES MORALES GUAPACHA",
  "DAVID STIVEN OCAMPO LONDOÑO",
  "ESTEBAN REYES AGUDELO",
  "JACOBO GALVIS JIMENEZ",
  "JAIME ANDRES CALLE SALAZAR",
  "JEFERSON MAURICIO HERNANDEZ LADINO",
  "JHON ALEXANDER PINEDA OSORIO",
  "JOSE MIGUEL SIERRA ARISTIZABAL",
  "JOSÉ SEBASTIÁN OCAMPO LÓPEZ",
  "JUAN ANDRES OSORIO GOMEZ",
  "JUAN DIEGO CALVO OSORIO",
  "JUAN ESTEBAN LOPEZ CALLE",
  "JUAN PABLO RIOS ARISTIZABAL",
  "MARIA PAULA MELO SOLANO",
  "MIGUEL ANGEL PEÑA JIMENEZ",
  "SAMUEL CASTAÑO CARDONA",
  "JUAN JOSÉ POSADA PÉREZ",
  "ALEJANDRO SERNA LONDOÑO",
  "JUAN MANUEL ZULUAGA RINCON",
  "JUAN DANIEL GOMEZ LASERNA",
  "YERSON STIVEN HERRERA OBANDO",
  "MATEO HERRERA VARGAS",
  "ALEJANDRO VALLEJO ESCOBAR"
  ]; //Lista para guardar los nombres de los estudiantes
  List<String> estudiantesSinAsignar = [
  "ANDRES FELIPE SANCHEZ HURTADO",
  "ANGIE DAHIANA RIOS QUINTERO",
  "CRISTIAN ALVAREZ ARANZAZU",
  "DANIEL ESTIVEN ARBOLEDA DUQUE",
  "DAVID ANDRES MORALES GUAPACHA",
  "DAVID STIVEN OCAMPO LONDOÑO",
  "ESTEBAN REYES AGUDELO",
  "JACOBO GALVIS JIMENEZ",
  "JAIME ANDRES CALLE SALAZAR",
  "JEFERSON MAURICIO HERNANDEZ LADINO",
  "JHON ALEXANDER PINEDA OSORIO",
  "JOSE MIGUEL SIERRA ARISTIZABAL",
  "JOSÉ SEBASTIÁN OCAMPO LÓPEZ",
  "JUAN ANDRES OSORIO GOMEZ",
  "JUAN DIEGO CALVO OSORIO",
  "JUAN ESTEBAN LOPEZ CALLE",
  "JUAN PABLO RIOS ARISTIZABAL",
  "MARIA PAULA MELO SOLANO",
  "MIGUEL ANGEL PEÑA JIMENEZ",
  "SAMUEL CASTAÑO CARDONA",
  "JUAN JOSÉ POSADA PÉREZ",
  "ALEJANDRO SERNA LONDOÑO",
  "JUAN MANUEL ZULUAGA RINCON",
  "JUAN DANIEL GOMEZ LASERNA",
  "YERSON STIVEN HERRERA OBANDO",
  "MATEO HERRERA VARGAS",
  "ALEJANDRO VALLEJO ESCOBAR"
  ]; //Lista para guardar los estudiantes que no han sido asignados
  List<int> cantEstudiantes = [
    3,
    3,
    3,
    3,
    3,
    4,
    4,
    4
  ]; //Lista para guardar la complejidad de los temas, el número indica la cantidad de estudiantes por tema
  //DECLARACIÓN DE MATRIZ
  List<List<String>> historial =
      []; //Matriz para guardar el historial de las asignaciones
  List<List<dynamic>> asignaciones = [
  ]; //Matriz para guardar las asignaciones con su respectiva cantidad de estudiantes y sus nombres
  //DECLARACIÓN DE VARIABLES
  int opcion, posicion;
  String tema, nombre;
  
  //Se guardarán los temas preestablecidos y una lista de nombres vacía en asignaciones
  for (var i = 0; i < temasNombre.length; i++) {
    asignaciones.add([temasNombre[i], []]);
  }

  //Se guardará la complejidad en asignaciones
  for (var i = 0; i < cantEstudiantes.length; i++) {
    asignaciones[i].add(cantEstudiantes[i]);
  }

  //MENÚ PRINCIPAL
  console.setBackgroundColor(ConsoleColor.blue); // COLOR DE FONDO
  console.setForegroundColor(ConsoleColor.white); // COLOR DE FUENTE
  console.writeLine('BIENVENID@', TextAlignment.center); //ALI8NEACON DE TEXTO
  console.resetColorAttributes(); // terminar
  console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
  console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
  console.writeLine( '1. Manual agregando datos desde cero', TextAlignment.center);
  console.writeLine( '2. Precargado con los datos predeterminados', TextAlignment.center);
  console.resetColorAttributes();
  opcion = int.parse(stdin.readLineSync()!); //Se pide la opcion
  volverIntentar(opcion);
  do {
    console.setBackgroundColor(ConsoleColor.blue); // COLOR DE FONDO
    console.setForegroundColor(ConsoleColor.white); // COLOR DE FUENTE
    console.writeLine('MENÚ PRINCIPAL', TextAlignment.center); //ALI8NEACON DE TEXTO
    console.resetColorAttributes();
    console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
    console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
    console.writeLine('1. Temas', TextAlignment.center);
    console.setForegroundColor(ConsoleColor.red);
    console.writeLine('2. Estudiantes', TextAlignment.center);
    console.setForegroundColor(ConsoleColor.green);
    console.writeLine('3. Complejidad', TextAlignment.center);
    console.setForegroundColor(ConsoleColor.yellow);
    console.writeLine('4. Asignacion', TextAlignment.center);
    console.setForegroundColor(ConsoleColor.magenta);
    console.writeLine('5. Salir', TextAlignment.center);
    console.resetColorAttributes();
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion){
      case 1:
        do{
          console.setBackgroundColor(ConsoleColor.black); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.white); // COLOR DE FUENTE
          console.writeLine('MENÚ TEMAS', TextAlignment.center); //ALINEACON DE TEXTO
          console.resetColorAttributes();
          console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('1. Crear temas', TextAlignment.center);
          console.writeLine('2. Editar temas', TextAlignment.center);
          console.writeLine('3. Eliminar tema', TextAlignment.center);
          console.writeLine('4. Ver temas', TextAlignment.center);
          console.writeLine('5. Salir', TextAlignment.center);
          console.resetColorAttributes();
          opcion = int.parse(stdin.readLineSync()!);
          temasSeccion(opcion, temasNombre, estudiantesSinAsignar, asignaciones);
        }while(opcion != 5);
        break;

      case 2:
        do{
          console.setBackgroundColor(ConsoleColor.red); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.white); // COLOR DE FUENTE
          console.writeLine('MENÚ ESTUDIANTES', TextAlignment.center); //ALINEACON DE TEXTO
          console.resetColorAttributes();
          console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('1. Agregar estudiantes', TextAlignment.center);
          console.writeLine('2. Editar estudiante', TextAlignment.center);
          console.writeLine('3. Eliminar estudiante', TextAlignment.center);
          console.writeLine('4. Ver estudiantes', TextAlignment.center);
          console.writeLine('5. Salir', TextAlignment.center);
          console.resetColorAttributes();
          opcion = int.parse(stdin.readLineSync()!);
          estudiantesSeccion(opcion, estudiantes, estudiantesSinAsignar, asignaciones);
        }while(opcion != 5);
        break;
    }
  } while (opcion != 6);
}

void volverIntentar(int opcion){
  if(opcion != 1 && opcion != 2){
    do {
      opcion = int.parse(stdin.readLineSync()!);
      if (opcion != 1 && opcion != 2) {
        print("Ingrese una opción correcta");
      }
    } while (opcion != 1 && opcion != 2);
  }
}

void posicionIncorrecta(int posicion, List lista){
  if(posicion > lista.length || posicion < 0){
    do {
      print("Ingrese una posición correcta");
      posicion = int.parse(stdin.readLineSync()!);
    } while (posicion > lista.length || posicion < 0);
    
  }
}

void temasSeccion(int opcion, List<String> temasNombre, List<String> estudiantesSinAsignar, List<List<dynamic>> asignaciones){
  String tema;
  switch (opcion) { //MENÚ TEMAS
  //CREAR TEMAS 
    case 1:
      do {
        print("Ingrese el nombre del tema que desea agregar");
        tema = stdin.readLineSync()!;
        temasNombre.add(tema);
        asignaciones.add([tema]);
        print("1. Ingresar nuevo tema");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        volverIntentar(opcion);//funcion para comprobar que ingrese una opción correcta
      } while (opcion != 2);
      break;
  
  //EDITAR TEMAS
    case 2:
      int posicion;
      String nombre;
      do {
        print("Temas actuales:");
        for (var i = 0; i < temasNombre.length; i++) {
          print("${i + 1}. ${temasNombre[i]}");
        }
        print("Ingrese el número del tema que desea editar");
        posicion = int.parse(stdin.readLineSync()!);
        posicionIncorrecta(posicion, temasNombre);
        print("Ingrese el nuevo nombre de el tema: ${temasNombre[posicion - 1]}");
        nombre = stdin.readLineSync()!;
        temasNombre[posicion - 1] = nombre;
        asignaciones[posicion - 1][0] = nombre;
        print("1. Editar otro tema");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        volverIntentar(opcion);
      } while (opcion != 2);
      break;
  
  //ELIMINAR TEMAS
    case 3:
      int posicion;
      String nombre;
      do {
        print("Temas actuales:");
        for (var i = 0; i < temasNombre.length; i++) {
          print("${i + 1}. ${temasNombre[i]}");
        }
        print("Ingrese el número del tema que desea eliminar");
        posicion = int.parse(stdin.readLineSync()!);
        posicionIncorrecta(posicion, temasNombre);
        nombre = temasNombre[posicion - 1];
        temasNombre.removeAt(posicion - 1);
        //Se guardan los nombres en la lista nombres antes de borrar el tema
        if(asignaciones[posicion - 1].length == 3){
          for (var i = 0; i < asignaciones[posicion - 1][1].length; i++) {
            estudiantesSinAsignar.add(asignaciones[posicion - 1][1][i]);
          }
        }
        //Ahora si se puede borrar el tema dentro de la asignación
        asignaciones.removeAt(posicion - 1);
        print("Se eliminó el tema: $nombre");
        print("1. Eliminar otro tema");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        volverIntentar(opcion);
      } while (opcion != 2);
      break;

  //VER TEMAS 
    case 4:
      print("Temas actuales:");
      for (var i = 0; i < temasNombre.length; i++) {
        print("${i + 1}. ${temasNombre[i]}");
      }
      break;
  
  //SALIR
    case 5:
      break;
    default:
      print("Ingrese una opción correcta");
      break;
  }

}
void estudiantesSeccion(int opcion, List<String> estudiantes, List<String> estudiantesSinAsignar, List<List<dynamic>> asignaciones){
  String nombre;
  switch(opcion){
    //AGREGAR ESTUDIANTE
    case 1:
      do{
        print("Ingrese el nombre completo del nuevo estudiante");
        nombre = stdin.readLineSync()!;
        estudiantes.add(nombre);
        estudiantesSinAsignar.add(nombre);
        print("1. Agregar otro estudiante");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        volverIntentar(opcion);
      }while(opcion != 2);
      break;

    //EDITAR ESTUDIANTE
    case 2:
      int posicion;
      do{
        for (var i = 0; i < estudiantes.length; i++) {
          print("${i + 1}. ${estudiantes[i]}");
        }
        print("Ingrese el número del estudiante que desea editar");
        posicion = int.parse(stdin.readLineSync()!);
        posicionIncorrecta(posicion, estudiantes);
        print("Ingrese el nuevo nombre del estudiante: ${estudiantes[posicion - 1]}");
        nombre = stdin.readLineSync()!;
        //Se buscará si el nombre ya está asignado para ser cambiado
        for (var i = 0; i < asignaciones.length; i++) {
          for (var j = 0; j < asignaciones[i][1].length; j++) {
            if(estudiantes[posicion - 1] == asignaciones[i][1][j]){
              asignaciones[i][1][j] = nombre;
            }
          }
        }
        //Se buscará si el nombre no ha sido asignado para ser cambiado
        for (var i = 0; i < estudiantesSinAsignar.length; i++) {
          if(estudiantes[posicion - 1] == estudiantesSinAsignar[i]){
            estudiantesSinAsignar[i] = nombre;
          }
        }
        estudiantes[posicion - 1] = nombre;
        print("1. Editar otro nombre");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        volverIntentar(opcion);
      }while(opcion != 2);
      break;
    
    //ELIMINAR ESTUDIANTE
    case 3:
      int posicion;
      print(asignaciones);
      do{
        for (var i = 0; i < estudiantes.length; i++) {
          print("${i + 1}. ${estudiantes[i]}");
        }
        print("Ingrese el número del estudiante que desea eliminar");
        posicion = int.parse(stdin.readLineSync()!);
        posicionIncorrecta(posicion, estudiantes);
        nombre = estudiantes[posicion - 1];
        //Se buscará si el nombre ya está asignado para ser eliminado
        for (var i = 0; i < asignaciones.length; i++) {
          if(asignaciones[i][1].length > 0){
            for (var j = 0; j < asignaciones[i][1].length; j++) {
              if(estudiantes[posicion - 1] == asignaciones[i][1][j]){
                asignaciones[i][1].removeAt(j);
              }
            }
          }
        }
        //Se buscará si el nombre no ha sido asignado para ser eliminado
        for (var i = 0; i < estudiantesSinAsignar.length; i++) {
          if(estudiantes[posicion - 1] == estudiantesSinAsignar[i]){
            estudiantesSinAsignar.removeAt(i);
          }
        }
        estudiantes.removeAt(posicion - 1);
        print("Ha sido eliminado el estudiante: $nombre");
        print("1. Eliminar otro nombre");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        volverIntentar(opcion);
      }while(opcion != 2);
      break;

      //VER ESTUDIANTES
      case 4:
        print("Temas actuales:");
        for (var i = 0; i < estudiantes.length; i++) {
          print("${i + 1}. ${estudiantes[i]}");
        }
        break;
      
      //SALIR
      case 5:
        break;
      
      default:
        print("Ingrese una opcion correcta");
        break;
  }
}