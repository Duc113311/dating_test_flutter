import 'package:flutter/material.dart';

class TopicView extends StatefulWidget {
  const TopicView({super.key});

  @override
  State<TopicView> createState() => _TopicViewState();
}

class _TopicViewState extends State<TopicView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: const Color(0xFF000410),
      child: const Align(
        alignment: Alignment.center,
        child: Text(
          "Explore",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
