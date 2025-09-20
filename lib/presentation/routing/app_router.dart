
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:orae/presentation/screens/home_screen.dart';
import 'package:orae/presentation/screens/calendar_screen.dart';
import 'package:orae/presentation/screens/breathing_screen.dart';
import 'package:orae/presentation/screens/settings_screen.dart';
import 'package:orae/presentation/screens/paywall_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: '/calendar',
        builder: (context, state) => const CalendarScreen(),
      ),
      GoRoute(
        path: '/breathing',
        builder: (context, state) => const BreathingScreen(),
      ),
      GoRoute(
        path: '/settings',
        builder: (context, state) => const SettingsScreen(),
      ),
      GoRoute(
        path: '/pro',
        builder: (context, state) => const PaywallScreen(),
      ),
    ],
  );
});
