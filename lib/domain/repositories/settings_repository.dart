
import 'package:orae/domain/entities/user_settings.dart';

abstract class SettingsRepository {
  Future<void> saveSettings(UserSettings settings);
  Future<UserSettings?> getSettings();
}
