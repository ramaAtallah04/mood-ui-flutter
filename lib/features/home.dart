import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String mood;

  const HomeScreen({
    super.key,
    required this.mood,
  });

  Color get backgroundColor {
    switch (mood) {
      case 'Calm':
        return const Color(0xFFF1EEF8);
      case 'Focused':
        return const Color(0xFFEAF0F6);
      case 'Tired':
        return const Color(0xFFF5F2F2);
      case 'Inspired':
        return const Color(0xFFF3ECFA);
      default:
        return const Color(0xFFF7F4EF);
    }
  }

  String get title {
    switch (mood) {
      case 'Calm':
        return 'Take a slow breath';
      case 'Focused':
        return 'Stay with your focus';
      case 'Tired':
        return 'Rest is productive';
      case 'Inspired':
        return 'Create something beautiful';
      default:
        return 'Welcome';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            Text(
              title,
              style: const TextStyle(
                fontSize: 32,
                fontFamily: 'Playfair',
                height: 1.3,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Mood: $mood',
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
