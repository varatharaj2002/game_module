import 'game_api_service.dart';

class GameRepository {
  final GameApiService api = GameApiService();

  Future<bool> submitScore(int score) async {
    return await api.submitScore(score);
  }
}
