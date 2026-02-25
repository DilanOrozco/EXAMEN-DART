import 'dart:io';
import 'add.dart';
import 'list.dart';
import 'DeleteMovie.dart';

void main(){
  bool f = true;
  List<Map<String, dynamic>> peliculas=[];

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
      agregarPelicula(peliculas);
      break;

      case "2":
      listarPeliculas(peliculas) ;
      break;

      case "3":
      break;

      case "4":
      deleteMovie(peliculas);
      break;

      case "5":
      print("saliendo...");
      f = false;
      break;

      default: 
      print("opcion invalida");
      break;
    }

  }


}