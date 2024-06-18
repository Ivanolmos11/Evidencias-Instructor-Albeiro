import 'dart:math';

void main() {
  bool paresConsecutivos = false;
  int contadorPares = 0;

  while (!paresConsecutivos) {
    int dado1 = generarNumeroAleatorio();
    int dado2 = generarNumeroAleatorio();
    
    print("Dado 1: $dado1");
    print("Dado 2: $dado2");
    
    if (esPar(dado1) && esPar(dado2)) {
      contadorPares++;
      if (contadorPares >= 2) {
        print("Saca una ficha");
        paresConsecutivos = true;
      } else {
        print("Lanzar de nuevo");
      }
    } else {
      print("Lanzar de nuevo");
      contadorPares = 0;
    }
  }
}

int generarNumeroAleatorio() {
  Random random = Random();
  return random.nextInt(6) + 1;
}

bool esPar(int numero) {
  return numero % 2 == 0;
}