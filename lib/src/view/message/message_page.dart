import 'package:auto_size_text/auto_size_text.dart';
import 'package:dating_test/src/view-model/message/chat_section_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {

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
    const title = "Meloha";
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
      body: const ChatSectionView(),
    );
  }
}
