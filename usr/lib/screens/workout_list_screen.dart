import 'package:flutter/material.dart';
import '../models/workout_model.dart';
import '../data/workout_repository.dart';
import 'workout_detail_screen.dart';

class WorkoutListScreen extends StatelessWidget {
  final WorkoutLevel level;

  const WorkoutListScreen({super.key, required this.level});

  String _getTitle() {
    switch (level) {
      case WorkoutLevel.beginner:
        return 'Iniciante';
      case WorkoutLevel.intermediate:
        return 'Intermediário (VIP)';
      case WorkoutLevel.advanced:
        return 'Avançado (VIP)';
    }
  }

  @override
  Widget build(BuildContext context) {
    final allWorkouts = WorkoutRepository.getWorkouts();
    final workouts = allWorkouts.where((w) => w.level == level).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle()),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Container(
        color: const Color(0xFF121212), // Dark background
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: workouts.length,
          itemBuilder: (context, index) {
            final workout = workouts[index];
            return Card(
              color: const Color(0xFF1E1E1E),
              margin: const EdgeInsets.only(bottom: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
                side: BorderSide(
                  color: workout.isVip ? Colors.amber : Colors.grey.shade800,
                  width: 1,
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16),
                title: Text(
                  workout.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(Icons.timer, color: Colors.grey, size: 16),
                        const SizedBox(width: 4),
                        Text(
                          workout.duration,
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Text(
                      workout.goal,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(color: Colors.grey.shade400, fontSize: 12),
                    ),
                  ],
                ),
                trailing: workout.isVip
                    ? const Icon(Icons.lock, color: Colors.amber)
                    : const Icon(Icons.arrow_forward_ios, color: Colors.white),
                onTap: () {
                  // In a real app, check VIP status here
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WorkoutDetailScreen(workout: workout),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
