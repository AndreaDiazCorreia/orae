
import 'package:flutter/material.dart';
import 'package:orae/data/datasources/local_datasource.dart';
import 'package:orae/domain/entities/user_settings.dart' as entity;
import 'package:orae/data/models/user_settings.dart' as model;
import 'package:orae/domain/repositories/settings_repository.dart';

class SettingsRepositoryImpl implements SettingsRepository {
  final LocalDataSource localDataSource;

  SettingsRepositoryImpl(this.localDataSource);

  @override
  Future<entity.UserSettings?> getSettings() async {
    final settingsModel = await localDataSource.getSettings();
    if (settingsModel != null) {
      return _toEntity(settingsModel);
    }
    return null;
  }

  @override
  Future<void> saveSettings(entity.UserSettings settings) {
    final settingsModel = _toModel(settings);
    return localDataSource.saveSettings(settingsModel);
  }

  // Mappers
  model.UserSettings _toModel(entity.UserSettings entity) {
    return model.UserSettings(
      name: entity.name,
      isProUser: entity.isProUser,
      reminderTime: entity.reminderTime,
    );
  }

  entity.UserSettings _toEntity(model.UserSettings model) {
    return entity.UserSettings(
      name: model.name,
      isProUser: model.isProUser,
      reminderTime: model.reminderTime,
    );
  }
}
