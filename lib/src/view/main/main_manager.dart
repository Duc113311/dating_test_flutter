import 'dart:async';

import 'package:dating_test/src/general/constants/app_images.dart';
import 'package:dating_test/src/general/constants/app_pref_key.dart';
import 'package:dating_test/src/model/stores/local_storage.dart';
import 'package:dating_test/src/view/login/login_page.dart';
import 'package:dating_test/src/view/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

class MainManager extends StatefulWidget {
  const MainManager({super.key, required this.isDarkOn});

  final bool isDarkOn;

  @override
  State<MainManager> createState() => _MainManagerState();
}

class _MainManagerState extends State<MainManager> {
  bool isDarkOn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkTheme();
    isDarkOn = widget.isDarkOn;
    checkLocale();
  }

  void _checkTheme() async {
    await Future.delayed(
      const Duration(milliseconds: 300),
      () {
        isDarkOn = widget.isDarkOn;
      },
    );
  }

  Future<void> handleSplashRoute() async {
    // await StaticInfoManager.shared().loadData();
    final nextPage = await getNextPage();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.pushReplacement(context,
          PageTransition(child: nextPage, type: PageTransitionType.fade)),
    );
  }

  Future<Widget> getNextPage() async {
    String token = LocalStorage.getAccessToken();
    if (!token.isNotEmpty) {
      return const LoginPage();
    } else {
      // await SocketManager.shared().updateAuth(token);
      return const MainPage();
    }
  }

  Future<void> checkLocale() async {
    var checkLocale = LocalStorage.getString(AppPrefKey.kDeviceLocale);
    // LocalStorage.setString(AppPrefKey.kDeviceLocale, locale);
    handleSplashRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset(
            widget.isDarkOn ? AppImages.bgLogin : AppImages.bgLogin,
            height: Get.height,
            width: Get.width,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
  }
}
