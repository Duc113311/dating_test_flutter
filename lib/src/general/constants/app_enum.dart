import 'package:get/get.dart';

extension FancyNum on num {
  static double designWidth = 360;
  static double designHeight = 800;

  double toWidthRatio() => this * Get.width / designWidth;

  double toHeightRatio() => this * Get.height / designHeight;
}
