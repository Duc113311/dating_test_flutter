import 'package:dating_test/src/general/constants/app_images.dart';
import 'package:dating_test/src/view/main/main_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainManager extends StatefulWidget {
  final bool isDarkOn;

  //
  const MainManager({super.key, required this.isDarkOn});

  @override
  State<MainManager> createState() => _MainManagerState();
}

class _MainManagerState extends State<MainManager> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getNextPage();
  }

  Future<Widget> getNextPage() async {
    return const MainPage();
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
