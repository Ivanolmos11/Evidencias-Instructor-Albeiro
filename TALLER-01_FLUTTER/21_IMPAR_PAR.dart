import 'dart:io';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Declarar constantes y variables
  var num1;
  var num2;


  // Entrada de Datos
  stdout.write('Digite el primer numero: \t');
  num1 = int.tryParse(stdin.readLineSync().toString());
  stdout.write('Digite el segundo numero: \t');
  num2 = int.tryParse(stdin.readLineSync().toString());
  // Elegir si es impar(1) o par (2)
  stdout.write('Digite 1 si quieres impar o 2 si quieres par: \t');
  var respuesta = int.tryParse(stdin.readLineSync().toString());

  switch(respuesta){
    case 1: 
     if(num1 % 2 != 0 && num2 % 2 != 0){
        print("Serie Impares:\n$num2 \n$num1");
     }else if (num1 % 2 != 0){
        print("Serie Impares:\n$num1");
     }else{
      print("Serie Impares:\n$num2");
     }
    break;
    case 2:
          if(num1 % 2 == 0 && num2 % 2 == 0){
            print("Serie Pares:\n$num2 \n$num1");
        }else if (num1 % 2 == 0){
            print("Serie Pares:\n$num1");
        }else{
          print("Serie Pares:\n$num2");
        }
      break;
     }



  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
}