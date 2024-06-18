

import 'dart:io';
import 'dart:math';

void main(){
  bool salir = false;
  var random = Random();

  int numeroAleatorio = random.nextInt(100000);
  while (!salir) {
      print("\nOperaciones matemáticas básicas:");
      print("1. Suma");
      print("2. Resta");
      print("3. Multiplicacion");
      print("4. Division");
      print("5. modulo");
      print("6. cuadrado");
      print("7. raiz cuadrada");
      print("8. Potencia");
      print("9.Porcentaje");
      print("10. numero aleatorio");
      print("11. Salir");
    stdout.write("Ingrese una opción de (1-11): ");
    String? opcion1 = stdin.readLineSync();
    
    if (opcion1 == '11') {
      print("Saliendo del programa...");
      salir = true;
      continue;
    }
        switch (opcion1) {
          case '1':
            print("Seleccionaste la suma \nejemplo: 4+10=14");
            break;
          case '2':
            print("Seleccionaste la resta\nejemplo: 4-3=1");
            break;
          case '3':
            print("Seleccionaste la multiplicacion\nejemplo: 4*4=16");
            break;
            case '4':
            print("Seleccionaste la division\nejemplo: 15/8=1.875");
            break;
            case '5':
            print("seleccionaste modulo\nejemplo:10%3=1");
            break;
            case '6':
            print("Selecionaste cuadrado\nejemplo:10 al cuadrado = 10*10=100");
            break;
            case '7':
            print("Selecionaste raiz cuadrada\nejemplo:√25=5");
            break;
            case '8':
            print("Selecionaste potencia\nejemplo:2 elevado a la 5 potencia= 32");
            break;
            case '9':
            print("Selecionaste porcentaje\ejemplo:20/30*100=66.66%");
            break;
            case '10':
            print("Selecionaste numero aleatorio \n$numeroAleatorio");
            break;
         
        }
  }

}