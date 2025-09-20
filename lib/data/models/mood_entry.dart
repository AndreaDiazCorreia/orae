
import 'package:hive/hive.dart';

part 'mood_entry.g.dart';

@HiveType(typeId: 1)
enum Emotion {
  @HiveField(0)
  happy,
  @HiveField(1)
  calm,
  @HiveField(2)
  neutral,
  @HiveField(3)
  sad,
  @HiveField(4)
  anxious,
  @HiveField(5)
  excited,
  @HiveField(6)
  tired,
}

@HiveType(typeId: 0)
class MoodEntry extends HiveObject {
  @HiveField(0)
  final DateTime date;

  @HiveField(1)
  final Emotion emotion;

  @HiveField(2)
  final String? journal;

  MoodEntry({
    required this.date,
    required this.emotion,
    this.journal,
  });
}
