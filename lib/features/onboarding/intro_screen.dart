import 'package:flutter/material.dart';

import '../mood.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4EF), // Cream
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Check in\nwith yourself.',
              style: const TextStyle(
                fontSize: 36,
                fontFamily: 'Playfair',
                fontWeight: FontWeight.w500,
                height: 1.3,
              ),
            ),
            const SizedBox(height: 40),
            GestureDetector(

                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MoodSelectionScreen(),
                    ),
                  );



                },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Playfair',
                      color: Color(0xFF6A5D7B), // Dusty Purple
                      letterSpacing: 1.2,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 14,
                    color: Color(0xFF6A5D7B),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
