import 'dart:io';
import 'package:dart_console/dart_console.dart';
import 'dart:math';

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
  List<List<dynamic>> asignaciones = []; //Matriz para guardar las asignaciones con su respectiva cantidad de estudiantes y sus nombres
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
  opcion = volverIntentar(opcion);
  if(opcion == 1){
    temasNombre = [];
    estudiantes = [];
    estudiantesSinAsignar = [];
    cantEstudiantes = [];
    asignaciones = [];
  }
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
    console.writeLine('0. Salir', TextAlignment.center);
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
      
      case 3:
        do {
          console.setBackgroundColor(ConsoleColor.green); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.white); // COLOR DE FUENTE
          console.writeLine('MENÚ CANTIDAD ESTUDIANTES', TextAlignment.center); //ALINEACON DE TEXTO
          console.resetColorAttributes();
          console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('1. Insertar cantidad de estudiantes', TextAlignment.center);
          console.writeLine('2. Editar cantidad de estudiantes', TextAlignment.center);
          console.writeLine('3. Ver cantidad de estudiantes', TextAlignment.center);
          console.writeLine('4. Salir', TextAlignment.center);
          console.resetColorAttributes();
          opcion = int.parse(stdin.readLineSync()!);
          cantEstudiantesSeccion(opcion,temasNombre, asignaciones);
        } while (opcion != 4);
        break;
      
      case 4:
        do {
          console.setBackgroundColor(ConsoleColor.yellow); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('MENÚ ASIGNACION', TextAlignment.center); //ALINEACON DE TEXTO
          console.resetColorAttributes();
          console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('1. Asignar por Tema', TextAlignment.center);
          console.writeLine('2. Editar Asignacion', TextAlignment.center);
          console.writeLine('3. Eliminar Asignacion', TextAlignment.center);
          console.writeLine('4. Mostrar Asignaciones', TextAlignment.center);
          console.writeLine('5. Asignar Todo', TextAlignment.center);
          console.writeLine('6. Salir', TextAlignment.center);
          console.resetColorAttributes();
          opcion = int.parse(stdin.readLineSync()!);
          int suma = 0;
          for (var i = 0; i < asignaciones.length; i++) {
            int numero = asignaciones[i][2];
            suma += numero;
          }
          if(suma < estudiantes.length){
            print("Falta agregar ${estudiantes.length - suma} estudiantes");
            print("Vuelva a complejidad y solucione este problema");
            opcion = 5;
          }else if(suma > estudiantes.length){
            print("Sobran ${suma - estudiantes.length} estudiantes");
            print("Vuelva a complejidad y solucione este problema");
            opcion = 5;
          }
          asignacionSeccion(asignaciones, estudiantes, temasNombre, estudiantesSinAsignar, opcion);
        } while (opcion != 6);
        break;
      
      case 0:
        print("Hasta luego");
        break;
      
      default:
        print("ingrese una opción correcta");
        break;
    }
  } while (opcion != 0);
}

int volverIntentar(int opcion){
  if(opcion != 1 && opcion != 2){
    do {
      if (opcion != 1 && opcion != 2) {
        print("Ingrese una opción correcta");
        opcion = int.parse(stdin.readLineSync()!);
      }
    } while (opcion != 1 && opcion != 2);
  }
  return opcion;
}


int posicionIncorrecta(int posicion, List lista){
  if(posicion > lista.length || posicion <= 0){
    do {
      print("Ingrese una posición correcta");
      posicion = int.parse(stdin.readLineSync()!);
    } while (posicion > lista.length || posicion < 0);
  }
  return posicion;
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
        asignaciones.add([tema, [], 0]);
        print("1. Ingresar nuevo tema");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);//funcion para comprobar que ingrese una opción correcta
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
        posicion = posicionIncorrecta(posicion, temasNombre);
        print("Ingrese el nuevo nombre de el tema: ${temasNombre[posicion - 1]}");
        nombre = stdin.readLineSync()!;
        temasNombre[posicion - 1] = nombre;
        asignaciones[posicion - 1][0] = nombre;
        print("1. Editar otro tema");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);
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
        posicion = posicionIncorrecta(posicion, temasNombre);
        nombre = temasNombre[posicion - 1];
        temasNombre.removeAt(posicion - 1);
        //Se guardan los nombres en la lista nombres antes de borrar el tema
        if(asignaciones[posicion - 1][1].length > 0){
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
        opcion = volverIntentar(opcion);
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
        opcion = volverIntentar(opcion);
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
        posicion = posicionIncorrecta(posicion, estudiantes);
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
        opcion = volverIntentar(opcion);
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
        posicion = posicionIncorrecta(posicion, estudiantes);
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
        opcion = volverIntentar(opcion);
      }while(opcion != 2);
      break;

      //VER ESTUDIANTES
      case 4:
        print("1. Ver estudiantes sin asignar");
        print("2. Ver todos los estudiantes");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);
        if(opcion == 1){
          print("Estudiantes sin asignar:");
          for (var i = 0; i < estudiantesSinAsignar.length; i++) {
            print("${i + 1}. ${estudiantes[i]}");
          }
        }else{
          print("Todos los estudiantes:");
          for (var i = 0; i < estudiantes.length; i++) {
            print("${i + 1}. ${estudiantes[i]}");
          }
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

void cantEstudiantesSeccion(int opcion, List<String> temasNombre, List<List<dynamic>> asignaciones){
  int complejidad, posicion;
    switch(opcion){
      //INSERTAR CANTIDAD ESTUDIANTES
      case 1:
        do{
          for (var i = 0; i < temasNombre.length; i++) {
            print("${i + 1}. ${temasNombre[i]} -> ${asignaciones[i][2]}");
          }
          print("Ingrese el tema al que le quiere ingresar la cantidad de estudiantes");
          posicion = int.parse(stdin.readLineSync()!);
          posicion = posicion = posicionIncorrecta(posicion, temasNombre);
          //Comprobar si ya tiene una cantidad asignada
          if(asignaciones[posicion - 1][2] > 0){
            print("Este tema ya tiene una cantidad de estudiantes asignado, ¿desea asignarlo nuevamente?");
            print("1. Sí");
            print("2. no");
            opcion = int.parse(stdin.readLineSync()!);
            opcion = volverIntentar(opcion);
            if(opcion == 1){
              print("Ingrese cuantos estudiantes va a tener este tema");
              complejidad = int.parse(stdin.readLineSync()!);
              if(complejidad < 0){
              do {
                print("Ingrese un número positivo");
                complejidad = int.parse(stdin.readLineSync()!);
              } while (complejidad < 0);
            }
              asignaciones[posicion - 1][2] = complejidad;
            }
          }else{
            print("Ingrese cuantos estudiantes va a tener este tema");
            complejidad = int.parse(stdin.readLineSync()!);
            if(complejidad < 0){
              do {
                print("Ingrese un número positivo");
                complejidad = int.parse(stdin.readLineSync()!);
              } while (complejidad < 0);
            }
            asignaciones[posicion - 1][2] = complejidad;
          }
          print("El tema ${temasNombre[posicion - 1]} ha sido asignado con ${asignaciones[posicion - 1][2]} estudiantes");
          print("1. Agregar otra asignación");
          print("2. Salir");
          opcion = int.parse(stdin.readLineSync()!);
          opcion = volverIntentar(opcion);
      }while(opcion != 2);
      break;
    
    //EDITAR CANTIDAD ESTUDIANTES
    case 2:
      do{
        for (var i = 0; i < temasNombre.length; i++) {
            print("${i + 1}. ${temasNombre[i]} -> ${asignaciones[i][2]}");
        }
        print("Ingrese el tema al que le quiere le quiere cambiar la cantidad de estudiantes");
        posicion = int.parse(stdin.readLineSync()!);
        posicion = posicionIncorrecta(posicion, temasNombre);
        print("Ingrese la cantidad de estudiantes que va a tener");
        complejidad = int.parse(stdin.readLineSync()!);
        if(complejidad < 0){
          do {
            print("Ingrese un número positivo");
            complejidad = int.parse(stdin.readLineSync()!);
          } while (complejidad < 0);
        }
        asignaciones[posicion - 1][2] = complejidad;
        print("El tema ${temasNombre[posicion - 1]} ha sido asignado con ${asignaciones[posicion - 1][2]} estudiantes");
        print("1. Agregar otra asignación");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);
      }while(opcion != 2);
      break;

    case 3:
      for (var i = 0; i < temasNombre.length; i++) {
        print("${i + 1}. ${temasNombre[i]} -> ${asignaciones[i][2]}");
      }
      break;
    
    case 4:
      break;
    
    default:
      print("Ingrese una opción correcta");
      break;
  }
}

void asignacionSeccion(List<List<dynamic>> asignaciones, List<String> estudiantes,List<String> temasNombre,List<String> estudiantesSinAsignar, int opcion){
  int posicion;
  int suma = 0;
  int elegido;
  //Se inicializa random
  Random random = Random();
  switch(opcion){
    //ASIGNAR POR TEMAS
    case 1:
      do{
        for (var i = 0; i < temasNombre.length; i++) {
          print("${i + 1}. ${temasNombre[i]}");
        }
        print("Ingrese el tema que desea asignar");
        posicion = int.parse(stdin.readLineSync()!);
        posicion = posicionIncorrecta(posicion, temasNombre);
        //Comprobar que no hayan estudiantes asignados
        if(asignaciones[posicion - 1][1].length > 0){
          print("Ya tiene estudiantes asignados, ¿desea asignar nuevamente?");
          print("1. sí");
          print("2. No");
          opcion = int.parse(stdin.readLineSync()!);
          opcion = volverIntentar(opcion);
          if(opcion == 1){
            //Se eliminan todos los estudiantes que hayan, no sin antes guardarlos en estudiantes sin asignar
            for (var i = 0; i < asignaciones[posicion - 1][1].length; i++) {
              estudiantesSinAsignar.add(asignaciones[posicion - 1][1][i]);
            }
            asignaciones[posicion - 1][1] = [];
            for (var i = 0; i < asignaciones[posicion - 1][2]; i++) {
              //Se elige el número aleatorio usando cantidad de estudiantes
              elegido = random.nextInt(estudiantesSinAsignar.length);
              //Se agrega el estudiante de esa posición
              asignaciones[posicion - 1][1].add(estudiantesSinAsignar[elegido]);
              //Se elimina el estudiante de estudiantes sin asignar
              estudiantesSinAsignar.removeAt(elegido);
            }
          }
        }else{
          for (var i = 0; i < asignaciones[posicion - 1][2]; i++) {
              //Se elige el número aleatorio usando cantidad de estudiantes
              elegido = random.nextInt(estudiantesSinAsignar.length);
              //Se agrega el estudiante de esa posición
              asignaciones[posicion - 1][1].add(estudiantesSinAsignar[elegido]);
              //Se elimina el estudiante de estudiantes sin asignar
              estudiantesSinAsignar.removeAt(elegido);
          }
        }
        //Se muestra cómo quedó asignado
        print("La asignación quedó de la siguiente manera:");
        print("Tema: ${temasNombre[posicion - 1]}");
        for (var i = 0; i < asignaciones[posicion - 1][1].length; i++) {
          print("${i + 1}. ${asignaciones[posicion - 1][1][i]}");
        }
        print("1. Crear otra asignación");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);
      }while(opcion != 2);
      break;
    
    case 2:
      int posicion1, posicion2;
      String nombre;
        do{
          for (var i = 0; i < temasNombre.length; i++) {
            print("${i + 1}. ${temasNombre[i]}");
          }
          print("Ingrese el tema al cuál desea editar su asignación");
          posicion = int.parse(stdin.readLineSync()!);
          posicion = posicionIncorrecta(posicion, temasNombre);
          if(asignaciones[posicion - 1][1].length > 0){
            print("Tema: ${temasNombre[posicion - 1]}");
            print(" Estudiantes:");
            //mostrar los estudiantes que hay en la asignación
            for (var i = 0; i < asignaciones[posicion - 1][1].length; i++) {
              print("   ${i + 1}. ${asignaciones[posicion - 1][1][i]}");
              }
              print("Ingrese el estudiante que desea reemplazar");
              posicion1 = int.parse(stdin.readLineSync()!);
              posicion1 = posicionIncorrecta(posicion1, asignaciones[posicion - 1][1]);
              //Se muestra la lista de estudiantes que no han sido asignados para reemplazarlo
              for (var i = 0; i < estudiantesSinAsignar.length; i++) {
                print("${i + 1}. ${estudiantesSinAsignar[i]}");
              }
              print("Ingrese el estudiante que desea ingresar a cambio de: ${asignaciones[posicion - 1][1][posicion1 - 1]}");
              posicion2 = int.parse(stdin.readLineSync()!);
              posicion2 = posicionIncorrecta(posicion2, estudiantes);
              nombre = asignaciones[posicion - 1][1][posicion1 - 1];
              asignaciones[posicion - 1][1][posicion1 - 1] = estudiantesSinAsignar[posicion2 - 1];
              estudiantesSinAsignar.removeAt(posicion2 - 1);
              estudiantesSinAsignar.add(nombre);
              print("La asignación quedaría de la siguiente manera:");
              print("Tema: ${temasNombre[posicion - 1]}");
              for (var i = 0; i < asignaciones[posicion - 1][1].length; i++) {
                print("${i + 1}. ${asignaciones[posicion - 1][1][i]}");
              }
              print("1. Crear otra asignación");
              print("2. Salir");
              opcion = int.parse(stdin.readLineSync()!);
              opcion = volverIntentar(opcion);
              }
          
        }while(opcion != 2);
        break;
    case 3:
      do{
        print("1. Eliminar asignación de un tema");
        print("2. Eliminar asignación de todos los temas");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);
        if(opcion == 1){
          print("Temas:");
          for (var i = 0; i < temasNombre.length; i++) {
            print("${i + 1}. ${temasNombre[i]}");
          }
          print("Ingrese el tema al cuál desea eliminar su asignación");
          posicion = int.parse(stdin.readLineSync()!);
          posicion = posicionIncorrecta(posicion, temasNombre);
          for (var i = 0; i < asignaciones[posicion - 1][1].length; i++) {
            estudiantesSinAsignar.add(asignaciones[posicion - 1][1][i]);
          }
          asignaciones[posicion - 1][1] = [];
          print("Se eliminaron todas las asignaciones del tema: ${temasNombre[posicion - 1]}");
        }else{
          for (var i = 0; i < asignaciones.length; i++) {
            asignaciones[i][1] = [];
          }
          //Se ponen todos los estudiantes en estudiantes sin asignar
          estudiantes = estudiantesSinAsignar;
          print("Se eliminaron todas las asignaciones exitosamente");
        }
        print("1. Eliminar otra asignación");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);

      }while(opcion != 2);
      break;
    //VER ASIGNACIONES
    case 4:
      for (var i = 0; i < asignaciones.length; i++) {
        print("${temasNombre[i]}:");
        for (var j = 0; j < asignaciones[i][1].length; j++) {
          print(" ${j + 1}. ${asignaciones[i][1][j]}");
        }
      }
      break;
    //ASIGNAR TODOO
    case 5:
      do{
        for (var i = 0; i < asignaciones.length; i++) {
           for (var j = 0; j < asignaciones[i][1].length; j++) {
              estudiantesSinAsignar.add(asignaciones[i][1][i]);
            }
            asignaciones[i][1] = [];
            for (var j = 0; j < asignaciones[i][2]; j++) {
              //Se elige el número aleatorio usando cantidad de estudiantes
              elegido = random.nextInt(estudiantesSinAsignar.length);
              //Se agrega el estudiante de esa posición
              asignaciones[i][1].add(estudiantesSinAsignar[elegido]);
              //Se elimina el estudiante de estudiantes sin asignar
              estudiantesSinAsignar.removeAt(elegido);
            }
        }
        print("Los temas quedaron asignados de la siguiente manera:");
        for (var i = 0; i < asignaciones.length; i++) {
          print("${temasNombre[i]}:");
          for (var j = 0; j < asignaciones[i][1].length; j++) {
            print(" ${j + 1}. ${asignaciones[i][1][j]}");
          }
        }
        print("1. Volver a asignar");
        print("2. Salir");
        opcion = int.parse(stdin.readLineSync()!);
        opcion = volverIntentar(opcion);
      }while(opcion != 2);
      break;
    case 6:
      break;
    
    default:
      print("Ingrese una opción correcta");
      break;
  }
}