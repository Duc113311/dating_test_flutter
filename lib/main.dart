import 'package:camera/camera.dart';
import 'package:dating_test/src/view/app_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

List<CameraDescription> cameras = [];
// final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Kết nối Firebase

  // Kết nối camera
  try {
    cameras = await availableCameras();
  } on CameraException catch (e) {
    print(e.description);
  }
  // Kết nối Config

  // Kết nối firebase messing

  runApp(Phoenix(
    child: ScreenUtilInit(builder: (context, widget) {
      return const AppManager();
    }),
  ));
}
