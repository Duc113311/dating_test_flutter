import 'package:camera/camera.dart';
import 'package:dating_test/src/view/app_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'firebase_options.dart';

// import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart';

List<CameraDescription> cameras = [];


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Kết nối Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

