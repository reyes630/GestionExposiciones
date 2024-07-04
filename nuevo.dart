// Importamos las librerias
import 'dart:io';
import 'package:dart_console/dart_console.dart';
import 'dart:math';

void main(List<String> args) {
  final console = Console(); //Inicialiamos la consola 

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
  // Este es el primer menu para selccionar la forma de ingresar al programa,
  //funciona usando los numeros 
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
  if(opcion == 1){
    temasNombre = [];
    estudiantes = [];
    estudiantesSinAsignar = [];
    cantEstudiantes = [];
    asignaciones = [];
  }

  //Aqui estan las listas para losmenus que funcionan con las flechas
  // Este es el menu principal 
  final List<String> mainMenuOptions = [
    '1. Temas',
    '2. Estudiantes',
    '3. Complejidad',
    '4. Asignacion',
    '0. Salir'
  ];
  // Estos son los  sub menus 
  final Map<String, List<String>> subMenus = { //Es un mapa que asocia cada opción del menú principal con una lista de opciones de submenú.
    'Temas': [
      '1. Crear temas',
      '2. Editar temas',
      '3. Eliminar tema',
      '4. Ver temas',
      '0. Volver'
    ],
    'Estudiantes': [
      '1. Añadir estudiante',
      '2. Editar estudiante',
      '3. Eliminar estudiante',
      '4. Ver estudiantes',
      '0. Volver'
    ],
    'Complejidad': [
      '1. Ver complejidad',
      '2. Editar complejidad',
      '0. Volver'
    ],
    'Asignacion': [
      '1. Asignar temas',
      '2. Ver asignaciones',
      '3. Eliminar asignaciones',
      '0. Volver'
    ]
  };

  int selectedIndex = 0;
  //Funcion para Mostrar el menu 
  void displayMenu(List<String> options, {String title = 'MENÚ PRINCIPAL'}) {

    console.clearScreen();
    console.setBackgroundColor(ConsoleColor.blue);
    console.setForegroundColor(ConsoleColor.white);
    console.writeLine(title, TextAlignment.center);
    console.resetColorAttributes();
    console.writeLine('');
    
    //Este itera para que se muestre la flecha en las opciones 
    for (int i = 0; i < options.length; i++) {
      if (i == selectedIndex) {
        console.setForegroundColor(ConsoleColor.white);
        console.write('➜ ');
      } else {
        console.write('  ');
      }
      console.writeLine(options[i]);
      console.resetColorAttributes();
    }
  }
  //Este es para navegar por los submenus 
  void handleSubMenu(String menuName) {
    List<String> subMenuOptions = subMenus[menuName]!;
    int subMenuIndex = 0;

    void displaySubMenu() {
      console.clearScreen();
      console.setBackgroundColor(ConsoleColor.blue);
      console.setForegroundColor(ConsoleColor.white);
      console.writeLine('MENÚ $menuName', TextAlignment.center);
      console.resetColorAttributes();
      console.writeLine('');
      
      //Este itera para que se muestre la flecha en las opciones 
      for (int i = 0; i < subMenuOptions.length; i++) {
        if (i == subMenuIndex) {
          console.setForegroundColor(ConsoleColor.white);
          console.write('➜ ');
        } else {
          console.write('  ');
        }
        console.writeLine(subMenuOptions[i]);
        console.resetColorAttributes();
      }
    }

    displaySubMenu();

    //Bucle para que se muestre el menu 
    while (true) {
      final key = console.readKey();

      if (key.controlChar == ControlCharacter.arrowDown) {
        subMenuIndex = (subMenuIndex + 1) % subMenuOptions.length;
      } else if (key.controlChar == ControlCharacter.arrowUp) {
        subMenuIndex = (subMenuIndex - 1 + subMenuOptions.length) % subMenuOptions.length;
      } else if (key.char == ' ') {
        if (subMenuIndex == subMenuOptions.length - 1) {
          // 'Volver' option
          return;
        } else {
          console.clearScreen();
          console.writeLine('Seleccionaste: ${subMenuOptions[subMenuIndex]}', TextAlignment.center);
          console.resetColorAttributes();
          console.writeLine('Presione cualquier tecla para regresar al menú anterior.', TextAlignment.center);
          console.readKey();
          displaySubMenu();
        }
      }

      displaySubMenu();
    }

  }

  displayMenu(mainMenuOptions);

  while (true) {
    final key = console.readKey();

    if (key.controlChar == ControlCharacter.arrowDown) {
      selectedIndex = (selectedIndex + 1) % mainMenuOptions.length;
    } else if (key.controlChar == ControlCharacter.arrowUp) {
      selectedIndex = (selectedIndex - 1 + mainMenuOptions.length) % mainMenuOptions.length;
    } else if (key.char == ' ') {
      if (selectedIndex == mainMenuOptions.length - 1) {
        console.clearScreen();
        console.setBackgroundColor(ConsoleColor.blue);
        console.setForegroundColor(ConsoleColor.white);
        console.writeLine('Saliendo...', TextAlignment.center);
        console.resetColorAttributes();
        exit(0);
      } else {
        handleSubMenu(mainMenuOptions[selectedIndex].split('. ')[1]);
        displayMenu(mainMenuOptions);
      }
    }

    displayMenu(mainMenuOptions);
  }
}
