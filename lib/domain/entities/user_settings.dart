
import 'package:flutter/material.dart';

class UserSettings {
  final String name;
  final bool isProUser;
  final TimeOfDay reminderTime;

  UserSettings({
    required this.name,
    required this.isProUser,
    required this.reminderTime,
  });
}
