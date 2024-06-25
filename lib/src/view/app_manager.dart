import 'package:dating_test/src/general/theme/app_theme.dart';
import 'package:dating_test/src/view/main/main_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

class AppManager extends StatelessWidget {
  const AppManager({super.key});

  @override
  Widget build(BuildContext context) {
    // Xử lý thêm phần Block
    return const MaterialApp(
      home: InitPage(),
    );
  }
}

/*
* Khởi tạo init
*/
class InitPage extends StatefulWidget {
  const InitPage({super.key});

  static void setLocale(BuildContext context, Locale newLocale) async {
    _InitPageState? state = context.findAncestorStateOfType<_InitPageState>();

    state?.setState(() {
      state._locale = newLocale;
    });
  }

  // Xét local
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  late bool _hasNetworkconnection;
  late bool _fallbackViewOn;
  late Locale _locale;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _locale = Get.deviceLocale!;
    _hasNetworkconnection = false;
    _fallbackViewOn = false;
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // Bổ sung thêm các config khác
      useInheritedMediaQuery: true,
      popGesture: true,

      themeMode:
          AppTheme.isDarkModeSetting() ? ThemeMode.dark : ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: const MainManager(isDarkOn: false),
      builder: EasyLoading.init(),
    );
  }
}
