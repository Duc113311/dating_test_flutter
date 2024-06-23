import 'package:flutter/cupertino.dart';

abstract class AppConstants {
  static final GlobalKey<NavigatorState> globalKeyRootMaterial =
      GlobalKey<NavigatorState>();

  static BuildContext? get context => globalKeyRootMaterial.currentContext;

  static double width = MediaQuery.of(context!).size.width;
  static double height = MediaQuery.of(context!).size.height;
}

