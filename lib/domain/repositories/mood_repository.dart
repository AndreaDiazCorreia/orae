
import 'package:orae/domain/entities/mood_entry.dart';

abstract class MoodRepository {
  Future<void> addMoodEntry(MoodEntry entry);
  Future<List<MoodEntry>> getMoodEntriesForMonth(DateTime month);
  Future<List<MoodEntry>> getAllMoodEntries();
}
