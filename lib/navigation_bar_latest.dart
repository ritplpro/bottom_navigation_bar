import 'package:bottom_navigation_bar/explore_page.dart';
import 'package:bottom_navigation_bar/homePage.dart';
import 'package:bottom_navigation_bar/profile_page.dart';
import 'package:bottom_navigation_bar/setting_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LatestNavigationBar extends StatefulWidget {
  const LatestNavigationBar({super.key});

  @override
  State<LatestNavigationBar> createState() => _LatestNavigationBarState();
}

class _LatestNavigationBarState extends State<LatestNavigationBar> {
  List<Widget> naviBar=[
    HomePages(),
    ExplorePage(),
    ProfilePage(),
    Setting_Page()
  ];

  var selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Latest Navigation Bar"),
      ),
      body: naviBar[selectedIndex],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home),label: "Home"),
          NavigationDestination(icon: Icon(Icons.explore),label: "Explore"),
          NavigationDestination(icon: Icon(Icons.account_circle_outlined),label: "My Profile"),
          NavigationDestination(icon: Icon(Icons.settings),label: "Setting"),
        ],
        selectedIndex: selectedIndex,
        indicatorColor: Colors.green,
        onDestinationSelected: (value){
          setState(() {
            selectedIndex=value;


          });

        },

      ),
    );
  }
}
