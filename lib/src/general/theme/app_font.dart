import 'dart:ui';

import 'package:dating_test/src/general/constants/app_constants.dart';
import 'package:dating_test/src/general/constants/app_pref_key.dart';
import 'package:flutter/scheduler.dart';
import 'package:sp_util/sp_util.dart';

class AppFont {
  static String fontBold = "Livvic Bold";

  static bool isDarkModeSetting() {
    final value = getDarkModeSetting();

    return value == AppPrefKey.kDarkModeOn;
  }

  static int getDarkModeSetting() {
    int? code = SpUtil.getInt(AppPrefKey.kDarkModeSetting,
        defValue: AppPrefKey.kDarkModeSettingDefault);
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    if (code == AppPrefKey.kDarkModeSettingDefault) {
      if (brightness == Brightness.light) {
        code = AppPrefKey.kDarkModeOff;
      } else {
        code = AppPrefKey.kDarkModeOn;
      }
      SpUtil.putInt(AppPrefKey.kDarkModeSetting, code);
    } else {
      //print('isDark mode get: $code');
      return code!;
    }
    //print('isDark mode get: -  $code');
    return code!;
  }

  static TextStyle getTitleStyle({double? fontSize, Color? color}) {
    return TextStyle(
      color: color ?? AppFont.getTitleColor(),
      fontSize: fontSize ?? 20.toWidthRatio(),
      fontFamily: fontBold,
      fontWeight: FontWeight.w700,
    );
  }

  static Color getTitleColor() {
    return AppFont.isDarkModeSetting()
        ? const Color(0xFFECF3FB)
        : const Color(0xFF070D15);
  }

  static Color getTextColor() {
    return AppFont.isDarkModeSetting()
        ? const Color(0xffECF3FB)
        : const Color(0xff323232);
  }
}