import 'package:bottom_navigation_bar/bottam_nvaigation_bar.dart';
import 'package:bottom_navigation_bar/navigation_bar_latest.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:LatestNavigationBar(),
    );
  }
}
