import 'dart:io';

void main(){
  bool f = true;

  while(f){
    print("\nBienvenido al sistema de gestion de catalogos de peliculas\n");
    print("1. Agregar pelicula");
    print("2. Listar peliculas");
    print("3. Actualizar pelicula");
    print("4. Eliminar pelicula");
    print("5. Salir\n");

    String opcion = stdin.readLineSync()!;

    switch(opcion){
      case "1":
      break;

      case "2": 
      break;

      case "3":
      break;

      case "4":
      break;

      case "5":
      break;

      default: 
      print("opcion invalida");
      break;
    }

  }


}