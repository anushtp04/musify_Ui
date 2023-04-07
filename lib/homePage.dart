import 'package:flutter/material.dart';
import 'package:sliding_clipped_nav_bar/sliding_clipped_nav_bar.dart';
import 'package:spotify/screens/accountScreen.dart';
import 'package:spotify/screens/homeScreen.dart';
import 'package:spotify/screens/playlistScreen.dart';
import 'package:spotify/screens/searchScreen.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var screens = [
    HomeScreen(),
    SearchScreen(),
    PlayListScreen(),
    AccountScreen()
  ];

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],

      bottomNavigationBar: SlidingClippedNavBar(
        backgroundColor: Color.fromRGBO(20, 20, 20, 1),
        barItems: [
          BarItem(title: "Home", icon: Icons.home),
          BarItem(title: "Search", icon: Icons.search),
          BarItem(title: "Playlist", icon: Icons.library_music_outlined),
          BarItem(title: "My Account", icon: Icons.account_circle_rounded),
        ],
        selectedIndex: index,
        activeColor: Colors.pinkAccent,
        inactiveColor: Colors.white,
        onButtonPressed: (tapindex) {
          setState(() {
            index = tapindex;
          });
        },

      )
    );
  }
}
