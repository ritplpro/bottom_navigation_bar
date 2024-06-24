import 'package:bottom_navigation_bar/explore_page.dart';
import 'package:bottom_navigation_bar/homePage.dart';
import 'package:bottom_navigation_bar/profile_page.dart';
import 'package:bottom_navigation_bar/setting_page.dart';
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget>  navgatonPage=[
    HomePages(),
  ExplorePage(),
  Setting_Page(),
  ProfilePage()];
  var selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottam navigation bar '),
      ),
      body: navgatonPage[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label:"profile"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Setting"),


        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,
        onTap: (value){
          setState(() {
            selectedIndex=value;



          });
        },
      ),
    );
  }
}
