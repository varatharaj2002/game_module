import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GamePlayPage extends StatefulWidget {
  const GamePlayPage({super.key});

  @override
  State<GamePlayPage> createState() => _GamePlayPageState();
}

class _GamePlayPageState extends State<GamePlayPage> {
  final String gameUrl = "https://wordwall.net/play/101668/320/464";

  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(gameUrl));  // ⭐ LOAD GAME IMMEDIATELY
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // ⭐ full screen background

      appBar: AppBar(
        title: const Text(
          "Game",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent.shade200,
        foregroundColor: Colors.white,
      ),

      // ⭐ FULL SCREEN GAME (no next button, no UI)
      body: WebViewWidget(
        controller: _controller,
      ),
    );
  }
}