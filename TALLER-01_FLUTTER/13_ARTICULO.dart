import 'dart:io';

void main() {
  print("Ingrese el nombre del artículo:");
  String nombreArticulo = stdin.readLineSync()!;
  
  print("Ingrese el valor unitario del artículo:");
  double valorUnitario = double.parse(stdin.readLineSync()!);
  
  print("Ingrese la cantidad a llevar:");
  int cantidad = int.parse(stdin.readLineSync()!);
  
  print("Es de la canasta familiar? (s/n):");
  String esCanastaFamiliar = stdin.readLineSync()!;
  
  double total = calcularTotal(valorUnitario, cantidad, esCanastaFamiliar);
  
  print("Total a pagar: \$$total");
}

double calcularTotal(double valorUnitario, int cantidad, String esCanastaFamiliar) {
  double total = valorUnitario * cantidad;
  
  if (esCanastaFamiliar.toLowerCase() == 'n') {
    total *= 1.19;
  }
  
  return total;
}