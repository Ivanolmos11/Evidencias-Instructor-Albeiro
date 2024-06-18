import 'dart:io';

void main() {
  print("Ingrese un número para mostrar su tabla de multiplicar:");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero >= 1 && numero <= 10) {
    print("Tabla de multiplicar del $numero:");
    for (int i = 1; i <= 10; i++) {
      print("$numero x $i = ${numero * i}");
    }
  } else {
    print("El número debe estar entre 1 y 10.");
  }
}