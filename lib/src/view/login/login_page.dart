import 'package:auto_size_text/auto_size_text.dart';
import 'package:dating_test/src/configs/connect_network.dart';
import 'package:dating_test/src/general/constants/app_enum.dart';
import 'package:dating_test/src/model/stores/local_storage.dart';
import 'package:dating_test/src/view/main/main_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../components/control/widget_control.dart';
import '../../configs/auth_services.dart';
import '../../data/repositorys/api_login.dart';
import '../../data/services/router_service.dart';
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
  AuthServices authServices = AuthServices();
  String oAuth2Id = "";

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
                    "MELOHA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20.toWidthRatio(),
                        fontFamily: AppTheme.fontBold,
                        color: AppTheme.getPrimaryColor(),
                        fontWeight: FontWeight.w700),
                  ),
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
                    SizedBox(
                      height: 200,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(32, 8, 32, 32),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              WidgetGenerator.getRippleButton(
                                  borderRadius: 16.toHeightRatio(),
                                  buttonHeight: 42.toHeightRatio(),
                                  buttonWidth: double.infinity,
                                  onClick: _onLoginWithGoogle,
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

  _onLoginWithGoogle() async {
    EasyLoading.show(
      status: "Loading ...",
      maskType: EasyLoadingMaskType.black,
    );

    UserCredential? credential = await authServices.signInWithGoogle();

    if (credential?.user == null) {
      //check network
      bool checkConnect = await ConnectNetwork.canConnectToNetwork();
      EasyLoading.dismiss();
      if (checkConnect == false) {
        Fluttertoast.showToast(
            msg: "Please check your internet connection or try again later.");
      }
      return;
    }
    oAuth2Id = await credential!.user!.getIdToken(true) ?? '';

    if (oAuth2Id.isEmpty) {
      EasyLoading.dismiss();
      Fluttertoast.showToast(msg: "Opps, something went wrong!");
      return;
    }
    // Gán ga trị vào Storage
    LocalStorage.getMyCustomer().oAuth2Id = oAuth2Id;
    LocalStorage.getMyCustomer().email = credential?.user?.email;
    LocalStorage.getMyCustomer().phone = credential?.user?.phoneNumber;

    await LocalStorage.saveMyCustomer();

    await loginCheck();
  }

  Future<Widget> getNextPage() async {
    return const MainPage();
  }

  Future<void> loginCheck() async {
    if (oAuth2Id.isEmpty) {
      EasyLoading.dismiss();
      return;
    }

    final response = await loginServer(oAuth2Id);

    if (response?.customer != null) {
      // await StaticInfoManager.shared().loadData();
      EasyLoading.dismiss();
      if (mounted) {
        RouterService.routePushReplacementPage(const MainPage(), context);
      }
      // await getNextPage();
    } else if (response?.errorCode == 422) {
      LocalStorage.getMyCustomer().oAuth2Id = oAuth2Id;
      await LocalStorage.saveMyCustomer();

      // await StaticInfoManager.shared().loadData();
      final email = FirebaseAuth.instance.currentUser?.email ?? "";
      EasyLoading.dismiss();
      if (email.isEmpty) {
        return;
      } else {
        // RouterService.routeGoOnePage(const InputInfoSequence());
      }
    } else if (response?.blockExtraInfo != null) {
      final extraInfo = response!.blockExtraInfo!;
      // displayBlocked(extraInfo);
    } else {
      debugPrint("Login error: ${response?.message}");
    }
  }

  Future<LoginResponseModel?> loginServer(String token) async {
    if (token.isEmpty) {
      return null;
    }
    EasyLoading.show(
      status: "Loading ...",
      maskType: EasyLoadingMaskType.black,
    );
    LoginResponseModel response = await ApiLogin.postLogin(token);
    return response;
  }
}
