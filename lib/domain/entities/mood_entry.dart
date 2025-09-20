
// In a full clean architecture, this would be a pure Dart object.
// The repository would be responsible for mapping it to the data model.

// For simplicity in this setup, we'll mirror the model structure.
// This avoids creating complex mapper classes for this initial phase.

enum Emotion {
  happy,
  calm,
  neutral,
  sad,
  anxious,
  excited,
  tired,
}

class MoodEntry {
  final DateTime date;
  final Emotion emotion;
  final String? journal;

  MoodEntry({
    required this.date,
    required this.emotion,
    this.journal,
  });
}
