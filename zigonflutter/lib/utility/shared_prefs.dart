import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHandler {
  static const String USERTOKEN = "USERTOKEN";
  static const String USERID = "USERID";
  

  static setString(String value, String key) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, value);
    log("$value is stored in key - $key");
  }

  static Future<String?> getString(var key) async {
    final prefs = await SharedPreferences.getInstance();
    String? value = prefs.getString(key);
    return value;
  }

  static clearStorage() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
