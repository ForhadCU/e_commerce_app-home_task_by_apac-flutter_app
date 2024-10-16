import 'package:shared_preferences/shared_preferences.dart';

import '../constants/enums.dart';

class MyLocalStorage {
  // private method to handle local set requests ////////////
  Future<bool?> _setRequestToLocal(
      Enum method, String key, dynamic value) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    switch (method) {
      case LocalStorageDataType.bool:
        return await sharedPreferences.setBool(key, value);
      case LocalStorageDataType.string:
        return await sharedPreferences.setString(key, value.toString());
      case LocalStorageDataType.int:
        return await sharedPreferences.setInt(key, value);
      case LocalStorageDataType.double:
        return await sharedPreferences.setDouble(key, value);
      case LocalStorageDataType.stringList:
        return await sharedPreferences.setStringList(key, value);

      default:
        throw Exception("Invalid Local Storage method");
    }
  }

  // private method to handle local get requests ////////////
  Future<dynamic> _getRequestToLocal(Enum method, String key) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    switch (method) {
      case LocalStorageDataType.bool:
        return sharedPreferences.getBool(key);
      case LocalStorageDataType.string:
        return sharedPreferences.getString(key);
      case LocalStorageDataType.int:
        return sharedPreferences.getInt(key);
      case LocalStorageDataType.double:
        return sharedPreferences.getDouble(key);
      case LocalStorageDataType.stringList:
        return sharedPreferences.getStringList(key);

      default:
        throw Exception("Invalid Local Storage method");
    }
  }

  // public methods for each local set action ////////////
  Future<bool?> setBool({required String key, required bool value}) {
    return _setRequestToLocal(LocalStorageDataType.bool, key, value);
  }

  Future<bool?> setString({required String key, required String value}) {
    return _setRequestToLocal(LocalStorageDataType.string, key, value);
  }

  Future<bool?> setInt({required String key, required int value}) {
    return _setRequestToLocal(LocalStorageDataType.int, key, value);
  }

  Future<bool?> setDouble({required String key, required double value}) {
    return _setRequestToLocal(LocalStorageDataType.double, key, value);
  }

  Future<bool?> setStringList(
      {required String key, required List<String> value}) {
    return _setRequestToLocal(LocalStorageDataType.stringList, key, value);
  }

  // public methods for each local get action ////////////
  Future<bool?> getBool({required String key, required bool value}) async {
    return await _getRequestToLocal(LocalStorageDataType.bool, key);
  }

  Future<String?> getString({required String key}) async {
    return await _getRequestToLocal(LocalStorageDataType.string, key);
  }

  Future<int?> getInt({required String key}) async {
    return await _getRequestToLocal(LocalStorageDataType.int, key);
  }

  Future<double?> getDouble({required String key}) async {
    return await _getRequestToLocal(LocalStorageDataType.double, key);
  }

  Future<List<String>> getStringList({required String key}) async {
    return await _getRequestToLocal(LocalStorageDataType.stringList, key);
  }
}
