

import 'dart:io';
import 'dart:math';

void main(){
  double radio;
  double altura;
  double radio2;
  double piValue = pi;
  double dosPi = 2 * pi;

  stdout.write("Ingrese el primer radio del cilindro : ");
            radio = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese la altura del cilindro: ");
            altura = double.parse(stdin.readLineSync()!);
  stdout.write("Ingrese el segundo radio del cilindro: ");
            radio2 = double.parse(stdin.readLineSync()!);
  double area = 2*piValue * radio*altura+dosPi*radio2*radio2;
                 print("El area del circulo es=$area");
  double perimetro = 2*piValue*radio;
                 print("El perimetro del cilindro es=$perimetro");
}