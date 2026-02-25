import 'dart:io';

void updateMovie(List<Map<String, dynamic>>peliculas){

  if(peliculas.isEmpty){
    print("No hay peliculas para actualizar");
    return;
  }

  print("Ingrese el codigo de la pelicula que desea actualizar");
  int index = int.parse(stdin.readLineSync()!) - 1;
  if (index < 0 || index >= peliculas.length) {
    print("Pelicula no encontrada.");
    return;
  }

  print("Nuevo título:");
  String nuevoTitulo = stdin.readLineSync()!;

  print("Nuevo director:");
  String nuevoDirector = stdin.readLineSync()!;

  print("Nuevo año:");
  int nuevoYear = int.parse(stdin.readLineSync()!);

  print("Nuevo Genero:");
  String nuevoGenero = stdin.readLineSync()!;

  peliculas[index]['titulo'] = nuevoTitulo;
  peliculas[index]['director'] = nuevoDirector;
  peliculas[index]['Anio'] = nuevoYear;
  peliculas[index]['genero'] = nuevoGenero;

  print("Pelicula actualizada correctamente.");

}