
import 'package:orae/data/datasources/local_datasource.dart';
import 'package:orae/domain/entities/mood_entry.dart' as entity;
import 'package:orae/data/models/mood_entry.dart' as model;
import 'package:orae/domain/repositories/mood_repository.dart';

class MoodRepositoryImpl implements MoodRepository {
  final LocalDataSource localDataSource;

  MoodRepositoryImpl(this.localDataSource);

  @override
  Future<void> addMoodEntry(entity.MoodEntry entry) {
    final modelEntry = _toModel(entry);
    return localDataSource.addMoodEntry(modelEntry);
  }

  @override
  Future<List<entity.MoodEntry>> getAllMoodEntries() async {
    final models = await localDataSource.getAllMoodEntries();
    return models.map(_toEntity).toList();
  }

  @override
  Future<List<entity.MoodEntry>> getMoodEntriesForMonth(DateTime month) async {
    final models = await localDataSource.getMoodEntriesForMonth(month);
    return models.map(_toEntity).toList();
  }

  // Mappers
  model.MoodEntry _toModel(entity.MoodEntry entity) {
    return model.MoodEntry(
      date: entity.date,
      emotion: model.Emotion.values[entity.emotion.index],
      journal: entity.journal,
    );
  }

  entity.MoodEntry _toEntity(model.MoodEntry model) {
    return entity.MoodEntry(
      date: model.date,
      emotion: entity.Emotion.values[model.emotion.index],
      journal: model.journal,
    );
  }
}
