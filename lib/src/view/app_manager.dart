import 'package:dating_test/src/view/main/main_page.dart';
import 'package:flutter/material.dart';
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

  // Xét local
  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      // Bổ sung thêm các config khác
      debugShowCheckedModeBanner: true,
      home: MainPage(),
    );
  }
}
