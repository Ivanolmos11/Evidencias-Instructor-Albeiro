

import 'dart:io';

void main(){
  bool salir = false;
  
  while (!salir) {
    print("\nMenú de colores:");
    print("1. Amarillo");
    print("2. Azul");
    print("3. Rojo");
    print("4. Salir");
    stdout.write("Ingrese la primera opción (1-4): ");
    String? opcion1 = stdin.readLineSync();
    
    if (opcion1 == '4') {
      print("Saliendo del programa...");
      salir = true;
      continue;
    }
    
    stdout.write("Ingrese la segunda opción (1-3): ");
    String? opcion2 = stdin.readLineSync();
    
    switch (opcion1) {
      case '1':
        switch (opcion2) {
          case '1':
            print("creaste amarillo oscuro");
            break;
          case '2':
            print("creaste el color verde");
            break;
          case '3':
            print("creaste el color naranja");
            break;
          default:
            print("Segunda opción no válida. Por favor, seleccione una opción válida.");
            continue;
        }
        break;
      case '2':
        switch (opcion2) {
          case '1':
            print("creaste el color verde");
            break;
          case '2':
            print("creaste el color azul oscuro");
            break;
          case '3':
            print("creaste el color morado");
            break;
          default:
            print("Segunda opción no válida. Por favor, seleccione una opción válida.");
            continue;
        }
        break;
      case '3':
        switch (opcion2) {
          case '1':
            print("creaste el color naranja");
            break;
          case '2':
            print("creaste el color morado");
            break;
          case '3':
            print("Creaste el color rojo oscuro");
            break;
          default:
            print("Segunda opción no válida. Por favor, seleccione una opción válida.");
            continue;
        }
        break;
      default:
        print("Primera opción no válida. Por favor, seleccione una opción válida.");
    }
  }
}
