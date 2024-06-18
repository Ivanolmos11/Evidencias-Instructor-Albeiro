import 'dart:io';

void main() {
  // Solicitar al usuario un número
  stdout.write("Ingrese un número: ");
  String? input = stdin.readLineSync();

  // Verificar si el usuario ingresó algo
  if (input != null && input.isNotEmpty) {
    // Convertir la entrada a un número
    double numero = double.parse(input);

    // Contar el número de dígitos
    int cantidadDigitos = numero.abs().toString().length;

    // Mostrar la cantidad de dígitos en pantalla
    print("El número ingresado tiene $cantidadDigitos dígitos.");
  } else {
    print("No se ha ingresado ningún número.");
  }
}
