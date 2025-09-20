
import 'package:hive/hive.dart';

part 'user_settings.g.dart';

@HiveType(typeId: 2)
class UserSettings extends HiveObject {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final bool isProUser;

  @HiveField(2)
  final TimeOfDay reminderTime;

  UserSettings({
    required this.name,
    this.isProUser = false,
    required this.reminderTime,
  });
}

// Since Hive doesn't support TimeOfDay directly, we need a TypeAdapter.
class TimeOfDayAdapter extends TypeAdapter<TimeOfDay> {
  @override
  final int typeId = 3;

  @override
  TimeOfDay read(BinaryReader reader) {
    final hour = reader.readByte();
    final minute = reader.readByte();
    return TimeOfDay(hour: hour, minute: minute);
  }

  @override
  void write(BinaryWriter writer, TimeOfDay obj) {
    writer.writeByte(obj.hour);
    writer.writeByte(obj.minute);
  }
}
