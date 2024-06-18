import 'dart:io';
import 'dart:collection';
void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

  // Declarar Vector

List<List> matriz = [
  ["Daniel", "Romero", "19" ,"Soltero" , "3104530504"],
  ["Brayam", "Cerquera", "18" ,"Soltero","3052346506"],
  ["Eduardo", "Balza", "19" ,"Soltero" , "3134524830"],
  ["Luis", "Morales", "20" ,"Soltero" , "3204530509"]
];

for(int i = 0; i < matriz.length; i++){
  print("\n" + "$i" + "\n" );
  for(int j = 0; j < matriz[i].length; j++){
  print("$j:  ${matriz[i][j]}" );
  }
}

  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
}