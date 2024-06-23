import 'package:dating_test/src/general/constants/app_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';

import '../../general/constants/app_colors.dart';
import '../../general/constants/app_constants.dart';

class LoadAnimation extends StatefulWidget {
  const LoadAnimation({super.key});

  @override
  State<LoadAnimation> createState() => _LoadAnimationState();
}

class _LoadAnimationState extends State<LoadAnimation> {
  @override
  void initState() {
    // TODO: implement initState
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
                color: AppColors.primaryColor,
                delay: const Duration(milliseconds: 10),
                repeat: true,
                minRadius: 200,
                ripplesCount: 2,
                duration: const Duration(seconds: 3),
                child: Align(
                  alignment: Alignment.center,
                  widthFactor: 0.9,
                  heightFactor: 0.75,
                  child: Image.asset(
                    AppImages.appIcon,
                    width: 100 / 375 * AppConstants.width,
                    height: 100 / 667 * AppConstants.height,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
