import 'dart:io';

void updateMovie(List<Map<String, dynamic>> peliculas) {
  if (peliculas.isEmpty) {
    print("No hay peliculas para actualizar.");
    return;
  }

  print("Ingrese el numero de la pelicula que desea actualizar:");
  String? input = stdin.readLineSync();
  int? index = int.tryParse(input ?? "");

  if (index == null) {
    print("Debe ingresar un numero valido.");
    return;
  }

  index = index - 1;

  if (index < 0 || index >= peliculas.length) {
    print("Pelicula no encontrada.");
    return;
  }

  var pelicula = peliculas[index];

  print("Nuevo titulo (Enter para mantener: ${pelicula['titulo']}):");
  String? nuevoTitulo = stdin.readLineSync();
  if (nuevoTitulo != null && nuevoTitulo.isNotEmpty) {
    pelicula['titulo'] = nuevoTitulo;
  }

  print("Nuevo director (Enter para mantener: ${pelicula['director']}):");
  String? nuevoDirector = stdin.readLineSync();
  if (nuevoDirector != null && nuevoDirector.isNotEmpty) {
    pelicula['director'] = nuevoDirector;
  }

  print("Nuevo año (Enter para mantener: ${pelicula['anio']}):");
  String? yearInput = stdin.readLineSync();
  if (yearInput != null && yearInput.isNotEmpty) {
    int? nuevoYear = int.tryParse(yearInput);
    if (nuevoYear == null) {
      print("Año invalido. No se actualizo este campo.");
    } else {
      pelicula['anio'] = nuevoYear;
    }
  }

  print("Nuevo genero (Enter para mantener: ${pelicula['genero']}):");
  String? nuevoGenero = stdin.readLineSync();
  if (nuevoGenero != null && nuevoGenero.isNotEmpty) {
    pelicula['genero'] = nuevoGenero;
  }

  print("Pelicula actualizada correctamente.");
}