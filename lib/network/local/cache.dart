import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  static late SharedPreferences _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putLoginCache({
    required String token,
  }) async {
    return await _sharedPreferences.setString('token', token);
  }

  static Future<bool> putThemeCache({
    required bool isDark,
  }) async {
    return await _sharedPreferences.setBool('theme', isDark);
  }

  static bool? getCache({
    required String key,
  }) {
    return _sharedPreferences.getBool(key);
  }
}
