
import 'package:flutter/material.dart';

class BreathingScreen extends StatelessWidget {
  const BreathingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breathing Exercise'),
      ),
      body: const Center(
        child: Text('A simple 5-cycle breathing exercise will be implemented here.'),
      ),
    );
  }
}
