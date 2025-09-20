import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:orae/data/models/mood_entry.dart';
import 'package:orae/data/models/user_settings.dart';
import 'package:orae/presentation/routing/app_router.dart';
import 'package:orae/core/theme/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive
  await Hive.initFlutter();
  Hive.registerAdapter(MoodEntryAdapter());
  Hive.registerAdapter(EmotionAdapter());
  Hive.registerAdapter(UserSettingsAdapter());
  Hive.registerAdapter(TimeOfDayAdapter());

  // Open Hive boxes
  await Hive.openBox<MoodEntry>('mood_entries');
  await Hive.openBox<UserSettings>('user_settings');

  runApp(const ProviderScope(child: OraeApp()));
}

class OraeApp extends ConsumerWidget {
  const OraeApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    return MaterialApp.router(
      title: 'Orae',
      theme: AppTheme.lightTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}