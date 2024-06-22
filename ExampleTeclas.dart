// IMPORTAR LOS PAQUETES DE DART
import 'dart:io';
import 'package:dart_console/dart_console.dart';

void main() {
  // CREAR UNA INSTANCIA DE CONSOLA
  final console = Console();
  //LIMPIAR LA PANTALLA Y MOSTAR LA CONSOLA
  console.clearScreen();
  console.setForegroundColor(ConsoleColor.blue);  // COLOR DE LA LETRA DEL MENSAJE 
  console.writeLine('Presiona cualquier tecla para continuar...');
  console.resetColorAttributes();

  // LEER UNA TECLA PRESIONADA
  final key = console.readKey();

  // MOSTRAR LA TECLA PREISONADA 
  console.clearScreen();
  console.setForegroundColor(ConsoleColor.green); // COLOR DEL MENSAJE 
  console.writeLine('Has presionado: ${key.char}'); // NOMBRE DE LA LATRA PRESIONADA 
  console.writeLine('Codigo de tecla: ${key.controlChar}'); // CODIGO DE LA LETRA PRESIONADA 
  console.resetColorAttributes();
}
