
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Get Orae Pro'),
            leading: const Icon(Icons.star),
            onTap: () => context.go('/pro'),
          ),
          const ListTile(
            title: Text('Notifications'),
            leading: Icon(Icons.notifications),
          ),
          const ListTile(
            title: Text('Export Data'),
            leading: Icon(Icons.download),
          ),
          const ListTile(
            title: Text('Privacy Policy'),
            leading: Icon(Icons.privacy_tip),
          ),
        ],
      ),
    );
  }
}
