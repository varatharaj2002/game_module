import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final String imagePath;

  const GameCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white, // ⭐ CLEAN WHITE BACKGROUND
      elevation: 10,
      shadowColor: Colors.orangeAccent.withOpacity(0.3), // ⭐ warm kids glow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: BorderSide(
          color: Colors.orangeAccent.shade200, // ⭐ happy orange border
          width: 3,
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: 250,
        height: 250,
        child: Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
