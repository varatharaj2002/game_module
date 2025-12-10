import 'package:flutter/material.dart';
import 'screens/game_intro_page.dart';

class RapidNamingModule {
  void start(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => GameIntroPage(),   // ✅ FIXED – no const
      ),
    );
  }
}
