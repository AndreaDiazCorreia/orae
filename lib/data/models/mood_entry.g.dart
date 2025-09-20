// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_entry.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MoodEntryAdapter extends TypeAdapter<MoodEntry> {
  @override
  final int typeId = 0;

  @override
  MoodEntry read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MoodEntry(
      date: fields[0] as DateTime,
      emotion: fields[1] as Emotion,
      journal: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, MoodEntry obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.date)
      ..writeByte(1)
      ..write(obj.emotion)
      ..writeByte(2)
      ..write(obj.journal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoodEntryAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EmotionAdapter extends TypeAdapter<Emotion> {
  @override
  final int typeId = 1;

  @override
  Emotion read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Emotion.happy;
      case 1:
        return Emotion.calm;
      case 2:
        return Emotion.neutral;
      case 3:
        return Emotion.sad;
      case 4:
        return Emotion.anxious;
      case 5:
        return Emotion.excited;
      case 6:
        return Emotion.tired;
      default:
        return Emotion.happy;
    }
  }

  @override
  void write(BinaryWriter writer, Emotion obj) {
    switch (obj) {
      case Emotion.happy:
        writer.writeByte(0);
        break;
      case Emotion.calm:
        writer.writeByte(1);
        break;
      case Emotion.neutral:
        writer.writeByte(2);
        break;
      case Emotion.sad:
        writer.writeByte(3);
        break;
      case Emotion.anxious:
        writer.writeByte(4);
        break;
      case Emotion.excited:
        writer.writeByte(5);
        break;
      case Emotion.tired:
        writer.writeByte(6);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmotionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
