import 'dart:io';
import 'dart:collection';
void main() {
  // Inicio del Algoritmo
  print("\n" + ("-" * 50) + "\n");

var respuesta;
int prodcuto = 0;
var cantidad;
  // Declarar Vector

List<List> producto1 = [
  ["Jabon", "10000" ,"4" , "si"],
  ["PS5", "2600000" ,"2","si"],
  ["Xbox Series X", "2400000" ,"3" , "si"],
  ["iPhone 15 pro max", "5600000" ,"7" , "si"],
  ["AMD Ryzen 5600g", "845000" ,"6" , "si"],
  ["Samsung a24 Ultra", "6200000" ,"5" , "si"],
  ["Buso Undergold Black", "420000" ,"11" , "si"],
  ["Nintendo Switch", "1400000" ,"2" , "si"],
  ["Epson l48", "120000" ,"2" , "si"],
  ["PS5 pro", "4000000" ,"1" , "si"],
];

for(int i = 0; i < producto1.length; i++){
  print("\nid:" + "$i" );
  for(int j = 0; j < producto1[i].length; j++){
  print("${producto1[i][j]}" );
  }
}

do{
  stdout.write('Digite el id del producto a comprar: \t');
  prodcuto = int.parse(stdin.readLineSync()!);

  stdout.write('Digite la cantidad de producto: \t');
  cantidad = int.parse(stdin.readLineSync()!);

   for(int i = 0; i > producto1.length; i++){
    for( int j = 0; j > producto1[i].length; j++){
       print("Factura:\n id:$prodcuto\n Nombre: ${producto1}" );
    }
  }

}while(respuesta == 2);
 

  // Fin del algoritmo
  print("\n" + ("-" * 50) + "\n");
}