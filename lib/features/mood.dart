import 'package:flutter/material.dart';

import 'home.dart';

class MoodSelectionScreen extends StatefulWidget {
  const MoodSelectionScreen({super.key});

  @override
  State<MoodSelectionScreen> createState() => _MoodSelectionScreenState();
}

class _MoodSelectionScreenState extends State<MoodSelectionScreen> {
  String? selectedMood;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F4EF), // Cream
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            const Text(
              'How are you\nfeeling today?',
              style: TextStyle(
                fontSize: 34,
                fontFamily: 'Playfair',
                height: 1.3,
              ),
            ),
            const SizedBox(height: 40),
            MoodCard(
              title: 'Calm',
              color: Color(0xFFD6CDEA),
              isSelected: selectedMood == 'Calm',
              onTap: () {
                setState(() {
                  selectedMood = 'Calm';
                });
              },
            ),
            MoodCard(
              title: 'Focused',
              color: Color(0xFFB8C4D6),
              isSelected: selectedMood == 'Focused',
              onTap: () {
                setState(() {
                  selectedMood ='Focused';
                });
              },
            ),
            MoodCard(
              title: 'Tired',
              color: Color(0xFFE0DCDC),
              isSelected: selectedMood == 'Tired',
              onTap: () {
                setState(() {
                  selectedMood ='Tired';
                });
              },
            ),
            MoodCard(
              title: 'Inspired',
              color: Color(0xFFC9B6E4),
              isSelected: selectedMood == 'Inspired',
              onTap: () {
                setState(() {
                  selectedMood ='Inspired';
                });
              },
            ),

            const SizedBox(height: 30),

            AnimatedOpacity(
              duration: const Duration(milliseconds: 300),
              opacity: selectedMood == null ? 0 : 1,
              child: selectedMood == null
                  ? const SizedBox()
                  : GestureDetector(
                onTap: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(
                          mood: selectedMood!,
                        ),
                      ),
                    );


                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Playfair',
                        letterSpacing: 1.2,
                        color: Color(0xFF6A5D7B),
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
            ),

          ],
        ),
      ),
    );
  }
}
class MoodCard extends StatelessWidget {
  final String title;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  const MoodCard({
    super.key,
    required this.title,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        margin: const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(22),
        decoration: BoxDecoration(
          color: color.withOpacity(isSelected ? 1 : 0.6),
          borderRadius: BorderRadius.circular(24),
          boxShadow: isSelected
              ? [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, 10),
            )
          ]
              : [],
        ),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Playfair',
            letterSpacing: 1.2,
            color: isSelected ? Colors.black : Colors.black54,
          ),
        ),
      ),
    );
  }
}



