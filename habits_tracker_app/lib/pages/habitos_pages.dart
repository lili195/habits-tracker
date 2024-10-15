import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class HabitosPage extends StatefulWidget {
  const HabitosPage({super.key});

  @override
  _HabitosPageState createState() => _HabitosPageState();
}

class _HabitosPageState extends State<HabitosPage> {
  // Lista de categorías


  @override
  Widget build(BuildContext context) {
    final List<DateTime> fechasVerdes = [
      DateTime(2024, 10, 15),
      DateTime(2024, 10, 20),
      DateTime(2024, 11, 1),
      // Añade más fechas aquí
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("HABITO"),
        elevation: 0.0,
      ),
      body: 
        TableCalendar(
        firstDay: DateTime.utc(2023, 1, 1),
        lastDay: DateTime.utc(2025, 12, 31),
        focusedDay: DateTime.now(),
        calendarBuilders: CalendarBuilders(
          defaultBuilder: (context, day, focusedDay) {
            if (fechasVerdes.contains(day)) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle,
                ),
                margin: const EdgeInsets.all(4.0),
                alignment: Alignment.center,
                child: Text(
                  '${day.day}',
                  style: TextStyle(color: Colors.white),
                ),
              );
            }
            return null;
          },
        ),
      ),
      );
  }
}