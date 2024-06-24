import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const title = "Meloha";
    const bool getCustomer = true;

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Color(0xFF000410),
            statusBarIconBrightness: Brightness.light),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              title.toUpperCase(),
              style: const TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 28,
                  fontFamily: "Livvic Bold",
                  fontWeight: FontWeight.w700),
            ),
            const Spacer()
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: getCustomer == false
                ? Container(
                    color: Colors.red,
                    width: context.width,
                    height: context.height,
                  )
                : const Column(
                    children: [
                      SizedBox(
                        height: 16,
                      )
                    ],
                  )),
      ),
    );
  }
}
