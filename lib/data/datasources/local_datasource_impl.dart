
import 'package:hive/hive.dart';
import 'package:orae/data/datasources/local_datasource.dart';
import 'package:orae/data/models/mood_entry.dart' as model;
import 'package:orae/data/models/user_settings.dart' as model;

class LocalDataSourceImpl implements LocalDataSource {
  final Box<model.MoodEntry> _moodBox;
  final Box<model.UserSettings> _settingsBox;

  LocalDataSourceImpl(this._moodBox, this._settingsBox);

  @override
  Future<void> addMoodEntry(model.MoodEntry entry) {
    return _moodBox.add(entry);
  }

  @override
  Future<List<model.MoodEntry>> getAllMoodEntries() {
    return Future.value(_moodBox.values.toList());
  }

  @override
  Future<List<model.MoodEntry>> getMoodEntriesForMonth(DateTime month) {
    final entries = _moodBox.values.where((entry) {
      return entry.date.year == month.year && entry.date.month == month.month;
    }).toList();
    return Future.value(entries);
  }

  @override
  Future<model.UserSettings?> getSettings() {
    // Assuming a single settings object is stored at a known key, like 0
    return Future.value(_settingsBox.get(0));
  }

  @override
  Future<void> saveSettings(model.UserSettings settings) {
    // Assuming a single settings object is stored at a known key, like 0
    return _settingsBox.put(0, settings);
  }
}
