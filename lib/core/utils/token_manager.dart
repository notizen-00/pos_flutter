import 'package:shared_preferences/shared_preferences.dart';

class TokenManager {
  static const String _tokenKey = 'auth_token';

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_tokenKey, token.toString());
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    // print(prefs.getString(_tokenKey));
    return prefs.getString(_tokenKey);
  }


  Future<void> clearToken() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_tokenKey);
  }
}
