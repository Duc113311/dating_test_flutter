

import 'package:get_storage/get_storage.dart';

import '../../general/constants/app_pref_key.dart';

class LocalStorage{
  static String getAccessToken() {
    String token = LocalStorage.getString(AppPrefKey.kAuthToken);
    return token;
  }

  static String getString(String key, [String defaultValue = '']) {
    return GetStorage().read(key) ?? defaultValue;
  }
}