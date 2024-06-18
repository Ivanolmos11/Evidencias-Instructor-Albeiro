import 'dart:io';
import 'dart:math';

void main() {
  print("Presiona 'enter' para generar tus números de baloto.");
  stdin.readLineSync();
  
  List<int> numerosBaloto = generarNumerosBaloto();
  
  print("Tus números de baloto son: ${numerosBaloto.join(', ')}");
}

List<int> generarNumerosBaloto() {
  List<int> numeros = [];
  Random random = Random();
  
  while (numeros.length < 6) {
    int numero = random.nextInt(45) + 1;
    if (!numeros.contains(numero)) {
      numeros.add(numero);
    }
  }
  numeros.sort();
  return numeros;
}