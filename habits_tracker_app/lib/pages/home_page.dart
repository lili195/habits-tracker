import 'package:flutter/material.dart';
import 'package:habits_tracker_app/models/habits.dart';
import 'package:habits_tracker_app/pages/favorites_page.dart';
import 'package:habits_tracker_app/pages/user_page.dart';
import 'package:habits_tracker_app/providers/ui_provider.dart';
import 'package:habits_tracker_app/widgets/custom_fab_add_food.dart';
import 'package:habits_tracker_app/widgets/menu_bottom/custom_navigation_bar.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Lista de categorías
  List<Habits> categories = const [
    Habits(
      name: 'Escribir',
      icon:
          Icon(Icons.abc),
    ),
    Habits(
      name: 'Leer',
      icon:
          Icon(Icons.book),
    ),
    Habits(
      name: 'Correr',
      icon:
          Icon(Icons.run_circle),
    ),
    Habits(
      name: 'Jugar Baloncesto',
      icon:
          Icon(Icons.sports_basketball),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);
    final currentIndex = uiProvider.bnbIndex; // Obtiene el índice actual

    return Scaffold(
      floatingActionButton: CustomFabAddFood(onCategoryAdded: _addHabit),
      bottomNavigationBar: const CustomNavigationBar(),
      body: _getBody(currentIndex), // Cambia el cuerpo según el índice
    );
  }

  // Método para agregar una nueva categoría
  void _addHabit(Habits newHabit) {
    setState(() {
      categories.add(newHabit);
    });
  }
  // Método para obtener el cuerpo dinámico basado en el índice de la navegación
  Widget _getBody(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return Scaffold(
          appBar: AppBar(
            title: const Text('Aplicación de Hábitos'),
            actions: [
              IconButton(
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
            ],
          ),
        );
      case 1:
        return const FavoritesPage(); // Cambiar por tu página de gráficos
      case 2:
        return const UserPage();
      default:
        return const Center(child: Text('Página no encontrada'));
    }
  }
}
