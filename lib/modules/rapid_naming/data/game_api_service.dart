import 'package:http/http.dart' as http;
import 'dart:convert';

class GameApiService {
  final String baseUrl = "https://your-backend-url.com";

  Future<bool> submitScore(int score) async {
    try {
      final response = await http.post(
        Uri.parse("$baseUrl/rapid_naming/score"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"score": score}),
      );
      return response.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
