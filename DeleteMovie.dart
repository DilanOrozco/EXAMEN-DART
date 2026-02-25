import 'dart:io';

void deleteMovie(List<Map<String, dynamic>> peliculas){
  if (peliculas.isEmpty) {
    print("No hay peliculas para eliminar.");
    return;
  }

  print("Ingrese el codigo de la pelicula que desea eliminar:");
  int index = int.parse(stdin.readLineSync()!) - 1;

  if (index < 0 || index >= peliculas.length) {
    print("Libro no encontrado.");
    return;
  }

  peliculas.removeAt(index);

  print("Libro eliminado correctamente.");
}