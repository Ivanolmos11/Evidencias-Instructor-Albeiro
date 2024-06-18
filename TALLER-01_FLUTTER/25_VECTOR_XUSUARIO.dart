import 'dart:io';
import 'dart:collection';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

 
int cantidad = 0;
var orden;

 // Solicitar tamaño del vector
stdout.write('Digite el tamaño del vector: \t');
cantidad = int.parse(stdin.readLineSync()!);

 // Declarar Vector
List<String> vector = List.filled(cantidad, '');

//List<int> vector = List.filled(cantidad, 0);
//se utiliza si quieres que el array sea int

for(int i = 0; i < vector.length; i++){
  stdout.write('Digite el campo del vector $i:  \t');
  vector[i] = stdin.readLineSync().toString();
   //int.parse(stdin.readLineSync()!); 
   //se utiliza si el array es int
}


  // decir que orden tendra los vectores al imprimir
  stdout.write('\nDigite que orden desea imprimir los vectores \n1:Ascendente \n2:Descendente: \n');
  orden = int.tryParse(stdin.readLineSync().toString());

 // Imprimir Vector
 switch (orden){
  case 1:
    for(int i = 0; i < vector.length; i++){
      vector.sort();
      print("${vector[i]}");
    }
  break;
    case 2:
    for(int i = 0; i < vector.length; i++){
      vector.sort((a, b) => b.compareTo(a));
      print("${vector[i]}");
    }
  break;

 }



  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
}