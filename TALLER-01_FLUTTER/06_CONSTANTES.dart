

import 'dart:io';

void main(){
   print("\n" + ("-" * 50) + "\n");

var numeroA;
var numeroB;
var res;


 stdout.write('Digite el numero A: \t');
  numeroA = stdin.readLineSync();
  stdout.write('Digite el numero B: \t');
  numeroB = stdin.readLineSync();
  print("\n" + ("-" * 50) + "\n");
  // Proceso
  res = double.parse(numeroA) / double.parse(numeroB);

  if(double.parse(numeroB) == 0 || double.parse(numeroA) == 0){
print("Imposible la división por 0.");
  }else{
    print("\n el resultado de la division es=$res");
  }



}