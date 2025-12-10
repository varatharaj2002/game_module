import 'package:flutter/material.dart';
import 'modules/rapid_naming/rapid_naming_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Game Module",
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF7CC), // ⭐ soft yellow background

      appBar: AppBar(
        title: const Text(
          "Game Module Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent.shade200, // ⭐ happy orange appbar
        foregroundColor: Colors.white,
      ),

      body: Center(
        child: ElevatedButton(
          onPressed: () {
            RapidNamingModule().start(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orangeAccent.shade200, // ⭐ happy orange button
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            elevation: 5,
          ),
          child: Text(
            "Open Game Page!",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.brown.shade700, // ⭐ warm brown text
            ),
          ),
        ),
      ),
    );
  }
}
