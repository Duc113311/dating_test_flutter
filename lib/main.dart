import 'package:dating_test/src/view/app_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // Kết nối Firebase

  // Kết nối camera

  // Kết nối Config

  // Kết nối firebase messing
  runApp(Phoenix(
    child: ScreenUtilInit(builder: (context, widget) {
      return const AppManager();
    }),
  ));
}