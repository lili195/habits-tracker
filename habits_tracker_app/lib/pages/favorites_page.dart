import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de alimentos favoritos con imágenes y calorías
    final List<Map<String, dynamic>> favoriteHabits = [
      {
        'name': 'Leer',
        'image': 'https://via.placeholder.com/150'
      },
      {
        'name': 'Correr',
        'image': 'https://via.placeholder.com/150'
      },
      {
        'name': 'Beber agua',
        'image': 'https://via.placeholder.com/150'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoritos'),
      ),
      body: ListView.builder(
        itemCount: favoriteHabits.length,
        itemBuilder: (context, index) {
          final food = favoriteHabits[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Image.network(food['image']),
              title: Text(
                food['name'],
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () {
                  // Lógica para eliminar de favoritos
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
