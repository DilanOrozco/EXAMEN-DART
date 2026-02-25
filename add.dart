import 'dart:io';

void agregarPelicula(List<Map<String, dynamic>> peliculas) {
  print("\n--- Agregar Película ---");

  stdout.write("Título: ");
  String titulo = stdin.readLineSync()!.trim();

  stdout.write("Director: ");
  String director = stdin.readLineSync()!.trim();

  stdout.write("Año: ");
  int? anio = int.tryParse(stdin.readLineSync()!);

  stdout.write("Género: ");
  String genero = stdin.readLineSync()!.trim();

  if (titulo.isEmpty || director.isEmpty || genero.isEmpty || anio == null) {
    print("Datos inválidos. Intente nuevamente.");
    return;
  }

  peliculas.add({
    'titulo': titulo,
    'director': director,
    'anio': anio,
    'genero': genero
  });

  print("Película agregada correctamente.");
}