import 'dart:io';

void main() {
  print("Ingrese tres números separados por espacios:");
  List<String> numerosInput = stdin.readLineSync()!.trim().split(' ');

  if (numerosInput.length != 3) {
    print("Debe ingresar exactamente tres números.");
    return;
  }

  List<int> numeros = [];
  for (var numeroString in numerosInput) {
    try {
      numeros.add(int.parse(numeroString));
    } catch (e) {
      print("Error: '$numeroString' no es un número válido.");
      return;
    }
  }

  print("¿Desea ordenar los números de forma ascendente o descendente? (asc/desc):");
  String orden = stdin.readLineSync()!.toLowerCase();

  if (orden == "asc") {
    numeros.sort();
    print("Números ordenados de forma ascendente: ${numeros.join(', ')}");
  } else if (orden == "desc") {
    numeros.sort((a, b) => b.compareTo(a));
    print("Números ordenados de forma descendente: ${numeros.join(', ')}");
  } else {
    print("Opción no válida. Debe ingresar 'asc' o 'desc'.");
  }
}