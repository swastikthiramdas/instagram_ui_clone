import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/user_home.dart';
import 'package:instagram_ui_clone/pages/user_profile.dart';
import 'package:instagram_ui_clone/pages/user_reel.dart';
import 'package:instagram_ui_clone/pages/user_search.dart';
import 'package:instagram_ui_clone/pages/user_shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  void _navigateNavigationBar(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List<Widget> bodyWidgets = [
    UserHome(),
    UserSearch(),
    UserReel(),
    UserShop(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: bodyWidgets[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blueAccent,
        currentIndex: selectedIndex,
        onTap: _navigateNavigationBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.video_call), label: 'Reel'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Shop'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
