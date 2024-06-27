import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectNetwork{

  // Kiểm tra kết nối mạng
  static Future<bool> canConnectToNetwork() async {
    List<ConnectivityResult> result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.none) return false;

    return await _checkConnection();
  }

  // Lookup IP
  static Future<bool> _checkConnection() async {
    try {
      final result = await InternetAddress.lookup('example.com');

      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
}