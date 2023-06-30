import 'dart:developer';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHandler {
  late SharedPreferences _preferences;
  static late SharedPrefHandler _sharedPref;

  static const String USERTOKEN = "USERTOKEN";
  static const String USERID = "USERID";

  Future<void> instanceInit() async {
    _preferences = await SharedPreferences.getInstance();
    _sharedPref = this;
  }

  static SharedPrefHandler getInstance() {
    return _sharedPref;
  }

  Future<void> setString(String value, String key) async {
    await _preferences.setString(key, value);
    log("$value is stored in key - $key");
  }

  getString(var key) {
    String? value = _preferences.getString(key);
    return value;
  }

  clearStorage() async {
    await _preferences.clear();
  }
}
