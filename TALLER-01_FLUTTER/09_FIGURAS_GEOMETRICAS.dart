

import 'dart:io';
import 'dart:math';

void main(){
 bool salir = false;
 double base;
 double altura;
  
  while (!salir) {
    print("\nMenú de figuras:");
    print("1. Triangulo");
    print("2. Rectangulo");
    print("3. Circulo");
    print("4. Salir");
    stdout.write("Ingrese la primera opción (1-4): ");
    String? opcion1 = stdin.readLineSync();
    
    if (opcion1 == '4') {
      print("Saliendo del programa...");
      salir = true;
      continue;
    }
    switch (opcion1) {
          case '1':
             stdout.write("Ingrese la base del triangulo: ");
            base = double.parse(stdin.readLineSync()!);
              stdout.write("Ingrese la altura del triangulo: ");
            altura = double.parse(stdin.readLineSync()!);
            double area = base * altura / 2;
            if(area<=0){
              print("no existen áreas menores o iguales a cero.");
            }else{
              print("El area del triangulo es:$area");
            }
             
             double lado;
               stdout.write("Ingrese un lado del triangulo: ");
            lado = double.parse(stdin.readLineSync()!);
            double perimetro = lado*3;
            if(perimetro<=0){
              print("no existen perimetros menores o iguales a cero.");
            }else{
              print("El perimetro del triangulo es:$perimetro");
            }
             
            break;
          case '2':
                  stdout.write("Ingrese la base del rectangulo: ");
            base = double.parse(stdin.readLineSync()!);
              stdout.write("Ingrese la altura del rectangulo: ");
            altura = double.parse(stdin.readLineSync()!);
            double arearectangulo = base * altura;
            if(arearectangulo<=0){
              print("no existen áreas menores o iguales a cero.");
            }else{
                print("El area del triangulo es:$arearectangulo");
            }
           
             double lado;
             double lado2;
               stdout.write("Ingrese un lado del rectangulo: ");
            lado = double.parse(stdin.readLineSync()!);
             stdout.write("Ingrese un lado del rectangulo: ");
            lado2 = double.parse(stdin.readLineSync()!);
            double perimetrorectangulo = lado*2+lado2*2;
            if(perimetrorectangulo<=0){
              print("no existen perimetros menores o iguales a cero.");
            }else{
              print("El perimetro del rectangulo es:$perimetrorectangulo");
            }
             
            break;
          case '3':
           double piValue = pi;
           double radio;
           double diametro;
             stdout.write("Ingrese el radio del circulo: ");
            radio = double.parse(stdin.readLineSync()!);
            double areacirculo = piValue * radio*2;
             if(areacirculo<=0){
              print("no existen áreas menores o iguales a cero.");
            }else{
                 print("El area del circulo es=$areacirculo");
            }
           
            stdout.write("Ingrese el diametro del circulo: ");
            diametro=double.parse(stdin.readLineSync()!);
            double perimetrocirculo = piValue*diametro;
             if(perimetrocirculo<=0){
              print("no existen perimetros menores o iguales a cero.");
            }else{
              print("El perimetro del circulo es=$perimetrocirculo");
            }
            
            break;
}
}
}