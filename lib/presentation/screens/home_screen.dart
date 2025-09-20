
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orae'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => context.go('/settings'),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 22),
            ),
            // Add mood selection widgets here
            const SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => context.go('/calendar'),
              child: const Text('View Calendar'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => context.go('/breathing'),
              child: const Text('Breathing Exercise'),
            ),
          ],
        ),
      ),
    );
  }
}
