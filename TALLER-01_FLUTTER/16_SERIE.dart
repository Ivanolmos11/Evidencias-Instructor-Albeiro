import 'dart:io';

void main() {
  print("Ingrese la cantidad de números de la serie de Fibonacci que desea ver:");
  int cantidad = int.parse(stdin.readLineSync()!);

  if (cantidad <= 0) {
    print("La cantidad debe ser mayor que cero.");
    return;
  }

  print("Serie de Fibonacci con $cantidad números:");
  for (int i = 0; i < cantidad; i++) {
    print(fibonacci(i));
  }
}

int fibonacci(int n) {
  if (n == 0) {
    return 0;
  } else if (n == 1) {
    return 1;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}