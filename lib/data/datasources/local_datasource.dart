
import 'package:orae/data/models/mood_entry.dart' as model;
import 'package:orae/data/models/user_settings.dart' as model;

abstract class LocalDataSource {
  // Mood
  Future<void> addMoodEntry(model.MoodEntry entry);
  Future<List<model.MoodEntry>> getMoodEntriesForMonth(DateTime month);
  Future<List<model.MoodEntry>> getAllMoodEntries();

  // Settings
  Future<void> saveSettings(model.UserSettings settings);
  Future<model.UserSettings?> getSettings();
}
