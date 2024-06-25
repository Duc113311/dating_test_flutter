import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class AppConstants {
  static final GlobalKey<NavigatorState> globalKeyRootMaterial =
      GlobalKey<NavigatorState>();

  static BuildContext? get context => globalKeyRootMaterial.currentContext;

  static double width = Get.width;
  static double height = Get.height;
}

