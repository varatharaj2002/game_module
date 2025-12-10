import 'package:flutter/material.dart';
import 'game_play_page.dart';

class GameIntroPage extends StatelessWidget {
  const GameIntroPage({super.key});

  Widget _buildCard(BuildContext context) {
    return Card(
      color: Colors.white, // ⭐ clean white card
      elevation: 12,
      shadowColor: Colors.orangeAccent.withOpacity(0.4), // ⭐ warm shadow
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
        side: BorderSide(
          color: Colors.orangeAccent.shade200, // ⭐ happy orange border
          width: 3,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Card Game Title",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.brown.shade700, // ⭐ warm brown title
              ),
            ),

            const SizedBox(height: 16),

            // Game logo image
            SizedBox(
              height: 140,
              child: Image.asset(
                "assets/game_logo.png",
                fit: BoxFit.contain,
              ),
            ),

            const SizedBox(height: 20),

            Text(
              "Tap to Play the Game!!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Colors.brown.shade600, // ⭐ warm description text
              ),
            ),

            const SizedBox(height: 25),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const GamePlayPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent.shade200, // ⭐ happy orange button
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 45,
                  vertical: 14,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                elevation: 6,
              ),
              child: const Text(
                "Play",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7CC), // ⭐ soft yellow kids background

      appBar: AppBar(
        title: const Text(
          "Home Page",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent.shade200, // ⭐ matching orange appbar
        foregroundColor: Colors.brown.shade700, // ⭐ warm brown title,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            children: [
              _buildCard(context),
              const SizedBox(height: 20),
              _buildCard(context),
              const SizedBox(height: 20),
              _buildCard(context),
              const SizedBox(height: 20),
              _buildCard(context),
            ],
          ),
        ),
      ),
    );
  }
}
