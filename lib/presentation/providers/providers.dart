
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:orae/data/datasources/local_datasource.dart';
import 'package:orae/data/datasources/local_datasource_impl.dart';
import 'package:orae/data/models/mood_entry.dart';
import 'package:orae/data/models/user_settings.dart';
import 'package:orae/data/repositories/mood_repository_impl.dart';
import 'package:orae/data/repositories/settings_repository_impl.dart';
import 'package:orae/domain/repositories/mood_repository.dart';
import 'package:orae/domain/repositories/settings_repository.dart';

// Hive Box Providers
final moodBoxProvider = Provider<Box<MoodEntry>>((ref) {
  return Hive.box<MoodEntry>('mood_entries');
});

final settingsBoxProvider = Provider<Box<UserSettings>>((ref) {
  return Hive.box<UserSettings>('user_settings');
});

// DataSource Provider
final localDataSourceProvider = Provider<LocalDataSource>((ref) {
  final moodBox = ref.watch(moodBoxProvider);
  final settingsBox = ref.watch(settingsBoxProvider);
  return LocalDataSourceImpl(moodBox, settingsBox);
});

// Repository Providers
final moodRepositoryProvider = Provider<MoodRepository>((ref) {
  final localDataSource = ref.watch(localDataSourceProvider);
  return MoodRepositoryImpl(localDataSource);
});

final settingsRepositoryProvider = Provider<SettingsRepository>((ref) {
  final localDataSource = ref.watch(localDataSourceProvider);
  return SettingsRepositoryImpl(localDataSource);
});
