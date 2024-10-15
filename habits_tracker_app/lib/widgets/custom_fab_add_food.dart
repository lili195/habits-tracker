import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:habits_tracker_app/models/habits.dart';
import 'package:habits_tracker_app/pages/add_habit.dart';
import 'package:habits_tracker_app/utils/assets/page_animation_route.dart';

class CustomFabAddFood extends StatelessWidget {
  final Function(Habits) onCategoryAdded; // Callback para agregar categoría

  const CustomFabAddFood({super.key, required this.onCategoryAdded});

  @override
  Widget build(BuildContext context) {
    List<SpeedDialChild> childButtons = [];

    childButtons.add(SpeedDialChild(
      backgroundColor: const Color(0xFF6F28B0),
      child: const Icon(Icons.add, color: Colors.white),
      label: 'Agregar Habito',
      labelStyle: const TextStyle(fontSize: 18.0),
      onTap: () {
        Navigator.push(
          context,
          PageAnimationRoute(widget: const AddHabit(), ejex: 0.8, ejey: 0.8),
        );
      },
    ));

    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      backgroundColor: const Color(0xFF6F28B0),
      foregroundColor: Colors.white,
      children: childButtons,
    );
  }
}
