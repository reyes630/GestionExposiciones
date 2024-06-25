import 'dart:io';
import 'package:dart_console/dart_console.dart';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ Y ESTEBAN REYES - MINI PROYECTO TRIMESTRE 2
  //DECLARACIÓN DE LISTAS
  final console = Console();
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
    if (opcion != 1 && opcion != 2) {
      console.setBackgroundColor(ConsoleColor.red); 
      console.writeLine("Opción incorrecta", TextAlignment.center);
    } else if (opcion == 1) {
      temas = [];
      estudiantes = [];
      cantEstudiantes = [];
    }
  } while (opcion != 1 && opcion != 2);
  do {
    // ------------------------ AQUI ESTA EL MENU PRINCIPAL ---------------------------------------
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
    console.writeLine('5. Historial', TextAlignment.center);
    console.setForegroundColor(ConsoleColor.blue);
    console.writeLine('6. Salir', TextAlignment.center);
    console.resetColorAttributes();
    opcion = int.parse(stdin.readLineSync()!);
    // ----------------------- AQUI ESTA EL SWITCH QUE CONTIENE LAS OPCIONES DEL MENU PRINCIPAL -------------
    switch (opcion) {
        // --------------------- AQUI INICIA EL MENU DE TEMAS --------------------------------
      case 1:
        do {
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
          // ------------- AQUI INICIAN LAS OPCIONES DEL MENU DE TEMAS ----------------
          switch (opcion) { 
          }
        } while (opcion != 5);
        break;
        // -------------------- AQUI INICIA EL MENU DE ESTUDIANTES --------------------
      case 2:
        do {
          console.setBackgroundColor(ConsoleColor.red); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.white); // COLOR DE FUENTE
          console.writeLine('MENÚ ESTUDIANTES', TextAlignment.center); //ALINEACON DE TEXTO
          console.resetColorAttributes();
          console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('1. Crear estudiantes', TextAlignment.center);
          console.writeLine('2. Editar estudiante', TextAlignment.center);
          console.writeLine('3. Eliminar estudiante', TextAlignment.center);
          console.writeLine('4. Ver estudiantes', TextAlignment.center);
          console.writeLine('5. Salir', TextAlignment.center);
          console.resetColorAttributes();
          opcion = int.parse(stdin.readLineSync()!);

        } while (opcion != 5);
        break;
        // ------------------ AQUI INICIA EL MENU DE COMPLEJIDAD 
      case 3:
        do {
          console.setBackgroundColor(ConsoleColor.green); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.white); // COLOR DE FUENTE
          console.writeLine('MENÚ COMPLEJIDAD', TextAlignment.center); //ALINEACON DE TEXTO
          console.resetColorAttributes();
          console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('1. Insertar complejidad', TextAlignment.center);
          console.writeLine('2. Editar Complejidad', TextAlignment.center);
          console.writeLine('3. Ver Complejidad', TextAlignment.center);
          console.writeLine('4. Salir', TextAlignment.center);
          console.resetColorAttributes();
          opcion = int.parse(stdin.readLineSync()!);

        } while (opcion != 4);
        break;
        // -------------------- AQUI INICIA EL MENU DE ASIGNACION -------------------
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

        } while (opcion != 6);
        break;
        // -------------------- AQUI INICIA EL MENU DE HISTORIAL ---------------------------
      case 5:
        do {
          console.setBackgroundColor(ConsoleColor.magenta); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('MENÚ HISTORIAL', TextAlignment.center); //ALINEACON DE TEXTO
          console.resetColorAttributes();
          console.setBackgroundColor(ConsoleColor.white); // COLOR DE FONDO
          console.setForegroundColor(ConsoleColor.black); // COLOR DE FUENTE
          console.writeLine('1. Historial', TextAlignment.center);
          console.writeLine('2. Historial', TextAlignment.center);
          console.writeLine('3. Historial', TextAlignment.center);
          console.writeLine('4. Historial', TextAlignment.center);
          console.writeLine('5. Historial', TextAlignment.center);
          console.writeLine('6. Salir', TextAlignment.center);
          console.resetColorAttributes();
          opcion = int.parse(stdin.readLineSync()!);

        } while (opcion != 6);
        break;

    }
  } while (opcion != 6);
}
