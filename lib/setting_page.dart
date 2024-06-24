import 'package:flutter/material.dart';

class Setting_Page extends StatefulWidget {
  const Setting_Page({super.key});

  @override
  State<Setting_Page> createState() => _Setting_PageState();
}

class _Setting_PageState extends State<Setting_Page> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Settings"),
      ],
    );
  }
}
