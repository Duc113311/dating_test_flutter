

import 'package:dating_test/src/general/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

import '../../general/constants/app_constants.dart';
import '../../general/constants/app_images.dart';

class LoadingAnimation extends StatefulWidget {
  const LoadingAnimation({super.key, required this.isChangeSetting});

  final bool isChangeSetting;

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation> with SingleTickerProviderStateMixin {
  var hHeight = Get.height / 1.3;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          alignment: Alignment.center,
          child: Stack(
            children: [
              RippleAnimation(
                color: AppTheme.getPrimaryColor(),
                delay: const Duration(milliseconds: 300),
                repeat: true,
                minRadius: 75,
                ripplesCount: 6,
                duration: const Duration(milliseconds: 6 * 300),
                child: Image.asset(
                  AppImages.appIcon,
                  width: 100 / 375 * AppConstants.width,
                  height: 100 / 667 * AppConstants.height,
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}
