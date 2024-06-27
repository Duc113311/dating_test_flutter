import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';

import '../../general/constants/app_pref_key.dart';
import '../dtos/customers/customer_dto.dart';

class LocalStorage {
  // Khởi tạo
  static CustomerDto? _myCustomerInfo;

  // Get document
  static CustomerDto getMyCustomer() {
    if (LocalStorage._myCustomerInfo != null) {
      return LocalStorage._myCustomerInfo!;
    }
    String jsonString = LocalStorage.getString('kMyCustomerInfo');
    if (jsonString.isEmpty) {
      LocalStorage._myCustomerInfo = CustomerDto.createEmptyCustomer();
    } else {
      LocalStorage._myCustomerInfo =
          CustomerDto.fromJson(json.decode(jsonString));
    }
    return LocalStorage._myCustomerInfo ?? CustomerDto.createEmptyCustomer();
  }

  static String getAccessToken() {
    String token = LocalStorage.getString(AppPrefKey.kAuthToken);
    return token;
  }

  static Future<void> setAccessToken(String token) async {
    await LocalStorage.setString(AppPrefKey.kAuthToken, token);
    debugPrint("update access token: $token");
  }

  static Future<void> setMyCustomer(CustomerDto customer) async {
    _myCustomerInfo = customer;
    await LocalStorage.setString(
        'kMyCustomerInfo', json.encode(customer.toJson()));
  }

  static Future<void> saveMyCustomer() async {
    await LocalStorage.setMyCustomer(getMyCustomer());
  }

  static Future<void> clearMyCustomer() async {
    _myCustomerInfo = null;
    await LocalStorage.setString('kMyCustomerInfo', '');
    await LocalStorage.setAccessToken('');
  }



  // Set value storage
  static Future<void> setString(String key, String value) async {
    return await GetStorage().write(key, value);
  }

  static String getString(String key, [String defaultValue = '']) {
    return GetStorage().read(key) ?? defaultValue;
  }

  static Future<void> setDynamic(String key, dynamic value) async {
    return await GetStorage().write(key, value);
  }

  static dynamic getDynamic(String key, dynamic defaultValue) {
    return GetStorage().read(key) ?? defaultValue;
  }
}
