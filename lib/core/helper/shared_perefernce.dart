// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? _prefs;

  Future<void> setInstance({required dynamic data, required String key}) async {
    if (_prefs == null) {
      await init();
    }
    if (data is int) {
      _prefs!.setInt(key, data);
    } else if (data is double) {
      _prefs!.setDouble(key, data);
    } else if (data is String) {
      _prefs!.setString(key, data);
    } else if (data is bool) {
      _prefs!.setBool(key, data);
    }
  }

   Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  String getString(String key, {String defaultValue = ''}) {
    return _prefs?.getString(key) ?? defaultValue;
  }

  int getInt(String key, {int defaultValue = 0}) {
    return _prefs?.getInt(key) ?? defaultValue;
  }

  double getDouble(String key, {double defaultValue = 0.0}) {
    return _prefs?.getDouble(key) ?? defaultValue;
  }

  bool getBool(String key, {bool defaultValue = false}) {
    return _prefs?.getBool(key) ?? defaultValue;
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs!.setString(key, value);
  }

  Future<bool> setInt(String key, int value) async {
    return await _prefs!.setInt(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    return await _prefs!.setDouble(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs!.setBool(key, value);
  }

  Future<bool> remove(String key) async {
    return await _prefs!.remove(key);
  }
}
