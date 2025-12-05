enum WorkoutLevel {
  beginner,
  intermediate,
  advanced,
}

class Workout {
  final String id;
  final String name;
  final String duration;
  final String description;
  final String goal;
  final String equipment;
  final WorkoutLevel level;
  final bool isVip;
  final String imageUrl; // Placeholder for future images

  const Workout({
    required this.id,
    required this.name,
    required this.duration,
    required this.description,
    required this.goal,
    required this.equipment,
    required this.level,
    required this.isVip,
    this.imageUrl = '',
  });
}
