
import 'package:flutter/material.dart';

class PaywallScreen extends StatelessWidget {
  const PaywallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orae Pro'),
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Unlock the Annual Mosaic',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                'Visualize your entire year of emotions and discover long-term patterns with Orae Pro.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              // Add subscription buttons here
            ],
          ),
        ),
      ),
    );
  }
}
