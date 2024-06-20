import 'dart:io';

void main(List<String> args) {
  //JUAN DANIEL GÓMEZ Y ESTEBAN REYES - MINI PROYECTO TRIMESTRE 2
  //DECLARACIÓN DE LISTAS
  List<String> temas = ["Suma", "Resta", "División", "Multiplicación", "Raiz cuadrada", "Potenciación"]; //Lista para guardar todos los temas, tiene temas precargados
  List<String> estudiantes = ["Esteban Reyes", "Juan Daniel Gómez", "Sebas Ocampo", "Juan Andres Osorio", "Juan Manuel Zuluaga", "Miguel Peña", "Jose Miguel Sierra", "Alejandro Serna"]; //Lista para guardar los nombres de los estudiantes
  List<int> cantEstudiantes = [1, 1, 1, 1, 2, 2]; //Lista para guardar la complejidad de los temas, el número indica la cantidad de estudiantes por tema
  //DECLARACIÓN DE MATRIZ
  List<List<String>> asignacion = []; //Matriz que guardará las listas de los estudiantes por tema
  List<List<String>> historial = []; //Matriz para guardar el historial de las asignaciones
  //DECLARACIÓN DE VARIABLES
  int opcion;
  //MENÚ PRINCIPAL
  print("-----------------MENÚ-----------------");
  print("1. Manual agregando datos desde cero");
  print("2. Precargado con los datos predeterminados");
  opcion = int.parse(stdin.readLineSync()!); //Se pide la opcion
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
      case 1 {
        do {
          print("object");
        } while (opcion != 5);
      }
    }
    
  } while (opcion != 6);
}