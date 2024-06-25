
import 'package:dating_test/src/general/constants/app_enum.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../general/constants/app_colors.dart';
import '../../general/constants/app_images.dart';

class WidgetGenerator {

  static Widget getWidgetAssetAppIcon() {
    return SizedBox(
      height: 120.toWidthRatio(),
      width: 120.toWidthRatio(),
      child: Center(
        child: Image.asset(
          AppImages.appIcon,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  static Widget getRippleButton({
    Color? colorBg,
    Color? borderColor,
    double? borderRadius,
    double? buttonHeight,
    double? buttonWidth,
    bool isShowRipple = true,
    required VoidCallback onClick,
    required Widget child,
    Widget? childBg,
  }) {
    borderRadius = borderRadius ?? 16.toHeightRatio();
    buttonHeight = buttonHeight ?? 42.toHeightRatio();
    buttonWidth = buttonWidth ?? 52;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration:
      colorBg == null
          ? BoxDecoration(
        border: Border.all(color: borderColor ?? Colors.transparent, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        gradient: const LinearGradient(
          colors: ThemeColor.gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          tileMode: TileMode.clamp,
        ),
      )
          : BoxDecoration(
          border: Border.all(color: borderColor ?? Colors.transparent, width: 1),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
          color: colorBg
      ),
      child: isShowRipple
          ? Stack(
        children: [
          childBg ?? const SizedBox(),
          Material(
            color: Colors.transparent,
            child: Ink(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(borderRadius),
                onTap: onClick,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: buttonHeight,
                    minWidth: buttonWidth,
                  ),
                  child: child,
                ),
              ),
            ),
          ),
        ],
      )
          : Stack(
        children: [
          childBg ?? const SizedBox(),
          InkWell(
            onTap: onClick,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: buttonHeight,
                minWidth: buttonWidth,
              ),
              child: child,
            ),
          ),
        ],
      ),
    );
  }


}
