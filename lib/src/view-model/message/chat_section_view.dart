import 'package:flutter/material.dart';

class ChatSectionView extends StatefulWidget {
  const ChatSectionView({super.key});

  @override
  State<ChatSectionView> createState() => _ChatSectionViewState();
}

class _ChatSectionViewState extends State<ChatSectionView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF000410),
      child: const Align(
        alignment: Alignment.center,
        child: Text("Messages",style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
