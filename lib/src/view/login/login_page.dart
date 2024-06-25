import 'package:auto_size_text/auto_size_text.dart';
import 'package:dating_test/src/general/constants/app_enum.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../components/control/widget_control.dart';
import '../../general/constants/app_images.dart';
import '../../general/theme/app_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool canPop = false;
  static const title = "Meloha";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: canPop,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppTheme.getScaffoldBackgroundColor(),
            statusBarIconBrightness: AppTheme.isDarkModeSetting()
                ? Brightness.light
                : Brightness.dark,
          ),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.bgLogin),
              fit: BoxFit.cover,
            ),
          ),
          constraints: const BoxConstraints.expand(),
          child: bodyWidget(),
        ),
      ),
    );
  }

  Widget bodyWidget() => Stack(
        children: [
          Positioned(
            bottom: (Get.height / 2) - 16,
            child: Column(
              children: [
                SizedBox(
                  height: 120.toWidthRatio(),
                  width: 120.toWidthRatio(),
                  child: Center(
                    child: Image.asset(
                      AppImages.appIcon,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: Get.width,
                  height: 28.toHeightRatio(),
                  child: Text(
                    title.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.toWidthRatio(),
                        fontFamily: AppTheme.fontBold,
                        color: AppTheme.getTitleColor(),
                        fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                width: double.infinity,
                height: (Get.height / 2) - 16,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 8, 32, 32),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            WidgetGenerator.getRippleButton(
                                borderRadius: 16.toHeightRatio(),
                                buttonHeight: 42.toHeightRatio(),
                                buttonWidth: double.infinity,
                                onClick: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      height: 16.toWidthRatio(),
                                      width: 16.toWidthRatio(),
                                      AppImages.icGoogle,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: 10.toWidthRatio()),
                                    AutoSizeText(
                                      'Sign in with Google',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: AppTheme.fontBold,
                                          fontSize: 14.toWidthRatio(),
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                      maxLines: 2,
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 6.toHeightRatio(),
                            ),
                            WidgetGenerator.getRippleButton(
                                borderRadius: 16.toHeightRatio(),
                                buttonHeight: 42.toHeightRatio(),
                                buttonWidth: double.infinity,
                                onClick: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      height: 16.toWidthRatio(),
                                      width: 16.toWidthRatio(),
                                      AppImages.icFacebook,
                                      allowDrawingOutsideViewBox: true,
                                    ),
                                    SizedBox(width: 10.toWidthRatio()),
                                    AutoSizeText(
                                      'Sign in with Facebook',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: AppTheme.fontBold,
                                          fontSize: 14.toWidthRatio(),
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                      maxLines: 2,
                                    ),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Trouble signing in?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 12.toHeightRatio(),
                                  color: const Color(0xFF323232),
                                  fontFamily: AppTheme.fontMulishMedium,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 16),
                          child: Text.rich(
                            TextSpan(
                              text:
                                  'By clicking "Sign in", you agree with our Terms. Learn how we process your data in our',
                              style: TextStyle(
                                fontFamily: AppTheme.fontLivvicRegular,
                                fontSize: 12.8.toWidthRatio(),
                                color: const Color(0xff979798),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Privacy Policy',
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontLivvicRegular,
                                    fontSize: 12.8.toWidthRatio(),
                                    color: const Color(0xff979798),
                                  ),
                                ),
                                const TextSpan(text: ' and'),
                                TextSpan(
                                  text: 'Cookies Policy',
                                  style: TextStyle(
                                    fontFamily: AppTheme.fontLivvicRegular,
                                    fontSize: 12.8.toWidthRatio(),
                                    color: const Color(0xff979798),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      );
}
