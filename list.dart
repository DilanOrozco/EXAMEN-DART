void listarPeliculas(List<Map<String, dynamic>> peliculas) {
  print("\n--- Lista de Películas ---");

  if (peliculas.isEmpty) {
    print("No hay películas registradas.");
    return;
  }

  for (int i = 0; i < peliculas.length; i++) {
    var p = peliculas[i];
    print("""
[$i] Título: ${p['titulo']}
    Director: ${p['director']}
    Año: ${p['anio']}
    Género: ${p['genero']}
""");
  }
}