import 'dart:io';
import 'dart:math';

void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

//definimos variables
int usuarios = 0;
var tiroInicial;
var tipoApuesta;
 int acumulado = 2;

 // Solicitar la cantidad de usuarios
stdout.write('Digite la cantidad de usuarios: \t');
usuarios = int.parse(stdin.readLineSync()!);
List<int> vector = List.filled(usuarios, 0);// Declarar Vector para el primer tiro
do{
  print("\nAcumulado: $acumulado");  //Imprimir acumulado
  for(var i = 0; i < usuarios; i++){
    vector[i] = lanzarDado();   //Lanzar el primer tiro
    print("Usuario: ${i + 1}  Tiro Inicial: ${vector[i]}");
    /*if(vector[i] == 1 || vector[i] == 6){
      acumulado++;
      print("Usuario ${i + 1} Agrega una moneda al acumulado");
    }*/
  }
  for(var i = 0; i < usuarios; i++){
    print("\n" + ("-" * 6) +"Es tu turno Usuario ${i +1 } de lanzar el dado de nuevo" + ("-" * 6) );   
    stdout.write('\nComo quieres apostar Usuario ${i + 1}?? \n1: Una moneda \n2: Escoger cantidad Apuesta \t');   //Escoger la cantidad de la apuesta
    var tipoApuesta = int.parse(stdin.readLineSync()!); 
    var segundoTiro = lanzarDado();   //Lanzar segundo tiro
    switch(tipoApuesta){
      case 1: 
      print("\nUsuario: ${i + 1} Segundo Tiro: $segundoTiro");
       if( segundoTiro > vector[i]){
        print("Usuario: ${i + 1}  Gano! Ganaste Una Moneda");
        acumulado - 1;
      }else{
        print("Usuario: ${i + 1} Perdio! Perdiste Una Moneda");
        acumulado + 1;
      }
      break;
      //Si es 2 se resta la cantidad que quiere apostar el usuario
      case 2:
      stdout.write('\nCuanto desea Apostar Usuario ${i + 1}?? \t');
      var apuesta = int.parse(stdin.readLineSync()!);

      print("\nUsuario ${i + 1}: Aposto: $apuesta");

      print("\nUsuario: ${i + 1} Segundo Tiro: $segundoTiro");

       if( segundoTiro > vector[i]){
        print("Usuario: ${i + 1}  Gano! Ganaste $apuesta");
        acumulado -= apuesta;
      }else{
        print("Usuario: ${i + 1} Perdio! Perdiste $apuesta");
        acumulado += apuesta;
      }
      break;
    }
  }
  if(acumulado <= 0){
    print("El juego ha terminado. No hay acumulado $acumulado Gracias por jugar");  //si el acumulado es menor que cero se acaba el juego
    break;
  }
}while(acumulado >= 0);   // se cumple mientras el acumulado se superior a 0


  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
}

int lanzarDado(){
  var dado =  Random();
  return dado.nextInt(6) + 1;
}